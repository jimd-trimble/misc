use [rogue-UserOp]

declare @variables TABLE (id int IDENTITY(1,1), orgID bigint)
insert into @variables values 
-- PRD OrgID values:
 --(122132), (121128), (119156), (118381), (116275), (116272), (115902), (111833), (108675), (108623), (107532), (107296), (107232), (106928), (106918), (106726), (106647), (106537), (106355), (104884), (100090), (98986), (98976), (94130), (93337), (89376), (88865), (88833), (75442), (59222), (57297), (57239), (56082), (54543), (53363), (52110), (51599), (51390), (51321), (48835), (48058), (47072), (46101), (44045), (43350), (41757), (38644), (38635), (38100), (38046), (37574), (37562), (37532), (37210), (36810), (35513), (35441), (35414), (27528), (9644), (9483), (9418), (9159), (9158), (8656), (8464), (7626), (7313), (7272), (7101), (6440), (6146), (5248), (5117), (5080)

-- TEST values for rogue-UserOp:
(1074), (5536), (174873)

DECLARE @count int = 1;
DECLARE @output TABLE (OrganizationName varchar(200), LicenseLevel varchar(MAX), #OfFields int, #OfDevices int, DeviceTypes varchar(MAX), #OfUsers int, InterfaceUsage varchar(MAX), #OfTasksIn2018 int, CropTypes varchar(MAX), TASLicenses varchar(MAX), FarmSize bigint, Country varchar(MAX), State varchar(MAX), WorkOrdersModule varchar(MAX))
DECLARE @searchOrgId bigint;
DECLARE @orgCount int
SET @orgCount = (SELECT COUNT(*) FROM @variables)

WHILE (@count <= @orgCount)
BEGIN
	set @searchOrgId = (SELECT orgID FROM @variables WHERE id = @count);
	
	--org name
	declare @organizationName varchar(200);
	set @organizationName = (	
	SELECT Name as OrganizationName FROM Organization
	WHERE ID = @searchOrgId)

	--Liscense Level
	DECLARE @licenseLevel varchar(MAX)
	SET @licenseLevel = NULL
	SELECT @licenseLevel = COALESCE(@licenseLevel + ', ', '') + Name 
	FROM(SELECT DISTINCT lt.Name FROM License l
	inner join LicenseType lt on l.fk_LicenseTypeID = lt.ID
	WHERE l.fk_OrgID = @searchOrgId
	AND l.IsAssigned = 1
	AND l.IsDemo = 0
	AND (lt.ID = 57
	OR lt.ID = 112
	OR lt.ID = 114)) pc

	--# of Fields
	DECLARE @fields int
	SET @fields = (
	SELECT COUNT(*) as #OfFields FROM Field f
	inner join Organization o on f.fk_OrgID = o.ID
	WHERE o.ID = @searchOrgId)

	--#of Devices
	DECLARE @devices int
	SET @devices = (
	SELECT COUNT(*) FROM Client c
	inner join ClientDeviceLookup cdl on c.ID = cdl.fk_ClientID
	inner join Device d on cdl.fk_DeviceID = d.ID
	WHERE c.fk_OrgID = @searchOrgId)

	--Device Types
	DECLARE @deviceTypes varchar(MAX)
	SET @deviceTypes = NULL
	SELECT @deviceTypes = COALESCE(@deviceTypes + ', ', '') + dt.Name
	FROM Client c
	inner join FieldDeviceLookup cdl on c.ID = cdl.fk_FieldID
	inner join Device d on cdl.fk_DeviceID = d.ID
	inner join DeviceType dt on d.fk_DeviceTypeID = dt.ID
	WHERE c.fk_OrgID = @searchOrgId

	--# of users
	DECLARE @users int
	SET @users = (
	SELECT Count(*) FROM UserLicense
	WHERE fk_OrgID = @searchOrgId
	AND IsDemo = 0
	AND fk_UserLicenseStatusID = 1)

	--interface usage
	DECLARE @usageType varchar(MAX)
	SET @usageType = NULL
	SELECT @usageType = COALESCE(@usageType + ', ', '') + Name 
	FROM(SELECT DISTINCT appT.NAME FROM License l
	inner join LicenseType lt on l.fk_LicenseTypeID = lt.ID
	inner join ApplicationTypeLicenseType atlt on lt.ID = atlt.fk_LicenseTypeID
	inner join ApplicationType appt on atlt.fk_ApplicationTypeID = appt.ID
	WHERE l.fk_OrgID = @searchOrgId
	AND l.IsAssigned = 1
	AND l.IsDemo = 0) pc

	--Tasks per crop year ?
	declare @tasks int
	set @tasks = (
	SELECT COUNT(*) FROM Task
	WHERE fk_OrgID = @searchOrgId
	AND InsertUTC like '2018%')

	--Crop Types
	DECLARE @crops varchar(MAX)
	SET @crops = NULL
	SELECT @crops = COALESCE(@crops + ', ', '') +  mc.Name 
	FROM MasterCrop mc
	inner join OrganizationCrop oc on oc.fk_MasterCropID = mc.ID
	where oc.fk_OrgID = @searchOrgId

	--TAS LicenseLevels and History
	DECLARE @licenseTypes varchar(MAX)
	SET @licenseTypes = NULL
	SELECT @licenseTypes = COALESCE(@licenseTypes + ', ', '') + Name 
	FROM(SELECT DISTINCT lt.NAME FROM License l
	inner join LicenseType lt on l.fk_LicenseTypeID = lt.ID
	WHERE l.fk_OrgID = @searchOrgId
	AND l.IsAssigned = 1
	AND l.IsDemo = 0) pc

	--Farm Size
	DECLARE @size bigint
	SET @size = (
	SELECT SUM(Area) FROM Field
	WHERE fk_OrgID = @searchOrgId)

	--Org Country Setting
	DECLARE @country varchar(MAX)
	SET @country = (
	SELECT Country FROM Organization
	WHERE ID = @searchOrgId)

	--Org STATE setting
	DECLARE @state varchar(MAX)
	SET @state = (
	SELECT State FROM Organization
	WHERE ID = @searchOrgId)

	--Work Orders Module enabled
	DECLARE @moduleEnabled varchar(MAX)
	SET @moduleEnabled = (
	select distinct fm.frm_cf_org_id as OrgsWorkOrdersEnabled from [rogue-agri-datadb_dev].[dbo].[ADS_ModuleFarmAccess] mfa
	join [rogue-agri-datadb_dev].[dbo].[ADS_Module] m on mfa.mfa_mod_id = m.mod_id
	join [rogue-agri-datadb_dev].[dbo].[AGR_FarmMaster] fm on mfa.mfa_frm_id = fm.frm_id
	where m.mod_code = 'MDL-WORK-ORDERS'
	and fm.frm_cf_org_id = @searchOrgId)

	IF @moduleEnabled = @searchOrgId
	BEGIN
		SET @moduleEnabled = 'Yes'
	END
	ELSE
	BEGIN
		SET @moduleEnabled = 'No'
	END

	insert into @output values (@organizationName, @licenseLevel, @fields, @devices, @deviceTypes, @users, @usageType, @tasks, @crops, @licenseTypes, @size, @country, @state, @moduleEnabled)

	SET @count = @count + 1;
END;

SELECT * FROM @output