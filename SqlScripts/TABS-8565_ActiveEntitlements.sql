use [tst-UserOp]

declare @orgId bigint = 124291;
--124291

select * from ORganization o where o.ID = @orgID
select * from OrgLicenseLimit oll
where oll.fk_OrgID = @orgId;

--select * from Organization o
--where o.Name = 'Australia Store Test'

select * from License l
join LicenseType lt on l.fk_LicenseTypeID = lt.ID
where l.fk_OrgID = @orgID
--where ActivationID = 'ff46c4b5-b6e1-4708-ba0a-1aee214aa99e'
and l.IsAssigned = 1
and lt.ID = 96
and (l.ExpirationUTC is null or 
	(l.ExpirationUTC is not null and l.ExpirationUTC > SYSUTCDATETIME()) or
	(lt.fk_LicenseConsumptionTypeID = 0) or
	(l.PurchasedAmount is null or (l.PurchasedAmount is not null and l.PurchasedAmount > l.ConsumedAmount)))

order by InsertUTC

-- 5 from activation f56f0c86-c511-4189-a1db-158b1260df30 2019-05-21 16:04:00.6474000
-- 1 from activation 6d3f86ff-7dbe-4125-b91c-4f4865ae263d 2019-05-21 16:05:28.1688000
-- 

