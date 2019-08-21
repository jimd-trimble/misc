begin tran a
--declare @fcnId bigint = 121179, @aspnetUserId bigint = 41200;
declare @aspLoginId bigint = 6550;
declare @fcnCorrect bigint = 122607;


-- before
select * from [agri-datadb].dbo.AspNetUsers u
where u.ID = @aspLoginId;

select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_id = @fcnCorrect

-- update
update [agri-datadb].dbo.AspNetUsers 
set LastProfileType = 'fcn'
where Id = @aspLoginId;

update [agri-datadb].dbo.AspNetUsers 
set LastProfileId = @fcnCorrect
where Id = @aspLoginId;

select @@ROWCOUNT

-- after
select * from [agri-datadb].dbo.AspNetUsers u
where u.ID = @aspLoginId;

select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_id = @fcnCorrect

--commit tran a
rollback tran a