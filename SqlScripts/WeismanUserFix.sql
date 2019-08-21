begin tran a
--declare @fcnId bigint = 121179, @aspnetUserId bigint = 41200;
declare @aspLoginId bigint = 41200;
declare @fcnCorrect bigint = 115647;
declare @fcnNew bigint = 124648;
declare @fcnInvalid bigint = 115646;

-- before
select * from [agri-datadb].dbo.AspNetUsers u
where u.ID = @aspLoginId;

select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_frm_id = 34841; 

-- update
update [agri-datadb].dbo.AspNetUsers 
set LastProfileType = 'fcn'
where Id = 41200;

update [agri-datadb].dbo.AspNetUsers 
set LastProfileId = @fcnCorrect
where Id = 41200;

update [agri-datadb].dbo.AGR_FarmContacts
set fcn_disabled = 1
where fcn_id in (@fcnNew, @fcnInvalid);

update [agri-datadb].dbo.AGR_FarmContacts
set fcn_disabled = 0
where fcn_id = @fcnCorrect;

select @@ROWCOUNT

-- after
select * from [agri-datadb].dbo.AspNetUsers u
where u.ID = @aspLoginId;

select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_frm_id = 34841; 

commit tran a
--rollback tran a