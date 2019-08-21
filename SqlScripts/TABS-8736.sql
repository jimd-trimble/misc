use [rogue-userop]

declare @martyLogin bigint = 1105,
	@coreLicId bigint = 114;

select * from [login] l
where l.id = @martyLogin;

select o.ID, o.Name, lt.Name from Organization o 
inner join License l on l.fk_OrgID = o.ID
inner join LicenseType lt on l.fk_LicenseTypeID = lt.id
where o.id = 175398;

select distinct o.id, o.Name as OrgName from Asset a
inner join AssetDevice ad on a.ID = ad.fk_AssetID
inner join Organization o on ad.fk_OrgID = o.ID
inner join License l on o.ID = l.fk_OrgID 
inner join (select distinct fk_OrgID from OrganizationLogin ol where ol.fk_LoginID = @martyLogin) ol on o.ID = ol.fk_OrgID
and fk_LicenseTypeID = @coreLicId;
