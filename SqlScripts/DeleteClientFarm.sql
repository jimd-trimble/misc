declare @cfOrgId bigint = 113010,
	@groupId bigint = 69749,
	@safeOrgId bigint = 105280,
	@safeFrmId bigint = 91643, -- Jim's FarmMaster record
	@jimId bigint = 46833,
	@safeGroupId bigint = 55163, -- Jim's test group.
	@safeClientId bigint = 1862881; -- Jim D's Org.
declare @clientId bigint = (select ID from UserOp.dbo.Client where fk_OrgID = @cfOrgId and IsRetired = 1);
declare @adsFarmId bigint = (select frm_id from [agri-datadb].dbo.AGR_FarmMaster where frm_cf_org_id = @cfOrgID);
declare @farmIds table(cf_farmID bigint, ads_farmId bigint, ds_farmId bigint);
insert into @farmIds(cf_farmID, ads_farmId, ds_farmId) 
	select f.ID, f.ads_farmId, dsf.ID from [UserOp].dbo.Farm f 
	left outer join DataSync.dbo.Farm dsf on f.fk_ClientID = dsf.ClientID
	where f.fk_OrgID = @cfOrgId and f.IsRetired = 1;

-- There is a farm with no client that should be deleted:
update @farmIds
	set ds_farmId = (select ID from DataSync.dbo.Farm where ClientID is NULL and fk_GroupID = @groupId)
	where ds_farmId is NULL;

begin tran a
-- CHECK
-- UserOp:
	select * from UserOp.dbo.Client
	where fk_OrgID = @cfOrgId 
		and IsRetired = 1;

	select * from UserOp.dbo.Farm
	where fk_OrgID = @cfOrgId
	-- fk_ClientID is nullable and is NULL for ID 249674
		and IsRetired = 1;

	select * from UserOp.dbo.Field
	where fk_OrgID = @cfOrgId
		and fk_FarmID in (select cf_farmId from @farmIds) 
		-- fk_FarmID is nullable but in this case the other retired Farm(s) belong to an active client and should not be touched.
		and IsRetired = 1;

-- DataSync:
	select * from DataSync.dbo.Farm
	where ID in (select ds_farmId from @farmIds)

	select * from DataSync.dbo.Field
	where fk_FarmID in (select ds_farmId from @farmIds);

-- AgriData
	select * from [agri-datadb].dbo.AGR_GrowerFarm
	where gfm_cf_frm_id in (select cf_farmId from @farmIds);


-- UPDATE
-- UserOp:
	-- Update Client, Farm, Field to Jim's Org
	update UserOp.dbo.Client
	set fk_OrgID = @safeOrgId,
		IsDeleted = 1
	where fk_OrgID = @cfOrgId
		and IsRetired = 1;

	update UserOp.dbo.Farm
	set fk_OrgID = @safeOrgId,
		fk_ClientID = @safeClientId,
		IsDeleted = 1
	where fk_OrgID = @cfOrgId
	-- fk_ClientID is nullable and is NULL for ID 249674
		and IsRetired = 1;

	update UserOp.dbo.Field
		set fk_OrgID = @safeOrgId,
			IsDeleted = 1
	where fk_OrgID = @cfOrgId
		and fk_FarmID in (select cf_farmId from @farmIds) -- fk_FarmID is nullable but in this case the other retired Farm(s) belong to an active client and should not be touched.
		and IsRetired = 1;

-- DataSync:
	update DataSync.dbo.Farm
	set ClientID = @safeClientId,
		IsDeleted = 1,
		fk_GroupID = @safeGroupId
	where ID in (select ds_farmId from @farmIds)

	update DataSync.dbo.Field
	set fk_GroupID = @safeGroupId,
		IsDeleted = 1
	where fk_FarmID in (select ds_farmId from @farmIds);

-- AgriData
	update [agri-datadb].dbo.AGR_GrowerFarm
	set gfm_frm_id = @safeFrmId,
		gfm_cf_client_id = @safeClientId
	where gfm_cf_frm_id in (select cf_farmId from @farmIds)

select @@ROWCOUNT as CHECKQUERIES

-- CHECK

-- CHECK
-- UserOp:
	select * from UserOp.dbo.Client
	where fk_OrgID = @safeOrgId
		and IsDeleted = 1;

	select * from UserOp.dbo.Farm
	where fk_OrgID = @safeOrgId
	-- fk_ClientID is nullable and is NULL for ID 249674
		and IsDeleted = 1
		and fk_ClientID = @safeClientId;

	select * from UserOp.dbo.Field
	where fk_OrgID = @safeOrgId
		and fk_FarmID in (select cf_farmId from @farmIds) 
		-- fk_FarmID is nullable but in this case the other retired Farm(s) belong to an active client and should not be touched.
		and IsDeleted = 1;

-- DataSync:
	select * from DataSync.dbo.Farm
	where ID in (select ds_farmId from @farmIds)
		and fk_GroupID = @safeGroupId
		and IsDeleted = 1;

	select * from DataSync.dbo.Field
	where fk_FarmID in (select ds_farmId from @farmIds)
		and fk_GroupID = @safeGroupId
		and IsDeleted = 1

-- AgriData
	select * from [agri-datadb].dbo.AGR_GrowerFarm
	where gfm_cf_frm_id in (select cf_farmId from @farmIds)
		and gfm_frm_id = @safeFrmId
		and gfm_cf_client_id = @safeClientId;

--commit tran a
rollback tran a