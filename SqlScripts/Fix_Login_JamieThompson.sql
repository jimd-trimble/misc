begin tran a


-- set AGR_FarmContact.fcn_disabled = 1,
-- fcn_update_utc = SYSDATETIME()
-- where fcn_id = @badFcnId 

-- set AspNetUsers.LastProfileId = @goodFcnId where Id = @licUserId

declare @badFcnId int = 140215,
	@goodFcnId int = 143486,
	@noLicAspUserId int = 25266,
	@licUserId int = 66703;

-- before

select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_id in (@badFcnId, @goodFcnId)

select * from [agri-datadb].dbo.AspNetUsers
where Id in (@noLicAspUserId, @licUserId);

-- UPDATE
UPDATE [agri-datadb].dbo.AGR_FarmContacts set
	fcn_disabled = 1,
	fcn_login_id = null,
	fcn_update_utc = SYSDATETIME()
 where fcn_id = @badFcnId 
SELECT @@ROWCOUNT as FCN_CHECK

UPDATE [agri-datadb].dbo.AspNetUsers set
	LastProfileId = @goodFcnId
where Id = @licUserId
SELECT @@ROWCOUNT as USR_CHECK

-- after
select * from [agri-datadb].dbo.AGR_FarmContacts
where fcn_id in (@badFcnId, @goodFcnId)

select * from [agri-datadb].dbo.AspNetUsers
where Id in (@noLicAspUserId, @licUserId);

--commit tran a
rollback tran a