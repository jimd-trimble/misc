declare @testCountryAdsId bigint = 175321;
--update [rogue-agri-datadb_dev].dbo.AGR_FarmMaster set frm_country = null
--where frm_cf_org_id = @testCountryAdsId

--select * from [rogue-UserOp].dbo.[Login] l where l.ID = 62442;

select frm_country, * from [rogue-agri-datadb_dev].dbo.AGR_FarmMaster 
where frm_cf_org_id = @testCountryAdsId

select Country,* from [rogue-UserOp].dbo.Organization
where ID = @testCountryAdsId

--select * from [rogue-agri-datadb_dev].dbo.AGR_FarmMaster fm where fm.frm_cf_org_id in (
--	select ID from [rogue-UserOp].dbo.Organization o where o.Country is null
--) and fm.frm_country is null;

--use [rogue-UserOp]
--select top 100 * from Organization o
--where o.Country is null;

--update Organization set Country = 'UK' where ID = @testCountryAdsId

--select * from Organization o where o.ID = @testCountryAdsId;

select l.ID, l.UserName, l.fk_CountryID as LoginCountry, o.ID as OrgID, o.Name as OrgName, o.Country as OrgCountry, ar.Name as Access
from [rogue-UserOp].dbo.[Login] l
inner join [rogue-UserOp].dbo.OrganizationLogin ol on ol.fk_LoginID = l.ID
inner join [rogue-UserOp].dbo.Organization o on o.ID = ol.fk_OrgID
inner join [rogue-UserOp].dbo.OrgLoginAccessRole olar on olar.fk_OrgLoginID = ol.ID
inner join [rogue-UserOp].dbo.AccessRole ar on ar.ID = olar.fk_AccessRoleID
where l.UserName like ('%jim_dillon%')
