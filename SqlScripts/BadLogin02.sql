--select * from DataSync.dbo.[Identity] i where i.Email = 'colsonfarmssd@gmail.com'

declare @teriId bigint = 22895;
declare @colsonId bigint = 55702;

--select * from UserOp.dbo.[login] where ID = 25405;

select * from DataSync.dbo.ApplicationIdentity ai where ai.fk_IdentityID = @teriId;
select * from DataSync.dbo.ApplicationGroup ag where ag.fk_GroupID = 39967;


--select * from DataSync.dbo.GroupMembership where fk_IdentityID = 22895
select * from DataSync.dbo.[Group] where ID = 39967;

--select * from DataSync.dbo.Field f where f.fk_GroupID = 39967;

--select top 100 * from DataSync.dbo.[Application]

--select top 100 * from DataSync.dbo.Farm where fk_GroupID = 39967;-- and Name = 'Colson Farms';

select * from [agri-datadb].dbo.aspnetusers u where u.Id in (26414, 57362)