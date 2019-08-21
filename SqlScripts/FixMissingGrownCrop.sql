-- clear out datasync growncrop record, set cf_fld_id to null in fld record, run resync ads -> cf

--so this is to trigger a resync from ads -> cf:
--https://sync.trimbleag.com/AgriData/Resync/Grower/{ads_farm_id}  

--for cf -> ads it is:
--https://sync.trimbleag.com/ConnectedFarm/Resync/Grower/{cf_org_id}  
-- Use this if there's a splunk error for "AgriData application group could not be retrieved"

-- OrgID = 121942
-- ads_farm_id = 109402

begin tran a
declare @grownCropId1 bigint = 1718161,
	@grownCropId2 bigint = 1717468,
	@adsFldId1 bigint = 1201310,
	@adsFldId2 bigint = 1201311,

	@dsApplicationGcId1 bigint = 2910815,
	@dsApplicationGcId2 bigint = 2909450,

	@grownCrop1 bigint = 1718161,
	@grownCrop2 bigint = 1717468,
	@cropYear int = 2019;

-- before

select * from [agri-datadb].dbo.AGR_FieldDetails where fld_id in (@adsFldId1, @adsFldId2) and fld_crop_year = @cropYear;
select * from [DataSync].dbo.ApplicationGrownCrop where ID in (@dsApplicationGcId1, @dsApplicationGcId2);
--fk_ApplicationID = 1 and ExternalCropYear = 2019 and ExternalID in (@grownCrop1, @grownCrop2)
--select * from [UserOp].dbo.GrownCrop gc where ID = (select fld_cf_fld_id from [agri-datadb].dbo.AGR_FieldDetails where fld_id = @adsFldId and fld_crop_year = @cropYear);

update [agri-datadb].dbo.AGR_FieldDetails
set fld_cf_fld_id = null
where fld_id in (@adsFldId1, @adsFldId2) and fld_crop_year = @cropYear;

delete from [DataSync].dbo.ApplicationGrownCrop where ID in (@dsApplicationGcId1, @dsApplicationGcId2);


-- after

select * from [agri-datadb].dbo.AGR_FieldDetails where fld_id in (@adsFldId1, @adsFldId2) and fld_crop_year = @cropYear;
select * from [DataSync].dbo.ApplicationGrownCrop where fk_ApplicationID = 1 and ExternalCropYear = 2019 and ExternalID in (@grownCropId1, @grownCrop2)
--select * from [UserOp].dbo.GrownCrop gc where ID = (select fld_cf_fld_id from [agri-datadb].dbo.AGR_FieldDetails where fld_id = @adsFldId and fld_crop_year = @cropYear);

--commit tran a
rollback tran a