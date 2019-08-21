use [rogue-UserOp]

declare @login int = 62337;
declare @org int = 174873;
declare @orgLogin int = 50059;
--select * from Login where ID = @login;

--select * from License where fk_OrgID = @org;

--select * from AccessRole;-- where ID in (1006, 1007, 1010, 1026)

--select * from LoginAccessRole lar
--inner join AccessRole ar on ar.ID = lar.fk_AccessRoleID 
--where fk_LoginID = @login

-- NOTHING HERE: select * from LoginOperator where fk_LoginID = @login;

-- NOTHING HERE: select * from LoginUserFeature

--select * from OrganizationLogin where fk_OrgID = @org

--select * from OrgLoginAccessRole olar
--inner join AccessRole ar on olar.fk_AccessRoleID = ar.ID
--where fk_OrgLoginID = @orgLogin

--select * from AccessRoleUserFeature
--select * from UserFeature;
--select * from UserLicense where fk_OrgID = @org;

