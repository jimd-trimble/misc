use UserOp

select ul.ID as UserLicenseID, IIF(ad.IsCurrent = 1, 'YES', 'NO') as IsCurrent, ul.fk_OrgID as OrgID, ul.PartNumber as PartNumber,
ul.PurchaseOrderNum as PO, ul.SalesOrderNum as SO, ul.ReferenceText as Notes,
ulu.AssignedUTC, (u.FirstName + ' ' + u.LastName) as AssignedBy, ulu.EffectiveUTC,
d.Name as DeviceName, d.SerialNumber as DeviceSerial, dt.Name as DeviceType
from UserLicenseUsage ulu
inner join UserLicense ul on ulu.fk_UserLicenseID = ul.ID
inner join Device d on ulu.fk_DeviceID = d.ID
inner join DeviceType dt on d.fk_DeviceTypeID = dt.ID
inner join AssetDevice ad on ad.fk_DeviceID = d.ID
inner join Login u on ulu.fk_AssignedbyUserID = u.ID
where fk_UserLicenseID in 
	(select distinct ID from UserLicense ul
	where ul.fk_UserLicenseTypeID = 93
	and fk_OrgID in (select distinct ID from Organization o where o.Name = 'Vantage South')
	and PartNumber = '96551-04')
order by AssignedUTC

--select * from UserLicenseUsage
--where fk_UserLicenseID in 
--	(select distinct ID from UserLicense ul
--	where ul.fk_UserLicenseTypeID = 93
--	and fk_OrgID in (select distinct ID from Organization o where o.Name = 'Vantage South')
--	and PartNumber = '96551-04')

--select * from UserLicense ul
--where ul.fk_UserLicenseTypeID = 93
--and fk_OrgID in (select distinct ID from Organization o where o.Name = 'Vantage South')
--and PartNumber = '96551-04'



