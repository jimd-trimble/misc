/***

RELEVANT DATACENTER CODE FROM KEVIN H. 4/3/2019:

var licenses = ctx.License.Where(l => allLicenseIds.Contains(l.ID)).ToList();

			var mfaIds = licenses.Where(l => l.fk_adsMfaID.HasValue).Select(l => l.fk_adsMfaID.Value).ToList();
			adsCtx.ModuleFarmAccesses.RemoveWhere(o => mfaIds.Contains(o.mfa_id));
			adsCtx.SaveChanges();

			ctx.License.RemoveRange(licenses.Where(l => l.ID != parentLicenseId));

			var parentLicense = licenses.First(l => l.ID == parentLicenseId);
			parentLicense.IsAssigned = false;
			parentLicense.fk_adsMfaID = null;
			parentLicense.UpdateUTC = DateTime.UtcNow;
			parentLicense.EffectiveUTC = null;
			parentLicense.ExpirationUTC = null;
			parentLicense.fk_OrgID = parentLicense.fk_ResellerOrgID;

			return ctx.SaveChanges() > 0;

***/

declare @adsMfaID bigint = 74528,
	@licID bigint = 62590,
	@resellerID bigint = 39804,
	@orgID bigint = 106136;

SELECT *
  FROM [UserOp].[dbo].[License]
  where ID = @licID;

--delete from [agri-datadb].dbo.ADS_ModuleFarmAccess
--where mfa_id = @adsMfaID;

update UserOp.dbo.License
set IsAssigned = 0,
	fk_adsMfaID = null,
	UpdateUTC = GETDATE(),
	EffectiveUTC = null,
	ExpirationUTC = null,
	fk_OrgID = @resellerID
where ID = @licID;

SELECT *
  FROM [UserOp].[dbo].[License]
  where ID = @licID;