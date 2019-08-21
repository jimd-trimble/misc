use UserOp

begin tran a
declare @unassigned int = 2, @locked int = 2, @licId bigint = 42840, @trmbInvId bigint = 101;

-- before
select *
from UserLicense l
join UserLicenseStatus ls on l.fk_UserLicenseStatusID = ls.ID
where l.ID = @licId
and ls.ID = @unassigned

update UserLicense set fk_OrgID = @trmbInvId, UpdateUTC = SYSUTCDATETIME() 
where id in (@licId)
select @@ROWCOUNT

---- after
select *
from UserLicense l
join UserLicenseStatus ls on l.fk_UserLicenseStatusID = ls.ID
where l.ID = @licId
and ls.ID = @unassigned
and l.fk_OrgID = @trmbInvId;

--commit tran a
rollback tran a