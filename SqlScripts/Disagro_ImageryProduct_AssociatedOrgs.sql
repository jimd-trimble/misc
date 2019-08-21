use [agri-datadb]

select distinct o.ID from UserOp.dbo.Organization o
where o.ID in (
	select distinct fm.frm_cf_org_id from AGR_FarmMaster fm
	join ADS_Company c on fm.frm_cmp_id = c.cmp_id
	where c.cmp_cgp_id = 146
	and fm.frm_active_status = 1
)
and o.IsDeleted = 0



