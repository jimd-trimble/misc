-- From Kevin H. 1/22/2019:
-- Clear the ssocontact id  945-065111A@cnhdealer.com in all 3 dbs, then go into console, find the user with the new email.
-- Edit the user and save which should create everything in data sync and ads.
-- mine had null uuids but yours might not
-- so I would take off the uuid is null and then make sure you aren't clearing it for   601-101110A@cnhdealer.com in userop   
-- I'll see if I can figure it out.  For error echanging token use this instead
--host=*prd* index=prd Level=WARN  *Error Exchanging Token* "Domain=DataSync"
--Group membership not found for AgriData. IdentityId=58599
--all good now.  Resyncing fixed it
--don't send it back yet, his customers won't load in reseller
--there is an error loading them within the site
--fixed
--select * from orgrelationship where fk_PrincipalOrgID = 116199
--insert OrgRelationship (fk_PrincipalOrgID, fk_AssociatedOrgID, fk_OrgRelationshipTypeID) values (116199, 116199, 1)
--resellers need a record in there pointing to themselves 

begin tran a

declare @sso varchar(50) = 'CONTACT00564156'
declare @cfOldId bigint = 57399,
	@dsOldId bigint = 46068,
	@adsOldId bigint = 47845,
	@goodLoginId bigint = 67619;

select id, SSOContactID, username from Login where ssocontactid = @sso and ID = @cfOldId --and Uuid is null
select id, email from DataSync.dbo.[Identity] where ssocontactid = @sso and ID = @dsOldId --and Uuid is null
select id, Email from [agri-datadb].dbo.AspNetUsers where SSOContactID = @sso and ID = @adsOldId --and Uuid is null


update Login set ssocontactid = null where ssocontactid = @sso and ID = @cfOldId
select @@ROWCOUNT

update DataSync.dbo.[Identity] set ssocontactid = null  where ssocontactid = @sso and ID = @dsOldId --and Uuid is null
select @@ROWCOUNT

update [agri-datadb].dbo.AspNetUsers set ssocontactid = null where SSOContactID = @sso and ID = @adsOldId --and Uuid is null
select @@ROWCOUNT

select id, SSOContactID, username from Login where ssocontactid = @sso and ID = @cfOldId --and Uuid is null
select id, email from DataSync.dbo.[Identity] where ssocontactid = @sso and ID = @dsOldId --and Uuid is null
select id, Email from [agri-datadb].dbo.AspNetUsers where SSOContactID = @sso and ID = @adsOldId --and Uuid is null

--rollback tran a
commit tran a