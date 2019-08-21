-----------------------------------------------------
-- SalesForce case 00908965.
-- A user cannot upload files for 2 fields because nearly identical grown crop records exist with the same HarvestYear.
-- The following UserOp.dbo.GrownCrop records should be set to "IsDeleted": 1049463, 1049490.
-- The fields to which the "bad" GrownCrop records belong have valid GrownCrop records in both UserOp and DataSync.
-- There are also AGR_FieldDetails records for the valid grown crops, none for the invalid grown crops.
-----------------------------------------------------

BEGIN TRAN a
-- CHECKS
SELECT ID as GROWNCROPID, * FROM UserOp.dbo.GrownCrop
WHERE ID in (1049463, 1049490);

-- UPDATE
UPDATE UserOp.dbo.GrownCrop
SET IsDeleted = 1, UpdateUTC = GETDATE()
WHERE ID in (1049463, 1049490);
SELECT @@ROWCOUNT as CF_GROWNCROP_CHECK;

-- CHECKS
SELECT ID as GROWNCROPID, * FROM UserOp.dbo.GrownCrop
WHERE ID in (1049463, 1049490)
AND IsDeleted = 1;

--COMMIT TRAN a
ROLLBACK TRAN a