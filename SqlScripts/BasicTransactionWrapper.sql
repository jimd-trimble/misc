begin tran a
declare @mfaId int = 122782;
declare @expDate datetime = (select mfa_expiry_date from [agri-datadb].dbo.ADS_ModuleFarmAccess where mfa_id = 113088);

-- before

select * from [agri-datadb].dbo.ADS_ModuleFarmAccess where mfa_id = 122782
select @expDate;

UPDATE [agri-datadb].dbo.ADS_ModuleFarmAccess
SET mfa_expiry_date = @expDate
WHERE mfa_id = @mfaId;
SELECT @@ROWCOUNT as MFA_FIELD_CHECK;
-- after

select * from [agri-datadb].dbo.ADS_ModuleFarmAccess where mfa_id = 122782 and mfa_expiry_date > SYSDATETIME();

--commit tran a
rollback tran a