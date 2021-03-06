/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT fcn_disabled, fcn_operator_id, fcn_display_username, fcn_fname, fcn_is_operator, fcn_email, fcn_cell_phone, fcn_display_pin, fcn_unit_cost, fcn_external_guid, fcn_update_utc
--  FROM [agri-datadb].[dbo].[AGR_FarmContacts]
--  where fcn_operator_id = 24058

select top 100 fex.*, fep.fep_pst_id as PesticideID
FROM [agri-datadb].[dbo].[ADS_FarmExpense] fex
inner join [agri-datadb].[dbo].[AGR_FarmMaster] frmMstr on fex.fex_frm_id = frmMstr.frm_id,
[agri-datadb].[dbo].[ADS_FarmExpensePesticide] fep
where fep.fep_pst_id is not null
and frmMstr.frm_cf_org_id = 70174
and fep.fep_pst_id = 89450

select * from [UserOp].[dbo].[Material] m
where m.ads_Pesticides_ID = 3570
and m.fk_OrgID = 70174

select * from [UserOp].[dbo].[Material] m
where m.fk_OrgID = 70174
--where m.ID = 143869
and (
	m.ads_CropVariety_ID is not null or
	m.ads_FertilizerProducts_ID is not null or
	m.ads_Pesticides_ID is not null) 

select pst.pst_pst_id_parent,* from [agri-datadb].[dbo].[AGR_Pesticides] pst
where pst.pst_id = 82100

select top 100 * from [agri-datadb].[dbo].[AGR_PesticideApplication] pta
inner join [agri-datadb].[dbo].[AGR_FarmMaster] frm on pta.pta_frm_id = frm.frm_id
inner join [agri-datadb].[dbo].[AGR_FieldDetails] fld on pta.pta_fld_id = fld.fld_id
inner join [agri-datadb].[dbo].[AGR_ProductApplicationDetails] pad on fld.fld_id = pad.pad_fld_id
where frm.frm_cf_org_id = 70174
and pta.pta_crop_year = 2018
and pta.pta_type = 'A'
and pta.pta_pst_id = 82100


SELECT * FROM [agri-datadb].dbo.ADS_FarmExpense
INNER JOIN [agri-datadb].dbo.ADS_FarmExpensePesticide ON  fep_fex_id=fex_id
INNER JOIN [agri-datadb].dbo.AGR_Pesticides ON fep_pst_id = pst_id
WHERE pst_name = 'Varro' AND fex_frm_id = 20266

SELECT * FROM [agri-datadb].dbo.AGR_PesticideApplication
INNER JOIN [agri-datadb].dbo.AGR_Pesticides ON pta_pst_id = pst_id
WHERE pta_frm_id = 20266 AND pta_crop_year = 2018 AND pta_type = 'A' AND pst_name = 'Varro'

