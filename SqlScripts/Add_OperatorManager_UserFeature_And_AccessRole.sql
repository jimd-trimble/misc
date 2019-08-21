PRINT '***'
PRINT '* START Add_OperatorManager_UserFeature_And_AccessRole.sql'
PRINT '***'

USE [$(DatabaseName)]

DECLARE @opManagerFeatId int = 90;
DECLARE @appOperatorManagerAccessRoleId int = 1027
DECLARE @orgAdminRoleId int = (select ID from dbo.AccessRole where Name = 'Org Administrator');
DECLARE @oldAccessRoleName nvarchar(50) = 'ConnectedFarm Operator Manager';
DECLARE @accessRoleName nvarchar(50) = 'Operator Manager';
DECLARE @oldUserFeatureName nvarchar(50) = 'ConnectedFarm.OperatorManager';
DECLARE @userFeatureName nvarchar(50) = 'LegacyFeatures.OperatorManager';

-- CORRECTIONS
-- Correct existing UserFeature entries
IF EXISTS (SELECT * FROM dbo.UserFeature WHERE ID = @opManagerFeatId AND fk_ApplicationID = 4)
BEGIN
	UPDATE dbo.UserFeature SET fk_ApplicationID = 1 WHERE ID = @opManagerFeatId;
END
IF EXISTS (SELECT * FROM dbo.UserFeature WHERE ID = @opManagerFeatId AND Name = @oldUserFeatureName)
BEGIN
	UPDATE dbo.UserFeature SET Name = @userFeatureName WHERE ID = @opManagerFeatId;
END

-- Correct existing AccessRoleName entries
IF EXISTS (SELECT * FROM dbo.AccessRole WHERE ID = @appOperatorManagerAccessRoleId AND Name = @oldAccessRoleName)
BEGIN
	UPDATE dbo.AccessRole SET Name = @accessRoleName WHERE ID = @appOperatorManagerAccessRoleId;
END

-- INSERT STATEMENTS FOR CORRECT VALUES
-- Insert correct values for UserFeature:
IF NOT EXISTS (SELECT * FROM dbo.UserFeature WHERE ID = @opManagerFeatId)
BEGIN
	INSERT INTO dbo.UserFeature (ID, Name, InsertUTC, UpdateUTC, fk_ApplicationID) 
	values (@opManagerFeatId, @userFeatureName, SYSDATETIME(), SYSDATETIME(), 1);
END

-- Inset correct values for AccessRole
IF NOT EXISTS (SELECT * FROM dbo.AccessRole WHERE Name = @accessRoleName)
BEGIN
	SET IDENTITY_INSERT [dbo].[AccessRole] ON
	INSERT INTO dbo.AccessRole (ID, Name, InsertUTC, UpdateUTC, fk_AccessRoleType, fk_AccessRoleUsage) 
	-- AccessRoleType = User, AccessRoleUsage = OrgUser : Just like OrgAdmin
	values (@appOperatorManagerAccessRoleId, @accessRoleName, SYSDATETIME(), SYSDATETIME(), 2, 1)
	SET IDENTITY_INSERT [dbo].[AccessRole] OFF
END

-- Add OperatorManager feature to OperatorManager role:
IF NOT EXISTS (SELECT * FROM dbo.AccessRoleUserFeature WHERE fk_AccessRoleID = @appOperatorManagerAccessRoleId and fk_UserFeatureID = @opManagerFeatId)
BEGIN
	INSERT INTO dbo.AccessRoleUserFeature (fk_AccessRoleID, fk_UserFeatureID, Accesslevel, InsertUTC, UpdateUTC) 
	values (@appOperatorManagerAccessRoleId, @opManagerFeatId, 15, SYSDATETIME(), SYSDATETIME())
END

-- Add OperatorManager feature to OrgAdmin role:
IF NOT EXISTS (SELECT * FROM dbo.AccessRoleUserFeature WHERE fk_AccessRoleID = @orgAdminRoleId and fk_UserFeatureID = @opManagerFeatId)
BEGIN
	INSERT INTO dbo.AccessRoleUserFeature (fk_AccessRoleID, fk_UserFeatureID, Accesslevel, InsertUTC, UpdateUTC) 
	values (@orgAdminRoleId, @opManagerFeatId, 15, SYSDATETIME(), SYSDATETIME())
END

GO

PRINT '***'
PRINT '* END Add_OperatorManager_UserFeature_And_AccessRole.sql'
PRINT '***'


