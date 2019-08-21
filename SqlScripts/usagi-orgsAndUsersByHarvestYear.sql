use [usagi-UserOp]

declare @id int = 1272;
declare @ppId int = (select ID from LicenseType where name like ('%cropimage%'));


--select cs.fk_OrgID as OrgID, count(*) as '2017Fields', o.Name, l.username from CropSeason cs
----select distinct fk_OrgID, o.Name from CropSeason cs
--inner join Organization o on cs.fk_OrgID = o.ID
--inner join GrownCrop gc on gc.fk_CropSeasonID = cs.ID
--inner join OrganizationLogin ol on cs.fk_OrgID = ol.fk_OrgID
--inner join [Login] l on ol.fk_LoginID = l.ID
--where cs.HarvestYear = 2017
--and gc.FirstPlantUTC is not null
--group by cs.fk_OrgID, o.Name, l.username
--order by '2017Fields' desc
----select * from GrownCrop where FirstPlantUTC is not null

--select cs.fk_OrgID as OrgID, gc.fk_FieldID as '2017Fields', o.Name, l.username, f.Name
-- from CropSeason cs
--inner join Organization o on cs.fk_OrgID = o.ID
--inner join GrownCrop gc on gc.fk_CropSeasonID = cs.ID
--inner join OrganizationLogin ol on cs.fk_OrgID = ol.fk_OrgID
--inner join [Login] l on ol.fk_LoginID = l.ID
--inner join Field f on gc.fk_FieldID = f.ID
--where cs.HarvestYear = 2017
--and cs.fk_OrgID = 2599
--and gc.FirstPlantUTC is not null
--and l.UserName = 'deepak_rajendran@trimble.com'
--group by cs.fk_OrgID, gc.fk_FieldID, o.Name, l.username, f.Name
--order by '2017Fields' desc


select distinct o.Name as OrgName, li.username from License l
inner join Organization o on l.fk_OrgID = o.ID
inner join OrganizationLogin ol on o.ID = ol.fk_OrgID
inner join [Login] li on ol.fk_LoginID = li.ID
inner join CropSeason cs on o.ID = cs.fk_OrgID
inner join GrownCrop gc on cs.ID = gc.fk_CropSeasonID
where fk_LicenseTypeID = @ppId
and not o.isDeleted = 1
--and cs.HarvestYear = 2017
--and cs.fk_OrgID = 2599
--and gc.FirstPlantUTC is not null
  --where fk_LicenseTypeGroupID = 4
order by o.Name  