declare @teriMail varchar(20) = 'teri@venturecomm.net';
declare @colsonMail varchar(50) = 'colsonfarmssd@gmail.com'

declare @farmId bigint = 76430;
declare @cfOrgId bigint = 41229;
declare @dsGroupID bigint = 39967;

declare @teriLoginId bigint = 25405;
declare @colsonLoginId bigint = 66584;

declare @teriFarmContactId bigint = 121179;
declare @colsonFarmContactId bigint = 74705;

declare @teriAspnetId bigint = 26414;
declare @colsonAspnetId bigint = 57362;

declare @teriDsIdentity bigint = 22895; --(select i.ID from DataSync.dbo.[Identity] i where i.Email = @teriMail);
declare @colsonDsIdentity bigint = 55702; --(select i.ID from DataSync.dbo.[Identity] i where i.Email = @colsonMail);

-- Start Here!: Look at GroupMembershipID, one is pointed to the WRONG USER.
-- One should be 74705 and the other should be 121179.
-- Go through EVERY associated table in all 3 databases to make sure everything lines up correctly.
select a.Name as AppName, agm.* from DataSync.dbo.ApplicationGroupMembership agm 
inner join DataSync.dbo.[Application] a on agm.fk_ApplicationID = a.ID
where agm.ExternalId in (@teriFarmContactId, @colsonFarmContactId);

--SELECT * FROM [DataSync].[dbo].[ApplicationGroupMembership] where fk_GroupMembershipID = 24092
SELECT * FROM [DataSync].[dbo].[ApplicationGroupMembership] where fk_GroupMembershipID = 54307

--where agm.ExternalId in (121179, 74705);

select * from DataSync.dbo.GroupMembershipType;
select * from DataSync.dbo.GroupMembership gm where gm.fk_IdentityID in (@teriDsIdentity, @colsonDsIdentity);
select * from DataSync.dbo.[Group] g where g.ID = @dsGroupID;

 select fcn.fcn_login_id as aspnetusersID, * from [agri-datadb].dbo.AGR_FarmContacts fcn where fcn.fcn_frm_id = 76430 and fcn.fcn_email in (@teriMail, @colsonMail)
 select * from [agri-datadb].dbo.aspnetusers u where u.Id in (@teriAspnetId, @colsonAspnetId);
--select * from DataSync.dbo.ApplicationIdentity ai where ai.fk_IdentityID in (@teriDsIdentity, @colsonDsIdentity);

--select top 100 * from [agri-datadb].dbo.AGR_FarmMaster fm 
--where fm.

select	agm.ID as ApplicationGroupMembershipID,
		a.Name as AppName,
		agm.ExternalID as AGR_FarmContactID
from DataSync.dbo.ApplicationGroupMembership agm 
inner join DataSync.dbo.[Application] a on agm.fk_ApplicationID = a.ID
where agm.ExternalId in (@teriFarmContactId, @colsonFarmContactId);