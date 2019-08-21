begin tran a
declare @unassigned int = 2, @locked int = 2

-- before
select l.fk_UserLicenseStatusID, l.UpdateUTC, u.fk_UserLicenseUsageStatusID, u.UpdateUTC
from UserLicenseUsage u 
join UserLicense l on u.fk_UserlicenseId = l.id 
where l.id in ()

update UserLicenseUsage set fk_UserLicenseUsageStatusID = @locked, UpdateUTC = SYSUTCDATETIME() where fk_UserLicenseID in () 
select @@ROWCOUNT

update UserLicense set fk_UserLicenseStatusID = @unassigned, UpdateUTC = SYSUTCDATETIME() where id in ()
select @@ROWCOUNT

-- after
select l.fk_UserLicenseStatusID, l.UpdateUTC, u.fk_UserLicenseUsageStatusID, u.UpdateUTC
from UserLicenseUsage u 
join UserLicense l on u.fk_UserlicenseId = l.id 
where l.id in ()

--commit tran a
rollback tran a