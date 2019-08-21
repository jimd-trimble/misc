-----------------------------------------------------
-- SalesForce case 00908973.
-- In this case we are only "deleting" the fields, NOT the related clients or farms.
-- Fields to remove: Temp 1, Temp 2, Dons Home, Twin Bay, TwinBay.
-- The fields have associated GrownCrop records, no Tasks.
-- The fields are retired AND are currently the only fields in the active farm.
-- Only 1 field to be deleted has an associated record in ADS (ads_fldId 1093152).
-----------------------------------------------------

--DECLARE @cfOrgId BIGINT = 94014,
--	@cfClientId BIGINT = 1833641,
--	@cfFarmId BIGINT = 189362,
--	@otherFarmId BIGINT = 189287;

--DECLARE @fieldIds table(cf_fieldID BIGINT, ads_fieldId BIGINT, ds_fieldId BIGINT);
--INSERT into @fieldIds (cf_fieldID, ads_fieldId, ds_fieldId)
--	SELECT f.ID, f.ads_fldId, dsf.fk_FieldID FROM [UserOp].dbo.Field f 
--	left outer join DataSync.dbo.ApplicationField dsf on dsf.fk_ApplicationID = 1 AND dsf.ExternalID = f.ID
--	WHERE f.fk_FarmID = @cfFarmId AND f.IsRetired = 1;

declare 
	--@cfBadField bigint = 121801,
	@adsBadField int = 1247057,
	--@dsBadField bigint = 221686,
	@adsGeoFileLayer int = 1778448;

BEGIN TRAN a
-- CHECKS

--SELECT ID as FIELDID, * FROM UserOp.dbo.Field
--WHERE ID = @cfBadField;

-- CHECK RELATED FIELDS! ESP those related to GrownCrop (Task, Session*) if there are any.
--SELECT ID as GROWNCROPID, * FROM UserOp.dbo.GrownCrop
--WHERE fk_FieldID = @cfBadField;

--SELECT ID as FieldAliasID, * FROM UserOp.dbo.FieldAlias
--WHERE fk_FieldID = @cfBadField;

--SELECT ID as FieldDeviceLookupID, * FROM UserOp.dbo.FieldDeviceLookup
--WHERE fk_FieldID = @cfBadField;

--SELECT ID as LicenseConsumptionFieldID, * FROM UserOp.dbo.LicenseConsumptionField
--WHERE fk_FieldID = @cfBadField;

--SELECT ID as OrgRelationshipFieldID, * FROM UserOp.dbo.OrgRelationshipField
--WHERE fk_FieldID = @cfBadField;

--SELECT * FROM DataSync.dbo.Field
--WHERE ID = @dsBadField;

SELECT * FROM [agri-datadb].dbo.ADS_GeoFileLayers
WHERE gly_id = @adsGeoFileLayer AND gly_crop_year = 0;

SELECT * FROM [agri-datadb].dbo.AGR_FieldDetails
WHERE fld_id = @adsBadField;

-- UPDATE
--UPDATE UserOp.dbo.Field
--SET IsDeleted = 1, UpdateUTC = GETDATE()
--WHERE ID = @cfBadField;
--SELECT @@ROWCOUNT as CF_FIELD_CHECK;

--UPDATE UserOp.dbo.GrownCrop
--SET IsDeleted = 1, UpdateUTC = GETDATE()
--WHERE ID in (1454866, 1499594, 1454877, 1499593, 1499598, 1508672, 1526064);
--SELECT @@ROWCOUNT as CF_GROWNCROP_CHECK;

--UPDATE DataSync.dbo.Field
--SET IsDeleted = 1, UpdateUTC = GETDATE()
--WHERE ID = @dsBadField;
--SELECT @@ROWCOUNT as DS_FIELD_CHECK;

DELETE FROM [agri-datadb].dbo.ADS_GeoFileLayers
WHERE gly_id = @adsGeoFileLayer AND gly_crop_year = 0;
SELECT @@ROWCOUNT as ADS_GEOFILE_CHECK;

DELETE FROM [agri-datadb].dbo.AGR_FieldDetails
WHERE fld_id = @adsBadField;
SELECT @@ROWCOUNT as ADS_FIELDDETAILS_CHECK;

-- CHECKS
--SELECT ID as FIELDID, * FROM UserOp.dbo.Field
--WHERE ID = @cfBadField
--AND IsDeleted = 1;

--SELECT ID as GROWNCROPID, * FROM UserOp.dbo.GrownCrop
--WHERE ID in (1454866, 1499594, 1454877, 1499593, 1499598, 1508672, 1526064)
--AND IsDeleted = 1;

--SELECT * FROM DataSync.dbo.Field
--WHERE ID = @dsBadField
--AND IsDeleted = 1;

SELECT * FROM [agri-datadb].dbo.ADS_GeoFileLayers
WHERE gly_id = @adsGeoFileLayer AND gly_crop_year = 0;

SELECT * FROM [agri-datadb].dbo.AGR_FieldDetails
WHERE fld_id = 221686

COMMIT TRAN a
--ROLLBACK TRAN a