DECLARE @farmIds TABLE(cf_farmID BIGINT, ads_farmId BIGINT, ds_farmId BIGINT);
DECLARE @cfOrgId BIGINT = 113010,
		@groupId BIGINT = 69749,
		@clientId BIGINT = 1859116;
--INSERT into @farmIds(cf_farmID, ads_farmId, ds_farmId) 
--	SELECT f.ID, f.ads_farmId, dsf.fk_FarmID FROM [UserOp].dbo.Farm f 
--	left outer join DataSync.dbo.ApplicationFarm dsf on dsf.fk_ApplicationID = 1 AND dsf.ExternalID = f.ID
--	WHERE f.fk_OrgID = @cfOrgId AND f.IsRetired = 1;

INSERT into @farmIds(cf_farmID, ads_farmId, ds_farmId) 
	SELECT f.ID, f.ads_farmId, dsf.fk_FarmID FROM [UserOp].dbo.Farm f 
	left outer join DataSync.dbo.ApplicationFarm dsf on dsf.fk_ApplicationID = 1 AND dsf.ExternalID = f.ID
	WHERE f.fk_OrgID = 113010 AND f.IsRetired = 1;

select * from @farmIds

select * from [agri-datadb].dbo.agr_fielddetails flddet
where flddet.fld_g_id in (178564, 178563);
--where flddet.fld_frm_id in (select ads_farmId from @farmIds)
select * from [agri-datadb].dbo.agr_growerfarm gf
where gf.gfm_id in (178564, 178563); --= 100051;

-- AGR_FieldDetails fld_frm_id references 