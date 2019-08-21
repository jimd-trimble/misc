
declare @orgId bigint = 72314,
	@c_fldId int = 695143,
	@c1g_FldId bigint = 1299338,
	@c1g_gcId bigint = 1774897,
	@c1g_y0Id bigint = 1282674,
	@c_basic_FldId bigint = 1299337,
	@c_basic_GrownCrop bigint = 1774896,
	@c_basic_Y0Field bigint = 1282675,
	@c_delete_fldId bigint = 1023414,
	@c_deleteY0Field bigint = 1029068,
	@c_breeders_fldId bigint = 1299336,
	@c_breeders_delete_Y0FieldId bigint = 1282676,
	@c_breeders_GrownCrop bigint = 1774895;

use [agri-datadb]

select fd.fld_parent_fld_id, fd.* from AGR_FieldDetails fd
where fd.fld_id in (@c1g_FldId, @c_basic_FldId, @c_breeders_fldId)


select * from AGR_FieldDetails fd
where fd.fld_frm_id = 55220
order by fld_name

--***************************************
use UserOp

select * from Field f
where f.ID in (@c1g_y0Id, @c_basic_Y0Field, @c_breeders_delete_Y0FieldId)

select * from GrownCrop gc
where gc.fk_FieldID in (@c1g_y0Id, @c_basic_Y0Field, @c_breeders_delete_Y0FieldId)

--and fd.fld_crop_year in (2019, 0)
--select * from GrownCrop gc
--join Field f on gc.fk_FieldID = f.ID
--where gc.ID in (@missingGcId, @missingY0Id)
--and f.fk_OrgID = @orgId


--select * from GrownCrop gc
--join Field f on gc.fk_FieldID = f.ID
----where gc.ID in (@fldId, @missingY0Id)
--and f.fk_OrgID = @orgId

--select * from Field f
--where f.ID in (@missingY0Id, @missingGcId)
--and f.fk_OrgID = @orgId

--select * from Organization o
--where o.ID = @orgId;

--select * from Field f
--where f.fk_OrgId = @orgId
--order by f.Name

--select f.Name, * from GrownCrop gc
--join CropSeason cs on gc.fk_CropSeasonID = cs.ID
--join Field f on gc.fk_FieldID = f.ID
--where cs.fk_OrgID = @orgId
--and cs.HarvestYear = 2019
--and gc.ads_fldId = @fldId
--order by f.Name

--select * from GrownCrop gc
--where gc.ID = @missingGcId

--select * from GrownCrop gc
--where ads_fldId = @fldId

--select * from CropSeason cs
--where cs.fk_OrgId = @orgId
--and HarvestYear = 2019

