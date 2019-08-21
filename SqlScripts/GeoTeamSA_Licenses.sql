
select * from UserOp.dbo.Asset a where a.Label like ('%thaysen%') or a.Label like ('%vind%')

select * from UserOp.dbo.Organization o where o.ID = 5110;

select * from UserOp.dbo.UserLicense ul where ul.fk_OrgID = 5110 order by UpdateUTC desc;
--select top 100 * from UserOp.dbo.UserLicense where SalesOrderNum like ('%711765%')