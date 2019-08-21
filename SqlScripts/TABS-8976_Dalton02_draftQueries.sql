use [rogue-userOp]


declare @variables TABLE (id int IDENTITY(1,1), orgID bigint)
insert into @variables values 
(1074), (5536), (174873), (129418)

select * from LicenseType order by Name 
	select fk_OrgID, LicenseName = STUFF((SELECT N', ' + l1.Name
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

--SELECT DISTINCT ST2.fk_OrgID, 
--    SUBSTRING(
--        (
--            SELECT ','+ lt.Name  AS [text()]
--            FROM License l join LicenseType lt on l.fk_LicenseTypeID = lt.Id 
--            WHERE l.fk_orgId = ST2.fk_OrgID
--            ORDER BY l.fk_orgid
--            FOR XML PATH ('')
--        ), 2, 1000) [Students]
--FROM License ST2

	--SELECT distinct L2.fk_OrgID, 
	--	SUBSTRING(
	--		(
	--			SELECT ', '+ LT1.Name  AS [text()]
	--			FROM (
	--				select distinct l.fk_OrgID, lt.ID, lt.Name from License l
	--				join @variables v on l.fk_OrgID = v.orgID 
	--				join LicenseType lt on l.fk_LicenseTypeID = lt.ID
	--				where l.IsAssigned = 1
	--				and l.IsDemo = 0
	--				and (l.ExpirationUTC is null or (l.ExpirationUTC is not null and l.ExpirationUTC > SYSDATETIME()))
	--				and (lt.fk_LicenseConsumptionTypeID = 0 or l.ConsumedAmount < l.PurchasedAmount)
	--			) as LT1
	--			WHERE LT1.fk_OrgID = L2.fk_OrgID
	--			ORDER BY LT1.ID desc
	--			FOR XML PATH ('')
	--		), 2, 1000) [LicenseLevel]
	--FROM (
	--		select distinct l.fk_OrgID, lt.Name from License l 
	--		join @variables v on l.fk_OrgID = v.orgID 
	--		join LicenseType lt on l.fk_LicenseTypeID = lt.ID
	--		where l.IsAssigned = 1
	--		and l.IsDemo = 0
	--		and (l.ExpirationUTC is null or (l.ExpirationUTC is not null and l.ExpirationUTC > SYSDATETIME()))
	--		and (lt.fk_LicenseConsumptionTypeID = 0 or l.ConsumedAmount < l.PurchasedAmount)
	--) as L2



	--Crop Types
	--SELECT distinct cs.fk_OrgID, mc.Name 
	--FROM MasterCrop mc
	--inner join CropSeason cs on mc.ID = cs.fk_MasterCropID
	--where cs.HarvestYear = 2018

	SELECT fk_OrgID, CropNames = STUFF((SELECT N', ' + ST1.Name
		FROM (
			SELECT cs.fk_OrgID, mc.Name 
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

	--SELECT DISTINCT l.fk_OrgID, appT.NAME FROM License l
	--inner join LicenseType lt on l.fk_LicenseTypeID = lt.ID
	--inner join ApplicationTypeLicenseType atlt on lt.ID = atlt.fk_LicenseTypeID
	--inner join ApplicationType appt on atlt.fk_ApplicationTypeID = appt.ID
	--WHERE l.IsAssigned = 1
	--AND l.IsDemo = 0
	
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

	--SELECT distinct f.fk_OrgID, dt.Name as DeviceType FROM FieldDeviceLookup fdl
	--inner join Field f on fdl.fk_FieldID  = f.ID
	--inner join Device d on fdl.fk_DeviceID = d.ID
	--inner join DeviceType dt on d.fk_DeviceTypeID = dt.ID
	--group by f.fk_OrgID, dt.Name


--SELECT DISTINCT ST2.fk_OrgID, 
--    SUBSTRING(
--        (
--            SELECT ','+ST1.DeviceType  AS [text()]
--            FROM (
--				SELECT distinct f.fk_OrgID, dt.Name as DeviceType FROM FieldDeviceLookup fdl
--				inner join Field f on fdl.fk_FieldID  = f.ID
--				inner join Device d on fdl.fk_DeviceID = d.ID
--				inner join DeviceType dt on d.fk_DeviceTypeID = dt.ID
--				group by f.fk_OrgID, dt.Name
--			) ST1
--            WHERE ST1.fk_OrgID = ST2.fk_OrgID
--            ORDER BY ST1.DeviceType
--            FOR XML PATH ('')
--        ), 2, 1000) [Devices]
--FROM (
--	SELECT distinct f.fk_OrgID, dt.Name as DeviceType FROM FieldDeviceLookup fdl
--	inner join Field f on fdl.fk_FieldID  = f.ID
--	inner join Device d on fdl.fk_DeviceID = d.ID
--	inner join DeviceType dt on d.fk_DeviceTypeID = dt.ID
--	group by f.fk_OrgID, dt.Name
--	) ST2


--SELECT DISTINCT ST2.SubjectID, 
--    SUBSTRING(
--        (
--            SELECT ','+ST1.StudentName  AS [text()]
--            FROM dbo.Students ST1
--            WHERE ST1.SubjectID = ST2.SubjectID
--            ORDER BY ST1.SubjectID
--            FOR XML PATH ('')
--        ), 2, 1000) [Students]
--FROM dbo.Students ST2


select ad.fk_OrgID, count(distinct fk_DeviceID) as DeviceCount from AssetDevice ad
join @variables v on ad.fk_OrgID = v.orgid
where ad.IsCurrent = 1
group by ad.fk_OrgID

--select ad.fk_OrgID, dt.Name from AssetDevice ad
--join @variables v on ad.fk_OrgID = v.orgid
--join Device d on ad.fk_DeviceID = d.ID
--join DeviceType dt on d.fk_DeviceTypeID = dt.ID
--where ad.IsCurrent = 1
--group by ad.fk_OrgID, dt.Name

	SELECT l2.fk_OrgID, Devices = STUFF((SELECT N', ' + ST1.Name
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


	select fk_OrgID, count(*) as LoginCount from OrganizationLogin ol
	join @variables v on ol.fk_orgid = v.orgid
	group by fk_orgid