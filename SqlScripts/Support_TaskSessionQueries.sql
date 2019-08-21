use userop

--select * from Session s
--where s.fk_FileID = 'cdc1d600-6d26-4c96-99d7-5240b3e15145'

select o.name, f.* from Field f
join Organization o on f.fk_orgid = o.ID
where f.fk_OrgID = 98624 and f.ads_fldID in (1252955, 1252974)

select cs.HarvestYear, gc.* from GrownCrop gc
join CropSeason cs on gc.fk_CropSeasonID = cs.ID
where gc.fk_FieldID in (1252955, 1252974)

select * from Task t
--join Session s on t.ID = s.fk_TaskID
join GrownCrop gc on t.fk_GrownCropID = gc.ID
join Field f on gc.fk_FieldID = f.ID
where f.ads_fldId in (1252955, 1252974, 1252962)

select distinct s.fk_FileID from Task t
join Session s on t.ID = s.fk_TaskID
join GrownCrop gc on t.fk_GrownCropID = gc.ID
join Field f on gc.fk_FieldID = f.ID
where f.ads_fldId in (1252955, 1252974, 1252962)