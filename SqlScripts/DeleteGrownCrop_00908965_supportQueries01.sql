----use [ads-spatial]
----select bnd_frm_id, bnd_fld_id, count(*) from GEO_Boundary group by bnd_frm_id, bnd_fld_id having count(*) > 1


--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- In the AGR_FieldDetails table, if record has a CropYear of 0 the the fld_cf_fld_id is a UserOp.Field ID.
-- If the CropYear is NOT 0, then the fld_cf_fld_id is a UserOp.GROWNCROP ID.
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


--use [UserOp]
--select o.ads_fldId, count(1) from GrownCrop o
--join Field f on o.fk_FieldID = f.ID
--join CropSeason cs on o.fk_CropSeasonID = cs.ID
--where o.ads_fldId is not NULL
--and f.fk_OrgID = 64382
--and o.IsDeleted = 0
--and cs.HarvestYear = 2018
--group by o.ads_fldId having count(1) > 1
use UserOp
select f.ID as FieldID, o.ID as GrownCropID, * from GrownCrop o
join Field f on o.fk_FieldID = f.ID
join CropSeason cs on o.fk_CropSeasonID = cs.ID
where o.ads_fldId is not NULL
and f.fk_OrgID = 64382
and o.IsDeleted = 0
and cs.HarvestYear = 2018
and o.ads_fldId in (26421, 78659)

-- AGR farmd_id: 2745
-- AGR fld_ids: 26421, 78659,
-- CF fld_ids: 615387, 615399
-- CF grownCropIDs: 1049463, 1049490
-- DataSync fieldIDs: 68038, 68132
-- DataSync "ExternalID" values for ADS: 26421, 78659

-- ???INCORRECT AGR field_ids: 56933, 94915

select * from Field where ID in (615387, 615399);
-- Set IsRetired or IsDeleted?

--select * from UserOp.dbo.FieldAlias where fk_FieldID in (615387, 615399);
--select * from UserOp.dbo.FieldDeviceLookup where fk_FieldID in (615387, 615399);
--select * from UserOp.dbo.LicenseConsumptionField where fk_FieldID in (615387, 615399);
--select * from UserOp.dbo.OrgRelationshipField where fk_FieldID in (615387, 615399);

select * from UserOp.dbo.Task where fk_GrownCropID in (1049463, 1049490);
select * from UserOp.dbo.[Session] where fk_TaskID in (select ID from Task where fk_GrownCropID in (1049463, 1049490));

 --agr_FieldDetails where fld_cf_fldId = grownCropId

---- GOOD ONES
select fd.fld_cf_fld_id as GOOD_CF_IDS, * from [agri-datadb].dbo.AGR_FieldDetails fd
where fd.fld_id in (26421, 78659)
and fd.fld_crop_year <> 0
and fd.fld_cf_fld_id in (1049463, 1049490)

--where (fd.fld_cf_fld_id = 1049489 or fd.fld_cf_fld_id = 1049490)
select fd.fld_cf_fld_id as BAD_CF_IDS, * from [agri-datadb].dbo.AGR_FieldDetails fd
where fd.fld_cf_fld_id in (615387, 615399)
and fd.fld_crop_year =  0


--select fd.fld_cf_fld_id, * from [agri-datadb].dbo.AGR_FieldDetails fd
--where fd.fld_cf_fld_id in (615387, 615399);

--select * from DataSync.dbo.ApplicationField
--WHERE fk_ApplicationID = 1 and ExternalID in (615387, 615399);

select * from DataSync.dbo.ApplicationField
--where ExternalID in (556635, 556743) and fk_ApplicationID = 2;
where fk_FieldID in (68038, 68132)

select * from DataSync.dbo.GrownCrop
where fk_FieldID in (68132, 68038, 68038, 68132)
and HarvestYear = 2018;