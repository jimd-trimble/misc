declare @cfOrgId bigint = 113010;
declare @clientId bigint = 1859116;
declare @farmId1 bigint = 249673;
declare @farmId2 bigint = 249674;
declare @dsFrm1 bigint = 176451;



--select * from UserOp.dbo.Organization o
--where o.ID = @cfOrgId;

--select * from UserOp.dbo.Client c
--where c.fk_OrgID = 105280;

--select * from DataSync.dbo.Farm dsf
--where dsf.ClientID = @clientid;

--select * from DataSync.dbo.ApplicationFarm af
--where af.fk_FarmID = @dsFrm1;

--select count(1) from DataSync.dbo.Field df
--where df.fk_FarmID = @dsFrm1;

select * from [agri-datadb].dbo.AGR_FarmMaster fm
where fm.frm_cf_org_id = 105280

select gf.gfm_id as GROWERFARM, * from [agri-datadb].dbo.AGR_GrowerFarm gf
where gf.gfm_frm_id = 100051 
and 
( gf.gfm_cf_frm_id = @farmId1 or gf.gfm_cf_frm_id = @farmId2)

select count(1) as FARMCONTRACTS from [agri-datadb].dbo.ADS_FarmContracts fc
where fc.fcn_frm_id in (@farmId1, @farmId2)

select count(1) as FIELDSOIL from [agri-datadb].dbo.ADS_FieldSoilRecommendationView fs
where fs.frm_id in (@farmId1, @farmId2)

select count(1) as FIELDDETAILS from [agri-datadb].dbo.AGR_FieldDetails fd
where fd.fld_frm_id in (@farmId1, @farmId2)

--select field.ID as FIELD, * from [UserOp].dbo.Field field
--where field.fk_FarmID in (@farmId1, @farmId2);

--select c.ID as CLIENT, * from [UserOp].dbo.Client c
--where c.fk_OrgID = @cfOrgId
--and IsRetired = 1;

--select f.ID as FARM, * from [UserOp].dbo.Farm f
--where f.fk_OrgID = @cfOrgId and f.IsRetired = 1;

----select * from [UserOp].dbo.OrgRelationship orel
----where orel.fk_PrincipalOrgID = @cfOrgId
----or orel.fk_AssociatedOrgID = @cfOrgId

----select * from [UserOp].dbo.OrgRelationshipClient orc
----where orc.fk_ClientID = 1859116