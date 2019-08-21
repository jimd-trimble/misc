use [UserOp]

select * from DeviceTypeUserLicenseType dtult
join DeviceType dt on dtult.fk_DeviceTypeId = dt.ID
join UserLicenseType ult on dtult.fk_UserLicenseTypeId = ult.ID
where dtult.fk_UserLicenseTypeID = 39

select count(*) from UserLicense ul
where ul.fk_UserLicenseTypeId = 39


select count(*) from UserLicense ul
where ul.fk_UserLicenseTypeId = 39
and ul.IsDemo = 0;

select count(*) from UserLicense ul
where ul.fk_UserLicenseTypeId = 39
and ul.IsDemo = 1;


-- active non-demo licenses
select uls.Name as StatusName, * from UserLicense ul
join UserLicenseStatus uls on ul.fk_UserLicenseStatusID = uls.ID
where ul.fk_UserLicenseTypeId = 39
and ul.fk_UserLicenseStatusID  = 1
and ul.IsDemo = 0

-- active demo licenses
select *
from UserLicense l
join LicenseType lt on l.fk_UserLicenseTypeID = lt.ID
join UserLicenseUsage ulu on l.ID = ulu.fk_UserLicenseID
where l.fk_UserLicenseStatusID = 1
and l.IsDemo = 1
and lt.ID in (39)
and (l.fk_UserLicenseExpiryModeID = 0 or (l.ExpiryData is not null and (DATEADD(day, l.ExpiryData, ulu.EffectiveUTC)) < SYSDATETIME()))

-- orgs for active non-demo licenses
select * from Organization o
where o.ID in (
	select distinct fk_OrgId
	from UserLicense l
	join LicenseType lt on l.fk_UserLicenseTypeID = lt.ID
	join UserLicenseUsage ulu on l.ID = ulu.fk_UserLicenseID
	where l.fk_UserLicenseStatusID = 1
	and l.IsDemo = 0
	and lt.ID in (39)
	and (l.fk_UserLicenseExpiryModeID = 0 or (l.ExpiryData is not null and (DATEADD(day, l.ExpiryData, ulu.EffectiveUTC)) < SYSDATETIME())))