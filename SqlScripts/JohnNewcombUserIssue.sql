--declare @cfBadField bigint = 121801,
--	@adsBadField int = @adsBadField,
--	@dsBadField bigint = 221686,
--	@adsGeoFileLayer int = 1780499;

--SELECT * FROM [agri-datadb].dbo.ADS_GeoFileLayers
--WHERE gly_fld_id = @adsGeoFileLayer;

declare @username nvarchar(150) = 'connectedfarm@dyesa.com';
--select ID from UserOp.dbo.[Login] l where l.username = @username
declare @userId bigint =11980;
declare @cfOrgId bigint = 27551;
declare @adsFrmId int = 57639;
declare @dsIdent bigint = 1776;
declare @adsIdent int = 6550;
declare @lastProfileAgcId int = 2877;
declare @cmpId int = 224;
declare @cfApplicationId int = 1;
declare @adsApplicationId int = 2;
declare @desa_frmId int = 57639,
	@desa_cmpId int = 65,
	@desa_agcId int = 894;

-- (select ID from UserOp.dbo.[Login] l where l.username = @username)
----declare @orgId bigint = (
--	select * from UserOp.dbo.Organization o where o.ID in (
--	select distinct ol.fk_OrgID from UserOp.dbo.OrganizationLogin ol join UserOp.dbo.[Login] l on l.ID = ol.fk_LoginID
--	where ol.fk_LoginID = @userId)

select * from UserOp.dbo.[Login] l where l.ID = @userId
select * from UserOp.dbo.OrganizationLogin ol
where ol.fk_LoginID = @userId

select * from UserOp.dbo.Organization o where o.ID = 27551;
select * from DataSync.dbo.ApplicationIdentity ai
where ai.fk_identityid = @dsIdent

select * from [agri-datadb].dbo.AspNetUsers u
--where u.ID = @aspLoginId
where u.email = 'connectedfarm@dyesa.com'

select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_frm_id = @adsFrmId

-- Last Profile type is 'agc': AGR_AgriCoach (?)
select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_id = 124358

select * from [agri-datadb].dbo.AGR_AgriCoach
where agc_id = @lastProfileAgcId

select * from [agri-datadb].dbo.ADS_Company
where cmp_id = @cmpId

-- Maybe update the ASPNetUsers table with a LastProfileType = 'fcn' and a LastProfileId = 122607? 125321 (frm_id 103523)?

select gt.Name, gm.* from DataSync.dbo.GroupMembership gm
join DataSync.dbo.GroupType gt on gm.fk_GroupMembershipTypeID = gt.ID
where gm.fk_IdentityID = @dsIdent

select a.Name, agm.* from DataSync.dbo.ApplicationGroupMembership agm
join DataSync.dbo.[Application] a on agm.fk_ApplicationId = a.ID
--where agm.fk_GroupMembershipID = 56262; Deleted Org
-- Comanpy types not deleted:
where agm.fk_GroupMembershipID in (2820, 2823, 38355, 42499, 57080);

--select * from [agri-datadb].dbo.AGR_FarmContacts
----where fcn_email = 'connectedfarm@dyesa.com'
--where fcn_id in (58495, 101164, 106680, 124358, 125321);

select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_id in (58492, 58495, 101164, 106680, 125321);

select * from [agri-datadb].dbo.AGR_FarmMaster
where frm_id in (88311, 91202, 103523);

select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_frm_id = @desa_frmId

select * from DataSync.dbo.ApplicationGroupMembership
where ExternalId = 122607

select * from DataSync.dbo.GroupMembership
where ID = 2820