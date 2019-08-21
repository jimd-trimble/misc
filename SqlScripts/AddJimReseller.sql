begin tran a

declare @portalUserFeatId bigint = 7;
declare @portalBetaFeatId bigint = 88;
declare @portalCNHAdmin bigint = 91;
declare @jimLogin bigint = 62337;
declare @resellerAccessRoleId bigint = 1009;

-- before
select * from LoginAccessRole lar
inner join AccessRole ar on lar.fk_AccessRoleID = ar.ID
where lar.fk_LoginID = @jimLogin

insert into [rogue-UserOp].dbo.LoginAccessRole (fk_LoginID, fk_AccessRoleID, InsertUTC, UpdateUTC)
values (@jimLogin, @resellerAccessRoleId, GETDATE(), GETDATE());

select @@ROWCOUNT

-- after
select * from LoginAccessRole lar
inner join AccessRole ar on lar.fk_AccessRoleID = ar.ID
where lar.fk_LoginID = @jimLogin

--commit tran a
rollback tran a