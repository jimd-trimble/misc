begin tran a

declare @teriAspnetId bigint = 26414;
declare @colsonAspnetId bigint = 57362;
declare @teriGroupMembership bigint = 24092;
declare @teriFarmContactId bigint = 121179;
declare @colsonFarmContactId bigint = 74705;

-- before
select * from [agri-datadb].dbo.aspnetusers u where u.Id in (@teriAspnetId, @colsonAspnetId)
select * from [DataSync].dbo.ApplicationGroupMembership --, fcn_update_utc = SYSUTCDATETIME() 
where fk_GroupMembershipID = @teriGroupMembership
and fk_ApplicationID = 2;

update [agri-datadb].dbo.AspNetUsers
set LastProfileId = @teriFarmContactId
where Id = @teriAspnetId
select @@ROWCOUNT

update [DataSync].dbo.ApplicationGroupMembership
set ExternalID = @teriFarmContactId, UpdateUTC = SYSUTCDATETIME() 
where fk_GroupMembershipID = @teriGroupMembership
and fk_ApplicationID = 2;
select @@ROWCOUNT

-- after
select * from [agri-datadb].dbo.aspnetusers u where u.Id in (@teriAspnetId, @colsonAspnetId)
select * from [DataSync].dbo.ApplicationGroupMembership --, fcn_update_utc = SYSUTCDATETIME() 
where fk_GroupMembershipID = @teriGroupMembership
and fk_ApplicationID = 2;

--commit tran a
rollback tran a