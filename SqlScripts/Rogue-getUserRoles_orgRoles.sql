use [rogue-UserOp]

-- Reseller User
--declare @userId int = 19766;
--declare @orgId int = 118429;
--declare @roleType int =2;
-- Operator Mangaer RoleType:
--		Original: 2, like OrgAdmin, showing up in OrgPermissions.
--		Test: 1, like connectedFarm access and other user permisions.
-- OperatorManager RoleUsage:
--		Original: 1,like OrgAdmin
--		New: 2, like connectedFarm access and other permissions.

--update AccessRole set fk_AccessRoleType = 2 where ID = 1027;
--update AccessRole set fk_AccessRoleUsage = 1 where ID = 1027;
--select * from AccessRole where ID = 1027


-- Johnny Ramone
declare @userId int = 62341;
declare @orgId int = 174873;
declare @roleType int = 1;

select * from OrgLoginAccessRole olar where fk_OrgLoginId = @userId;

--select fk_AccessRoleID, fk_UserFeatureID, ar.Name as RoleName, uf.Name as FeatName from AccessRoleUserFeature aruf
--join AccessRole ar on aruf.fk_AccessRoleID = ar.ID
--join UserFeature uf on aruf.fk_UserFeatureID = uf.ID
--where ar.ID = 1026

-- GetUserRoles(long userId, long orgId, RoleType type)
select * from OrganizationLogin ol
join OrgLoginAccessRole olar on ol.ID = olar.fk_OrgLoginID
join AccessRole ar on olar.fk_AccessRoleID = ar.ID
where ol.fk_LoginID = @userId AND ol.fk_OrgID = @orgId AND ar.fk_AccessRoleType = @roleType

--GetUserRoles(long userId, RoleType type)
select * from LoginAccessRole olar 
join AccessRole ar on olar.fk_AccessRoleID = ar.ID
where olar.fk_LoginID = @userId AND ar.fk_AccessRoleType = @roleType