use [tst-UserOp]

--select * from Organization o where Name like ('%dillon%')

--select lt.Name, l.* from License l
--join LicenseType lt on l.fk_LicenseTypeID = lt.ID
--where l.Deferred is not null
----and l.fk_OrgID in (122526, 124242, 124243)
--order by IsAssigned desc, UpdateUTC desc

--select * from LicenseType lt
--join LicenseConsumptionType lct on lt.fk_LicenseConsumptionTypeID = lct.ID
--where lt.ID = 57

--select * from UserLicense ul
----join UserLicenseType ult on ul.fk_UserLicenseTypeID = ult.ID
--where ul.Deferred is not null

--select * from DeviceLicense ul
----join UserLicenseType ult on ul.fk_UserLicenseTypeID = ult.ID
--where ul.Deferred is not null

declare @orgId bigint = 5521;
select * from Organization o
where o.ID = @orgId;