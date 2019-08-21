--so this is to trigger a resync from ads -> cf:
--https://sync.trimbleag.com/AgriData/Resync/Grower/{ads_farm_id}  

--for cf -> ads it is:
--https://sync.trimbleag.com/ConnectedFarm/Resync/Grower/{cf_org_id}  
-- Use this if there's a splunk error for "AgriData application group could not be retrieved"

--you'll get a blank page 200 back, but you can monitor this sql query for the status

declare @username nvarchar(150) = 'martin.vanhornsveld@agcocorp.com';
declare @userId bigint = (select ID from UserOp.dbo.[Login] l where l.username = @username)
declare @orgId bigint = 93420;
 --(
	--select ID from UserOp.dbo.Organization o where o.ID in (
	--select distinct ol.fk_OrgID from UserOp.dbo.OrganizationLogin ol join UserOp.dbo.[Login] l on l.ID = ol.fk_LoginID
	--where ol.fk_LoginID = @userId)
	--)
	select ID from UserOp.dbo.[Login] l where l.username = @username
SELECT
o.Name,
   tt.Name,
t.SyncFinished,
t.LastRequestID,
t.UpdateUTC
FROM [DataSync].[dbo].[Tracking] t
JOIN [DataSync].[dbo].[TrackingType] tt on t.fk_TrackingTypeID = tt.ID
JOIN [DataSync].[dbo].[ApplicationGroup] ag on ag.fk_ApplicationID = 1 and ag.fk_GroupID = t.fk_GroupID
JOIN [UserOp].[dbo].[Organization] o on o.ID = ag.ExternalID

where o.ID = @orgId and fk_SourceApplicationID = 1

-- Log into https://www.trimbleag.com/ as yourself 1st!
-- Run resync, run the above SQL query and grab the LastRequestID and put it into a Splunk Query:
-- host=*prd* index=prd Domain=DataSync {LastRequestID}
-- Check to see if there are any ERROR level logs. If there are, make sure that there is a grower org in ADS.
 declare @frmId bigint = (select frm_id from [agri-datadb].dbo.AGR_FarmMaster where frm_cf_org_id = @orgId);
 select * from [agri-datadb].dbo.AGR_FarmMaster where frm_cf_org_id = @orgId
 select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_frm_id = @frmId and fcn_email = @username
 select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_email = @username
-- If there is no grower org in ADS, search for the organization by ID in Console, click Edit and click Save to create the org.
-- Run resync again...

-- Other potentially useful queries:
--declare @dataSyncIdentityId bigint = 51723;
--declare @dataSyncIdentityGuid nvarchar(256) = '7a2702a3-5812-4cf8-b7c3-cdccc9f0c0a0'
--declare @fcnDisabledId bigint = 115647;
--declare @fcnEnabledDupAspWithMobile bigint = 124648;
--declare @fcnEnabledOther bigint = 115646;
--select * from DataSync.dbo.[Identity] i
-- where i.email = 'a.weisberg@staffcomm.com'
 
--declare @aspLoginId bigint = 41200;
select * from [agri-datadb].dbo.AspNetUsers u
--where u.ID = @aspLoginId
where u.email = @username
--or u.email = 'a.weisberg@staffcomm.com'
----select * from UserOp.dbo.[Login] l
----where l.Uuid = @externalId

