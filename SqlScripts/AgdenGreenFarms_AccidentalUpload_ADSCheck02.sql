use [agri-datadb]

-- All ADS fields related to GrowerFarms 240025, 240028 are invalid, pointing to the incorrect org and all retired fields.
--(1319216), (1319217)
select * from AGR_GrowerFarm
where gfm_id in (240025, 240028)

select fld_id from AGR_FieldDetails
where fld_gfm_id in (240025, 240028)

select * from ADS_FarmContracts
where fcn_gfm_id in (240025, 240028)


select * from AGR_FieldDetails where fld_id in (1319216, 1319217)

select f.id as FieldID, f.Name as FieldName, f.IsDeleted, f.IsRetired, frm.ID as FarmID, frm.Name as FarmName, c.ID as ClientID, c.Name as ClientName, o.ID as OrgID, o.Name as OrgName from UserOp.dbo.Field f
join UserOp.dbo.Farm frm on f.fk_FarmID = frm.ID
join UserOp.dbo.Client c on frm.fk_ClientID = c.ID
join UserOp.dbo.Organization o on f.fk_OrgID = o.ID
where f.id in (
	select fld_cf_fld_id as FieldID from AGR_FieldDetails
	where fld_gfm_id in (240025, 240028)
	and fld_crop_year = 0
)

select fld_id, fld_cf_fld_id as GrownCropID from AGR_FieldDetails
where fld_gfm_id in (240025, 240028)
--or fld_id in (1319216, 1319217)
and fld_crop_year <> 0

select distinct fld_gfm_id from AGR_FieldDetails
where fld_id in (1319198, 1319199, 1319200, 1319201, 1319197, 1319196, 1319195, 1319194, 1319193, 1319192, 1319191, 1319190, 1319189, 1319188, 1319187, 1319186, 1319185, 1319184, 1319182, 1319181, 1319180, 1319179, 1319178, 1319176, 1319175, 1319174, 1319173, 1319172, 1319206, 1319205, 1319216, 1319217)

-- Nothing in ads-spatial!
declare @crop_year INTEGER = 0,
	@agdenFarmCFId bigint = 311153,
	@highfieldFarmCFId bigint = 311156,
	@agdenFarmId int = 240025,
	@highfieldFarmId int = 240028;
declare @fieldIds TABLE (fld_id int);
insert into @fieldIds select fld_id from [agri-datadb].dbo.AGR_FieldDetails where fld_gfm_id in (@agdenFarmId, @highfieldFarmId);

select count(*) from [ads-spatial].dbo.GEO_Boundary gdb
--join @fieldIds f on gdb.bnd_fld_id = f.fld_id
where bnd_fld_id in (select fld_id from @fieldIds)

select count(*) from [ads-spatial].dbo.GEO_Boundary gdb
--join @fieldIds f on gdb.bnd_fld_id = f.fld_id
where bnd_frm_id in (@agdenFarmId, @highfieldFarmId)

select count(*) from [ads-spatial].dbo.GEO_ManagementZone gdb
--join @fieldIds f on gdb.bnd_fld_id = f.fld_id
where mzn_fld_id in (select fld_id from @fieldIds)

select count(*) from [ads-spatial].dbo.GEO_ManagementZone gdb
--join @fieldIds f on gdb.bnd_fld_id = f.fld_id
where mzn_frm_id in (@agdenFarmId, @highfieldFarmId)