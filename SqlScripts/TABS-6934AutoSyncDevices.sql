use [rogue-UserOp]
select l.expirationUtc, l.id, d.serialnumber, a.label, da.FirmwareVersion, da.AutoSyncEnabled, ass.name, dss.*
from DeviceSyncSettings dss
join AssetDevice ad on dss.fk_DeviceID = ad.fk_DeviceID
join Asset a on ad.fk_assetId = a.id
join Device d on ad.fk_DeviceID = d.ID
join AutoSyncStatus ass on dss.fk_autosyncstatusid = ass.id
left join DeviceActivity da on dss.fk_DeviceID = da.fk_DeviceID
left join DeviceLicenseUsage dlu on dss.fk_DeviceID = dlu.fk_DeviceID
left join License l on dlu.fk_LicenseID = l.ID
where ad.fk_OrgID = 28284
and ad.IsCurrent = 1