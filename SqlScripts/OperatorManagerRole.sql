/****** Script for SelectTopNRows command from SSMS  ******/
use UserOp

select * from AccessRoleUserFeature where AccessLevel = 15
SELECT * FROM dbo.AccessRole order by ID desc --where fk_AccessRoleType = 2; --WHERE Name = 'Trimble Beta Access';
SELECT * from UserFeature where Name like('%ConnectedFarm%') order by ID desc;

select ID, Name as UsageName from dbo.AccessRoleUsage -- 1 = Org User, 2 = User (want 1?)
select ID, Name as TypeName from dbo.AccessRoleType -- 1 = Administrative, 2 = User (want 2)