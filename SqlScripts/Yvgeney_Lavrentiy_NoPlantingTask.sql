use [agri-datadb]

declare @cfFieldID_FromTask bigint = 1198437,
	@ads_fld_idFromTask bigint = 1209742,
	@grownCropId_fromTask bigint = 1679534,
	@problem_adsFldId bigint = 1297213,
	@problem_cfFieldId bigint = 1280565,
	@problem_grownCropId bigint = 1782433;
--1198437

--select fld_cf_fld_id, * from AGR_FieldDetails
--where fld_id = @ads_fld_idFromTask

select fld_cf_fld_id, * from AGR_FieldDetails
where fld_id = @problem_adsFldId
--1297213


use userop

select o.name, f.name as FieldName, f.ID as FieldID, f.*, gc.* from GrownCrop gc
join Field f on gc.fk_FieldID = f.ID
join Organization o on f.fk_OrgID = o.ID
where f.ID = @problem_cfFieldId;

select o.name, gc.ID as grownCropID, gc.*, f.name, f.* from Field f
join Organization o on f.fk_OrgID = o.ID
join GrownCrop gc on gc.fk_FieldID = f.ID
where o.Id = 123096
and gc.ID = @problem_grownCropId

select * from Task t
where t.fk_GrownCropID = @problem_grownCropId