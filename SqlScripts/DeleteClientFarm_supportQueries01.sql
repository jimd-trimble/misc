declare @cfOrgId bigint = 113010,
	@groupId bigint = 69749,
	@safeOrgId bigint = 105280,
	@safeFrmId bigint = 91643, -- Jim's FarmMaster record
	@safeClientId bigint = 1862881; -- Jim D's Org.
declare @clientId bigint = (select ID from UserOp.dbo.Client where fk_OrgID = @cfOrgId and IsRetired = 1);
declare @adsFarmId bigint = (select frm_id from [agri-datadb].dbo.AGR_FarmMaster where frm_cf_org_id = @cfOrgID);
declare @farmIds table(cf_farmID bigint, ads_farmId bigint, ds_farmId bigint);

insert into @farmIds(cf_farmID, ads_farmId, ds_farmId) 
	select f.ID, f.ads_farmId, dsf.fk_FarmID from [UserOp].dbo.Farm f 
	left outer join DataSync.dbo.ApplicationFarm dsf on dsf.fk_ApplicationID = 1 AND dsf.ExternalID = f.ID
	where f.fk_OrgID = @cfOrgId and f.IsRetired = 1;
	
select count(1) as FarmCount from UserOp.dbo.Farm
-- set IsDeleted=1
where fk_OrgID = @safeOrgId
and ads_farmId in (select ads_farmId from @farmIds)
and IsRetired = 1;

-- UserOp:
	-- Update Client, Farm, Field to Jim's Org
	select * from UserOp.dbo.Client
	--set fk_OrgID = @safeOrgId
	where fk_OrgID = @cfOrgId
		and IsRetired = 1;

	select * from UserOp.dbo.Farm
	--set fk_OrgID = @safeOrgId,
	--	fk_ClientID = @safeClient
	where fk_OrgID = @cfOrgId
	-- fk_ClientID is nullable and is NULL for ID 249674
		and IsRetired = 1;

	select * from UserOp.dbo.Field
		--set fk_OrgID = @safeOrgId
	where fk_OrgID = @cfOrgId
		and fk_FarmID in (select cf_farmId from @farmIds) -- fk_FarmID is nullable but in this case the other retired Farm(s) belong to an active client and should not be touched.
		and IsRetired = 1;

	-- Update Client, Farm, Field to IsDeleted=1 in Jim's Org where IsRetired
	select count(1) as ClientCount from UserOp.dbo.Client
	-- set IsDeleted=1
	where fk_OrgID = @safeOrgId
		and IsRetired = 1;

	select count(1) as FarmCount from UserOp.dbo.Farm
	-- set IsDeleted=1
	where fk_OrgID = @safeOrgId
		and ads_farmId in (select ads_farmId from @farmIds)
		and IsRetired = 1;

	select count(1) as FieldCount from UserOp.dbo.Field
	-- set IsDeleted=1
	where fk_OrgID = @safeOrgId
		and fk_FarmID in (select cf_farmId from @farmIds)
		and IsRetired = 1;

-- DataSync:
-- 
declare @jimId bigint = 46833;
--select * from DataSync.dbo.[Identity]
--where Email = 'Jim_Dillon@Trimble.com';
declare @safeGroup bigint = 55163; -- Jim's test group.

select * from DataSync.dbo.Farm
--set ClientID = @safeClientId,
--	IsDeleted = 1,
--	fk_GroupID = @safeGroup
where ID in (select ds_farmId from @farmIds)

select * from DataSync.dbo.Field
--set fk_GroupID = @safeGroupId,
--	IsDeleted = 1
where fk_FarmID in (select ds_farmId from @farmIds);

-- AgriData
select * from [agri-datadb].dbo.AGR_GrowerFarm
--set gfm_frm_id = @safeFrmId,
--	gfm_cf_client_id = @safeClientId
where gfm_cf_frm_id in (select cf_farmId from @farmIds)