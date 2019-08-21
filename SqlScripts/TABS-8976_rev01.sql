use [rogue-userop]
--use [userop]

declare @variables TABLE (id int IDENTITY(1,1), orgID bigint)
insert into @variables values 
-- PRD OrgID values:
 --(122132), (121128), (119156), (118381), (116275), (116272), (115902), (111833), (108675), (108623), (107532), (107296), (107232), (106928), (106918), (106726), (106647), (106537), (106355), (104884), (100090), (98986), (98976), (94130), (93337), (89376), (88865), (88833), (75442), (59222), (57297), (57239), (56082), (54543), (53363), (52110), (51599), (51390), (51321), (48835), (48058), (47072), (46101), (44045), (43350), (41757), (38644), (38635), (38100), (38046), (37574), (37562), (37532), (37210), (36810), (35513), (35441), (35414), (27528), (9644), (9483), (9418), (9159), (9158), (8656), (8464), (7626), (7313), (7272), (7101), (6440), (6146), (5248), (5117), (5080)

-- TEST values for rogue-UserOp:
(1074), (5536), (174873), (129418)

select o.ID as OrgID, o.Name, lic.LicenseLevel, fcnt.FieldCount, dcnt.DeviceCount, devNames.DeviceNames
	, contacts.LoginCount, UserLicense.licCount as UserLicenseCount
	, app.Interface, tasks2018.TaskCount as Tasks2018, tasks2019.TaskCount as Tasks2019, crops2018.CropNames as Crops2018, crops2019.CropNames as Crops2019, licActive.LicenseLevel as ActiveLicenses, licExpired.LicenseLevel as ExpiredLicenses, farmSize.totalArea, o.Country, o.[State]
	, CASE WHEN workOrders.mod_code is not null THEN 'Y' ELSE 'N' END AS WorkOrdersEnabled
	
from Organization o
join @variables v on o.ID = v.orgID

-- ACTIVE Licenses, would like to format this like: "<LicenseType.Name> (<LicenseCount>), ..." but this is good enough for now
left outer join (
	select fk_OrgID, LicenseLevel = STUFF((SELECT N', ' + l1.Name
		FROM (
			select distinct l.fk_orgId, lt.Name, lt.ID 
			from License l
			join LicenseType lt on l.fk_LicenseTypeID = lt.ID
			join @variables v on l.fk_OrgID = v.orgID
			where l.IsAssigned = 1
			and l.IsDemo = 0
			and lt.ID in (57, 112, 114)
			and (l.ExpirationUTC is null or (l.ExpirationUTC is not null and l.ExpirationUTC > SYSDATETIME()))
			and (lt.fk_LicenseConsumptionTypeID = 0 or l.ConsumedAmount < l.PurchasedAmount)
			) as l1
		where l2.fk_OrgID = l1.fk_OrgID
		order by l1.id desc
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	from License l2
	join @variables v on l2.fk_OrgID = v.orgID	
	Group by fk_OrgID
)	lic on o.ID = lic.fk_OrgID

-- Active Field Count: not deleted or retired.
left outer join (
	select f.fk_OrgID, count(distinct f.ID) as FieldCount from Field f
	join @variables v on f.fk_OrgID = v.orgID
	where f.IsDeleted = 0
	and f.IsRetired = 0
	group by fk_OrgID
	) fcnt on o.ID = fcnt.fk_OrgID

-- Devices, this is the best way to associate devices to orgs!
left outer join (
	select ad.fk_OrgID, count(distinct fk_DeviceID) as DeviceCount from AssetDevice ad
	join @variables v on ad.fk_OrgID = v.orgid
	where ad.IsCurrent = 1
	group by ad.fk_OrgID
) dcnt on o.ID = dcnt.fk_OrgID

-- Device Types
left outer join (
	SELECT l2.fk_OrgID, DeviceNames = STUFF((SELECT N', ' + ST1.Name
		FROM (
			select distinct ad.fk_OrgID, dt.Name from AssetDevice ad
			join @variables v on ad.fk_OrgID = v.orgid
			join Device d on ad.fk_DeviceID = d.ID
			join DeviceType dt on d.fk_DeviceTypeID = dt.ID
			where ad.IsCurrent = 1
		) ST1
		WHERE ST1.fk_OrgID = l2.fk_OrgID
		ORDER BY ST1.NAME
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	FROM AssetDevice l2
	join @variables v on l2.fk_OrgID = v.orgid
	where l2.IsCurrent = 1
	group by l2.fk_OrgID
) devNames on o.ID = devNames.fk_OrgID

-- User Count
left outer join (
	select fk_OrgID, count(*) as LoginCount from OrganizationLogin ol
	join @variables v on ol.fk_orgid = v.orgid
	group by fk_orgid
) contacts on o.ID = contacts.fk_orgid


---- User Count
left outer join (
	select fk_OrgID, count(*) as licCount from License l
	join @variables v on l.fk_orgid = v.orgid
	where l.fk_LicenseTypeID = 96
	group by l.fk_orgid
) UserLicense on o.ID = UserLicense.fk_orgid

-- Interfaces
left outer join (
	SELECT l2.fk_OrgID, Interface = STUFF((SELECT N', ' + ST1.Name
		FROM (
			SELECT DISTINCT l.fk_OrgID, appT.NAME FROM License l
			join @variables v on l.fk_OrgID = v.orgID
			join LicenseType lt on l.fk_LicenseTypeID = lt.ID
			join ApplicationTypeLicenseType atlt on lt.ID = atlt.fk_LicenseTypeID
			join ApplicationType appt on atlt.fk_ApplicationTypeID = appt.ID
			WHERE l.IsAssigned = 1
			AND l.IsDemo = 0
		) ST1
		WHERE ST1.fk_OrgID = l2.fk_OrgID
		ORDER BY ST1.NAME
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	FROM License l2
	join @variables v on l2.fk_OrgID = v.orgID
	WHERE l2.IsAssigned = 1
	AND l2.IsDemo = 0
	group by l2.fk_OrgID
) app on o.ID = app.fk_OrgID

-- 2018 Task Count
left outer join (	
	SELECT fk_OrgID, COUNT(*) as TaskCount FROM Task
	join @variables v on fk_OrgID = v.orgID
	WHERE year(InsertUTC) = 2018
	group by fk_OrgID
) tasks2018 on o.ID = tasks2018.fk_OrgID

-- 2019 Task Count
left outer join (	
	SELECT fk_OrgID, COUNT(*) as TaskCount FROM Task
	join @variables v on fk_OrgID = v.orgID
	WHERE year(InsertUTC) = 2019
	group by fk_OrgID
) tasks2019 on o.ID = tasks2019.fk_OrgID

-- 2018 Crop Names
left outer join (
	SELECT fk_OrgID, CropNames = STUFF((SELECT N', ' + ST1.Name
		FROM (
			SELECT DISTINCT cs.fk_OrgID, mc.Name 
			FROM MasterCrop mc
			join CropSeason cs on mc.ID = cs.fk_MasterCropID
			join @variables v on cs.fk_OrgID = v.orgID
			where cs.HarvestYear = 2018
		) ST1
		WHERE ST1.fk_OrgID = cs.fk_OrgID
		ORDER BY ST1.Name
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	FROM CropSeason cs
	join @variables v on cs.fk_OrgID = v.orgID
	where cs.HarvestYear = 2018
	group by cs.fk_orgid
) crops2018 on o.ID = crops2018.fk_OrgID

-- 2019 Crop Names
left outer join (
	SELECT fk_OrgID, CropNames = STUFF((SELECT N', ' + ST1.Name
		FROM (
			SELECT DISTINCT cs.fk_OrgID, mc.Name 
			FROM MasterCrop mc
			join CropSeason cs on mc.ID = cs.fk_MasterCropID
			join @variables v on cs.fk_OrgID = v.orgID
			where cs.HarvestYear = 2019
		) ST1
		WHERE ST1.fk_OrgID = cs.fk_OrgID
		ORDER BY ST1.Name
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	FROM CropSeason cs
	join @variables v on cs.fk_OrgID = v.orgID
	where cs.HarvestYear = 2019
	group by cs.fk_orgid	
) crops2019 on o.ID = crops2019.fk_OrgID

--TAS Current LicenseLevels
left outer join (
	select fk_OrgID, LicenseLevel = STUFF((SELECT N', ' + l1.Name
		FROM (
			select distinct l.fk_orgId, lt.Name, lt.ID 
			from License l
			join LicenseType lt on l.fk_LicenseTypeID = lt.ID
			join @variables v on l.fk_OrgID = v.orgID
			where l.IsAssigned = 1
			and l.IsDemo = 0
			and (l.ExpirationUTC is null or (l.ExpirationUTC is not null and l.ExpirationUTC > SYSDATETIME()))
			and (lt.fk_LicenseConsumptionTypeID = 0 or l.ConsumedAmount < l.PurchasedAmount)
			) as l1
		where l2.fk_OrgID = l1.fk_OrgID
		order by l1.id desc
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	from License l2
	join @variables v on l2.fk_OrgID = v.orgID	
	Group by fk_OrgID
)	licActive on o.ID = licActive.fk_OrgID

-- EXPIRED licenses
left outer join (
	select fk_OrgID, LicenseLevel = STUFF((SELECT N', ' + l1.Name
		FROM (
			select distinct l.fk_orgId, lt.Name, lt.ID 
			from License l
			join @variables v on l.fk_OrgID = v.orgID  
			join LicenseType lt on l.fk_LicenseTypeID = lt.ID
			where  l.IsDemo = 0
			and (l.ExpirationUTC is not null and l.ExpirationUTC <= SYSDATETIME())
			or (lt.fk_LicenseConsumptionTypeID > 0 and l.ConsumedAmount >= l.PurchasedAmount)
			) as l1
		where l2.fk_OrgID = l1.fk_OrgID
		order by l1.id desc
		FOR XML PATH(N''), TYPE).value(N'.[1]', N'nvarchar(max)'), 1, 2, N'')
	from License l2
	join @variables v on l2.fk_OrgID = v.orgID	
	Group by fk_OrgID
) licExpired on o.ID = licExpired.fk_OrgID

-- Farm Size
left outer join (
	SELECT fk_OrgID, ROUND(SUM(Area), 2) as totalArea FROM Field
	join @variables v on fk_OrgID = v.orgID 
	WHERE IsDeleted = 0
	and IsRetired = 0
	group by fk_OrgID
) farmSize on o.ID = farmSize.fk_OrgID

-- ROGUE Work Orders Module
left outer join (
	select distinct fm.frm_cf_org_id, m.mod_code from [rogue-agri-datadb_dev].[dbo].[ADS_ModuleFarmAccess] mfa
	join [rogue-agri-datadb_dev].[dbo].[ADS_Module] m on mfa.mfa_mod_id = m.mod_id
	join [rogue-agri-datadb_dev].[dbo].[AGR_FarmMaster] fm on mfa.mfa_frm_id = fm.frm_id
	where m.mod_code = 'MDL-WORK-ORDERS'
	and fm.frm_cf_org_id in (select orgid from @variables)
) workOrders on o.ID = workOrders.frm_cf_org_id

---- PRD Work Orders Module
--left outer join (
--	select distinct fm.frm_cf_org_id, m.mod_code from [agri-datadb].[dbo].[ADS_ModuleFarmAccess] mfa
--	join [agri-datadb].[dbo].[ADS_Module] m on mfa.mfa_mod_id = m.mod_id
--	join [agri-datadb].[dbo].[AGR_FarmMaster] fm on mfa.mfa_frm_id = fm.frm_id
--	where m.mod_code = 'MDL-WORK-ORDERS'
--	and fm.frm_cf_org_id in (select orgid from @variables)
--) workOrders on o.ID = workOrders.frm_cf_org_id
