--begin tran a
declare @fcnAmanda int = 116115;
declare @fcnShawn int = 140825;
declare @fcnBadOwner int = 140835;
declare @aspnetRecord int = 53625;
declare @fcnBadShawn int = 140836;
declare @amandaEmail varchar(max) = 'aclinegrant@gmail.com'

-- before

select * from [agri-datadb].dbo.AspNetUsers where id = @aspnetRecord;
select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_id in (@fcnAmanda, @fcnShawn, @fcnBadOwner, @fcnBadShawn);

--UPDATE [agri-datadb].dbo.AspNetUsers
--SET LastProfileId = @fcnShawn, 
--UserName = 'theredwolffarm@gmail.com',
--Email = 'theredwolffarm@gmail.com'
--WHERE id = @aspnetRecord;
--SELECT @@ROWCOUNT as ASPNETUSER_CHECK;

--UPDATE [agri-datadb].dbo.AGR_FarmContacts
--SET fcn_email = 'aclinegrant+disabled@gmail.com'
--where fcn_id = @fcnAmanda;
--SELECT @@ROWCOUNT as FCN02_CHECK;

--UPDATE [agri-datadb].dbo.AGR_FarmContacts
--SET fcn_email = 'theredwolffarm+disabled@gmail.com'
--where fcn_id in (@fcnBadShawn, @fcnBadOwner);
--SELECT @@ROWCOUNT as FCN03_CHECK;

-- after

--select * from [agri-datadb].dbo.AspNetUsers where id = @aspnetRecord;
--select * from [agri-datadb].dbo.AGR_FarmContacts where fcn_id in (@fcnAmanda, @fcnShawn, @fcnBadOwner, @fcnBadShawn);

--commit tran a
--rollback tran a

--AGR_FarmContact record
--116115	97712	Amanda	Cline-Grant	NULL	NULL	NULL	NULL	aclinegrant@gmail.com	NULL	NULL	NULL	true	1	0	NULL	NULL	NULL	53625	NULL	56A6ABF4-4A86-4912-88E9-0A22ACCECC49	0x00000000042763E3	0	NULL	NULL	NULL	NULL	0.00	NULL	2019-06-18 19:33:04.2454000	NULL	0

-- ASPNetUsers record
--53625	fcn	116115	2017-11-12 15:01:14.520	aclinegrant@gmail.com	0	NULL	4e83decf-fc1d-4ef8-8a20-04d596f6cb66	NULL	0	0	NULL	0	0	aclinegrant@gmail.com	62916	CONTACT00597374	c5d7f9b9-dda7-4caf-be80-2e3a4888e0a8	0	0	0	0	0	0	0	0	7CA031A3-676D-4072-9A6F-A816A269D696	0x0000000004275F94