use [tst-userop]


declare @frankLic bigint = 38401554,
	@danLic1 bigint = 38401241,
	@danLic2 bigint = 38401355;

select o.name as ResellerName, l.* from [tst-userop].dbo.License l
join [tst-userop].dbo.Organization o on l.fk_ResellerOrgId = o.id
where l.Deferred is not null
and l.fk_ResellerOrgID = 5521
and l.IsAssigned = 1
--and l.id in (@frankLic, @danLic1, @danLic2);

begin tran a

update License 
	set IsAssigned = 0,
	ExpirationUTC = null,
	UpdateUTC = SYSDATETIME()
where Deferred is not null
	and IsAssigned = 1
	and fk_ResellerOrgID = 5521;
	--and id in (@frankLic, @danLic1, @danLic2);
	--and (fk_ResellerOrgID = 122475 or SSOContactID = 'CONTACT00470531')

select @@ROWCOUNT

select * from License l
where l.Deferred is not null
	and IsAssigned = 1
	and fk_ResellerOrgID = 5521;
	--and id in (@frankLic, @danLic1, @danLic2);

commit tran a
--rollback tran a

--and l.IsAssigned = 1;