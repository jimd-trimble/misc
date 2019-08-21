use UserOp
select * from OrgLoginAccessRole

--declare @userId int;
--declare @orgId int;
--declare @roleType int;

--select * from OrganizationLogin ol
--join OrgLoginAccessRole olar on ol.ID = olar.fk_OrgLoginID
--join AccessRole ar on olar.fk_AccessRoleID = ar.ID
--where ol.fk_LoginID = @userId AND ol.fk_OrgID = @orgId AND ar.fk_AccessRoleType = @roleType





--select * from AccessRole
--SELECT * FROM dbo.UserFeature
--select * from AccessRoleUserFeature where fk_UserFeatureID = 90;

--AccessRoles "TrimbleAdmin and TrimbleSupport"

DECLARE @opManagerFeatId int = 90;
DECLARE @oldUserFeatureName nvarchar(50) = 'ConnectedFarm.OperatorManager';
DECLARE @userFeatureName nvarchar(50) = 'LegacyFeatures.OperatorManager';

select * from AccessRole where fk_AccessRoleType = 1

select *  from AccessRole where ID in (select fk_AccessRoleID from AccessRoleUserFeature aruf where aruf.fk_UserFeatureID = 5);
select distinct uf.Name, uf.fk_ApplicationID from AccessRoleUserFeature aruf
inner join UserFeature uf on aruf.fk_UserFeatureID = uf.ID
where fk_AccessRoleID = 1006

select * from AccessRoleUserFeature where fk_UserFeatureID = 8;

select * from UserFeature where Name like ('%ManagementConsole%')