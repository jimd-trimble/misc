--grownCropId=1651260

-- grownCropId=1718161
-- grownCropId=1717468

-- clear out datasync growncrop record, set cf_fld_id to null in fld record, run resync ads -> cf
declare @grownCropId1 bigint = -1,
	@grownCropId2 bigint = -1,
	@adsFldId1 bigint = 209355,
	@adsFldId2 bigint = -1;
	--@cfFldId bigint = 1173183,
	--@cfFldId2 bigint = 1727773;


-- **********************************************
use [DataSync]

declare @cfId int = 1,
	@adsId int = 2,
	@dsFldId bigint = 1006740,
	@dsGcId bigint = 1396045,
	@dsApplicationGcId bigint = 2777747;

--select * from ApplicationField af
----where fk_FieldID = @dsFldId
--where af.fk_ApplicationID = @adsId
--and ExternalID = @adsFldId1

select * from ApplicationField
where fk_ApplicationID = 2
and ExternalID = @adsFldId1

select * from ApplicationGrownCrop
where fk_ApplicationID = 1
and ExternalID = @grownCropID2

--select * from GrownCrop
--where ID = @dsGcId