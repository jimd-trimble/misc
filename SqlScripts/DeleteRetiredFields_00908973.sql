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

BEGIN TRAN a
-- CHECKS

SELECT ID as FIELDID, * FROM UserOp.dbo.Field
WHERE ID in (1064048, 1064058, 1087201, 1092699, 1105579);

SELECT ID as GROWNCROPID, * FROM UserOp.dbo.GrownCrop
WHERE ID in (1454866, 1499594, 1454877, 1499593, 1499598, 1508672, 1526064);

SELECT * FROM DataSync.dbo.Field
WHERE ID in (897290, 897300, 920250, 925772, 938653);

SELECT * FROM [agri-datadb].dbo.ADS_GeoFileLayers
WHERE gly_fld_id= 1093152 AND gly_crop_year = 0;

SELECT * FROM [agri-datadb].dbo.AGR_FieldDetails
WHERE fld_id = 1093152;

-- UPDATE
UPDATE UserOp.dbo.Field
SET IsDeleted = 1, UpdateUTC = GETDATE()
WHERE ID in (1064048, 1064058, 1087201, 1092699, 1105579);
SELECT @@ROWCOUNT as CF_FIELD_CHECK;

UPDATE UserOp.dbo.GrownCrop
SET IsDeleted = 1, UpdateUTC = GETDATE()
WHERE ID in (1454866, 1499594, 1454877, 1499593, 1499598, 1508672, 1526064);
SELECT @@ROWCOUNT as CF_GROWNCROP_CHECK;

UPDATE DataSync.dbo.Field
SET IsDeleted = 1, UpdateUTC = GETDATE()
WHERE ID in (897290, 897300, 920250, 925772, 938653);
SELECT @@ROWCOUNT as DS_FIELD_CHECK;

DELETE FROM [agri-datadb].dbo.ADS_GeoFileLayers
WHERE gly_fld_id= 1093152 AND gly_crop_year = 0;
SELECT @@ROWCOUNT as ADS_GEOFILE_CHECK;

DELETE FROM [agri-datadb].dbo.AGR_FieldDetails
WHERE fld_id = 1093152;
SELECT @@ROWCOUNT as ADS_FIELDDETAILS_CHECK;

-- CHECKS
SELECT ID as FIELDID, * FROM UserOp.dbo.Field
WHERE ID in (1064048, 1064058, 1087201, 1092699, 1105579)
AND IsDeleted = 1;

SELECT ID as GROWNCROPID, * FROM UserOp.dbo.GrownCrop
WHERE ID in (1454866, 1499594, 1454877, 1499593, 1499598, 1508672, 1526064)
AND IsDeleted = 1;

SELECT * FROM DataSync.dbo.Field
WHERE ID in (897290, 897300, 920250, 925772, 938653)
AND IsDeleted = 1;

SELECT * FROM [agri-datadb].dbo.ADS_GeoFileLayers
WHERE gly_fld_id= 1093152 AND gly_crop_year = 0;

SELECT * FROM [agri-datadb].dbo.AGR_FieldDetails
WHERE fld_id = 1093152;

--COMMIT TRAN a
ROLLBACK TRAN a