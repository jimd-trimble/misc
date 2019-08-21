declare @orgOwner bigint = 73264;
declare @oldEmail varchar(max) = 'aclinegrant@gmail.com'
declare @oldLoginId bigint = 76099;
declare @lastProfile int = 140836;

use UserOp
-- ***************************************************
select * from Organization o
where o.ID = 110797;

select * from [Login] l
where l.Id = @oldLoginId

select o.Name, l.UserName, l.* from OrganizationLogin ol
join Organization o on ol.fk_OrgID = o.ID
join [Login] l on ol.fk_loginID = l.ID
where ol.fk_OrgID = 110797;
--where ol.fk_LoginID = @oldLoginId

-- *******************************************
use [agri-datadb]
select * from AspNetUsers u
where u.id = 53625
or u.Email like ('%theredwolffarm@gmail.com%')

select * from AGR_FarmContacts fcn
where fcn.fcn_id = 116115;

select * from AGR_FarmContacts fcn
where fcn.fcn_frm_id = 97712;

select * from AGR_FarmContacts fcn
where fcn.fcn_id = @lastProfile;

select * from AGR_FarmMaster fm
where fm.frm_id = 113647
use [DataSync]

-- *******************************************
select * from [Identity] i
where i.email = 'theredwolffarm@gmail.com'

select * from ApplicationIdentity ai
where ai.fk_IdentityID = 51921;

