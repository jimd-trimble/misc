-----------------------------------------------------
-- SalesForce case 00908158.
-- In this case we are "deleting" the a retired farm, its client, and related fields.
-- The fields do not have associated GrownCrop records or Tasks.
-- The farm, client and fields are retired.
-- Associated records exist in DataSync and ADS.
-----------------------------------------------------

BEGIN
	BEGIN TRAN a
	-- CHECKS
	-- UserOp:
		SELECT ID as CLIENTID, * FROM UserOp.dbo.Client
		WHERE ID = 1859116;

		SELECT ID as FARMID, * FROM UserOp.dbo.Farm
		WHERE ID in (249674, 249673);

		SELECT ID as FIELDID, * FROM UserOp.dbo.Field
		WHERE ID = 1040612;

	-- DataSync:
		SELECT ID as DSFARMID, * FROM DataSync.dbo.Farm
		WHERE ID in (176452, 176451);

		SELECT ID as DSFIELDID, * FROM DataSync.dbo.Field
		WHERE ID = 873635;

	---- AgriData
		SELECT * FROM [agri-datadb].dbo.AGR_FieldDetails
		WHERE fld_id = 1035976 AND fld_crop_year = 0;

		SELECT * FROM [agri-datadb].dbo.AGR_GrowerFarm
		WHERE gfm_id in (178563, 178564);

	---- UPDATE
	---- UserOp:

		UPDATE UserOp.dbo.Client
		SET IsDeleted = 1, UpdateUTC = GETDATE()
		WHERE ID = 1859116;
		SELECT @@ROWCOUNT as CLIENT_CHECK;

		UPDATE UserOp.dbo.Farm
		SET IsDeleted = 1, UpdateUTC = GETDATE()
		WHERE ID in (249674, 249673);
		SELECT @@ROWCOUNT as FARM_CHECK;

		UPDATE UserOp.dbo.Field
		SET IsDeleted = 1, UpdateUTC = GETDATE()
		WHERE ID = 1040612;
		SELECT @@ROWCOUNT as FIELD_CHECK;

	-- DataSync:
		UPDATE DataSync.dbo.Farm
		SET IsDeleted = 1, UpdateUTC = GETDATE()
		WHERE ID in (176452, 176451);
		SELECT @@ROWCOUNT as DSFARM_CHECK;

		UPDATE DataSync.dbo.Field
		SET IsDeleted = 1, UpdateUTC = GETDATE()
		WHERE ID = 873635;
		SELECT @@ROWCOUNT as DSFIELD_CHECK;

	-- AgriData
		DELETE FROM [agri-datadb].dbo.AGR_FieldDetails
		WHERE fld_id = 1035976 AND fld_crop_year = 0;
		SELECT @@ROWCOUNT as FIELDDETAILS_CHECK;

		delete FROM [agri-datadb].dbo.AGR_GrowerFarm
		WHERE gfm_id in (178563, 178564);
		SELECT @@ROWCOUNT as GROWERFARM_CHECK

	
	-- CHECK
	-- UserOp:
		SELECT * FROM UserOp.dbo.Client
		WHERE ID = 1859116
		AND IsDeleted = 1;

		SELECT ID as FARMID, * FROM UserOp.dbo.Farm
		WHERE ID in (249674, 249673)
		AND IsDeleted = 1;

		SELECT ID as FIELDID, * FROM UserOp.dbo.Field
		WHERE ID = 1040612
		AND IsDeleted = 1;

	-- DataSync:
		SELECT ID as DSFARMID, * FROM DataSync.dbo.Farm
		WHERE ID in (176452, 176451)
		AND IsDeleted = 1;

		SELECT ID as DSFIELDID, * FROM DataSync.dbo.Field
		WHERE ID = 873635
		AND IsDeleted = 1;

	---- AgriData
		SELECT * FROM [agri-datadb].dbo.AGR_FieldDetails
		WHERE fld_id = 1035976 AND fld_crop_year = 0;

		SELECT * FROM [agri-datadb].dbo.AGR_GrowerFarm
		WHERE gfm_id in (178563, 178564);
	
	--COMMIT TRAN a
	ROLLBACK TRAN a
END