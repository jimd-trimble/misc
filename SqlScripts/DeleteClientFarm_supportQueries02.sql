declare @farmId2 bigint = 249674;

select * from [UserOp].dbo.Field f
where f.fk_FarmID = @farmId2;

-- CHECK DEPENDENCIES
select * from UserOp.dbo.FieldAlias fa
where fa.fk_FieldID in (select f.ID from [UserOp].dbo.Field f where f.fk_FarmID = @farmId2);

select * from UserOp.dbo.FieldDeviceLookup fdl
where fdl.fk_FieldID in (select f.ID from [UserOp].dbo.Field f where f.fk_FarmID = @farmId2);

select * from UserOp.dbo.GrownCrop gc
where gc.fk_FieldID in (select f.ID from [UserOp].dbo.Field f where f.fk_FarmID = @farmId2);

select * from UserOp.dbo.LicenseConsumptionField lcf
where lcf.fk_FieldID in (select f.ID from [UserOp].dbo.Field f where f.fk_FarmID = @farmId2);

select * from UserOp.dbo.OrgRelationshipField orf
where orf.fk_FieldID in (select f.ID from [UserOp].dbo.Field f where f.fk_FarmID = @farmId2);