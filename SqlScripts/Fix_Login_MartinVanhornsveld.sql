begin tran a


-- set AGR_FarmContact.fcn_disabled = 1,
-- fcn_update_utc = SYSDATETIME()
-- where fcn_id = @badFcnId 

-- set AspNetUsers.LastProfileId = @goodFcnId where Id = @licUserId

declare @badFcnId01 int = 78498,
	@badFcnId02 int = 94524,
	@goodFcnId int = 116143,
	@aspUserId int = 40304;

-- before

select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_id in (@badFcnId01, @badFcnId02, @goodFcnId)

select * from [agri-datadb].dbo.AspNetUsers
where Id = @aspUserId;

-- UPDATE
UPDATE [agri-datadb].dbo.AGR_FarmContacts set
	fcn_login_id = null,
	fcn_update_utc = SYSDATETIME()
 where fcn_id in (@badFcnId01, @badFcnId02);
SELECT @@ROWCOUNT as FCN_CHECK

UPDATE [agri-datadb].dbo.AspNetUsers set
	LastProfileId = @goodFcnId
where Id = @aspUserId;
SELECT @@ROWCOUNT as USR_CHECK

-- after
select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_id in (@badFcnId01, @badFcnId02, @goodFcnId);

select * from [agri-datadb].dbo.AspNetUsers
where Id = @aspUserId;

--commit tran a
rollback tran a