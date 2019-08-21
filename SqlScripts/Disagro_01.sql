use UserOp

declare @companyType bigint = 1,
		@guatemalaOrg bigint = 113234,
		@colombiaOrg bigint = 116734,
		@costaOrg bigint = 116735,
		@elsalvOrg bigint = 116736,
		@hondurasOrg bigint = 116741,
		@panamOrg bigint = 116784,
		@nicarOrg bigint = 116798,
		@disagroDemo bigint = 113406,
		@guatemala varchar(50) = 'Disagro Guatemala',
		@colombia varchar(50) = 'Disagro Colombia',
		@costa varchar(50) = 'Disagro Costa Rica',
		@elsalv varchar(50) = 'Disagro El Savador',
		@honduras varchar(50) = 'Disagro Honduras',
		@panam varchar(50) = 'Disagro Panama',
		@nicaragua varchar(50) = 'Disagro Nicaragua';

declare @regionIds TABLE(region varchar(50), org_id bigint, cmp_id bigint);
insert into @regionIds(org_id, region) values (@nicarOrg, @nicaragua);
insert into @regionIds(org_id, region) values (@panamOrg, @panam);
insert into @regionIds(org_id, region) values (@hondurasOrg, @honduras);
insert into @regionIds(org_id, region) values (@elsalvOrg, @elsalv);
insert into @regionIds(org_id, region) values (@costaOrg, @costa);
insert into @regionIds(org_id, region) values (@colombiaOrg, @colombia);
insert into @regionIds(org_id, region) values (@guatemalaOrg, @guatemala);

update @regionIds
set cmp_id = s.cmp_id
from @regionIds u
    inner join [agri-datadb].dbo.ADS_Company s on
        u.org_id = s.cmp_cf_org_id;
select * from @regionIds;

--select * from @regionIds r
--join Organization o on r.org_id = o.ID;

--select * from Organization o
--where o.ID = @disagroDemo;

--select * from OrgRelationship orgrel
--where orgrel.fk_PrincipalOrgID = @disagroDemo;

--select c.ID, o.Name, l.username from OrganizationLogin c
--join @regionIds r on c.fk_OrgID = r.org_id
--join Organization o on c.fk_OrgID = o.ID
--join [Login] l on c.fk_LoginID = l.ID

--select * from Client c
--where c.fk_OrgID in (select org_id from @regionIds)
select * from [agri-datadb].dbo.ADS_Company cmp
where cmp.cmp_cf_org_id in (select org_id from @regionIds)
--*******************************************
-- Query from Ads.Core.CorporateAccessManager.ListAccessibleFarms (FarmListController.MyFarms endpoint)
--*******************************************
declare @coachId int = 1; -- "User.Session.Id"
declare @companyId int = 1; -- "User.Session.CompanyId"
  --      public const int FarmContact = 1000;
  --      public const int FarmMaster = 100;
  --      public const int Employee = 10;
  --      public const int ManagerAdministrator = 5;
  --      public const int CompanyAdministrator = 4;
  --      public const int AgritrendGroupAdministrator = 3;
  --      public const int UsCompanyAdministrator = 1;
  --      public const int Administrator = 0;
  --      public const int DefaultAccessLevel = FarmMaster;
  -- Do not list other farms for coaches with less than employee access (farm masters, farm contacts)
declare @minListFarmAccess int = 10;

-- COACH
select top 1 * from [agri-datadb].dbo.AGR_AgriCoach c
where c.agc_disabled is null 
and c.agc_access_level > @minListFarmAccess
--and c.agc_id = @coachId;

-- Company
select top 1 * from [agri-datadb].dbo.ADS_Company cmp
where cmp.cmp_id = @companyId;

-- WHOA, the logic to get the list of farms is nuts.
-- See if you can make a call to the FarmList/MyFarms endpoint.