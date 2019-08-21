--45013

--so this is to trigger a resync from ads -> cf:
--https://sync.trimbleag.com/AgriData/Resync/Grower/{ads_farm_id}  

--for cf -> ads it is:
--https://sync.trimbleag.com/ConnectedFarm/Resync/Grower/{cf_org_id}  

--you'll get a blank page 200 back, but you can monitor this sql query for the status

SELECT
o.Name,
   tt.Name,
t.SyncFinished,
t.LastRequestID
FROM [DataSync].[dbo].[Tracking] t
JOIN [DataSync].[dbo].[TrackingType] tt on t.fk_TrackingTypeID = tt.ID
JOIN [DataSync].[dbo].[ApplicationGroup] ag on ag.fk_ApplicationID = 1 and ag.fk_GroupID = t.fk_GroupID
JOIN [UserOp].[dbo].[Organization] o on o.ID = ag.ExternalID

where o.ID = {ORGID} and fk_SourceApplicationID = 1

-- Log into https://www.trimbleag.com/ as yourself 1st!
-- Run resync, run the above SQL query and grab the LastRequestID and put it into a Splunk Query:
-- host=*prd* index=prd Domain=DataSync {LastRequestID}
-- Check to see if there are any ERROR level logs. If there are, make sure that there is a grower org in ADS.
-- select * from [agri-datadb].dbo.AGR_FarmMaster where frm_cf_org_id = {ORGID}
-- If there is no grower org in ADS, search for the organization by ID in Console, click Edit and click Save to create the org.
-- Run resync again...