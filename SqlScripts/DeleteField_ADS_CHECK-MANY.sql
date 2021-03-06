USE [agri-datadb]
GO
/****** Object:  StoredProcedure [dbo].[AGR_selectField]    Script Date: 1/10/2019 3:09:40 PM ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO



--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- In the AGR_FieldDetails table, if record has a CropYear of 0 the the fld_cf_fld_id is a UserOp.Field ID.
-- If the CropYear is NOT 0, then the fld_cf_fld_id is a UserOp.GROWNCROP ID.
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

--declare @fld_id INTEGER = 1093152,
--26421, 78659

declare @crop_year INTEGER = 0,
	@agdenFarmCFId bigint = 311153,
	@highfieldFarmCFId bigint = 311156,
	@agdenFarmId int = 240025,
	@highfieldFarmId int = 240028;
declare @fieldIds TABLE (fld_id int);
insert into @fieldIds select fld_id from AGR_FieldDetails where fld_gfm_id in (@agdenFarmId, @highfieldFarmId);
select count(*) as FieldIdsCount from @fieldIds
--SET NOCOUNT ON
--BEGIN TRANSACTION
IF EXISTS (select * FROM ADS_FieldCropDates WHERE fcd_fld_id in (select fld_id from @fieldIds) AND fcd_crop_year = @crop_year)
BEGIN
select count(1) as FieldCropDates FROM ADS_FieldCropDates WHERE fcd_fld_id in (select fld_id from @fieldIds) AND fcd_crop_year = @crop_year
END

IF EXISTS (select * FROM ADS_FieldCropHistory WHERE fch_fld_id in (select fld_id from @fieldIds) AND fch_crop_year = @crop_year)
BEGIN
select count(1) as FieldCropHistory FROM ADS_FieldCropHistory WHERE fch_fld_id in (select fld_id from @fieldIds) AND fch_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldSoilDetails WHERE fsd_fld_id in (select fld_id from @fieldIds) AND fsd_crop_year = @crop_year)
BEGIN
select count(1) as FieldSoilDetails FROM ADS_FieldSoilDetails WHERE fsd_fld_id in (select fld_id from @fieldIds) AND fsd_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldIrrigationDetails WHERE fid_fld_id in (select fld_id from @fieldIds) AND fid_crop_year = @crop_year)
BEGIN
select count(1) as FieldIrrigationDetails FROM ADS_FieldIrrigationDetails WHERE fid_fld_id in (select fld_id from @fieldIds) AND fid_crop_year = @crop_year 
END
IF EXISTS (select * FROM ADS_FieldMoistureProbe WHERE fmp_fld_id in (select fld_id from @fieldIds) and fmp_crop_year = @crop_year)
BEGIN
select count(1) as FieldMoistureProbe FROM ADS_FieldMoistureProbe WHERE fmp_fld_id in (select fld_id from @fieldIds) and fmp_crop_year = @crop_year 
END
IF EXISTS (select * FROM AGR_FieldDetailComments WHERE fcm_fld_id in (select fld_id from @fieldIds) and fcm_crop_year = @crop_year)
BEGIN
select count(1) as FieldDetailComments FROM AGR_FieldDetailComments WHERE fcm_fld_id in (select fld_id from @fieldIds) and fcm_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_ManureSamples WHERE man_fld_id in (select fld_id from @fieldIds) and man_crop_year = @crop_year)
BEGIN
select count(1) as ManureSamples FROM AGR_ManureSamples WHERE man_fld_id in (select fld_id from @fieldIds) and man_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_ManureUsageCoefficiencies WHERE muc_fld_id in (select fld_id from @fieldIds) and muc_crop_year = @crop_year )
BEGIN
select count(1) as ManureUsageCoefficiencies FROM AGR_ManureUsageCoefficiencies WHERE muc_fld_id in (select fld_id from @fieldIds) and muc_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_OtherApplicationActuals WHERE oaa_fld_id in (select fld_id from @fieldIds) and oaa_crop_year = @crop_year)
BEGIN
select count(1) as OtherApplicationActuals FROM AGR_OtherApplicationActuals WHERE oaa_fld_id in (select fld_id from @fieldIds) and oaa_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_OtherApplicationRecommendations WHERE oar_fld_id in (select fld_id from @fieldIds) and oar_crop_year = @crop_year)
BEGIN
select count(1) as OtherApplicationRecommendations FROM AGR_OtherApplicationRecommendations WHERE oar_fld_id in (select fld_id from @fieldIds) and oar_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_SessionAsset where sna_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionAsset FROM ADS_SessionAsset where sna_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM AGR_PesticideApplication WHERE pta_fld_id in (select fld_id from @fieldIds) and pta_crop_year = @crop_year)
BEGIN
select count(1) as PesticideApplication FROM AGR_PesticideApplication WHERE pta_fld_id in (select fld_id from @fieldIds) and pta_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_PesticideApplicationActuals WHERE pta_fld_id in (select fld_id from @fieldIds) AND pta_crop_year = @crop_year)
BEGIN
select count(1) as PesticideApplicationActuals FROM AGR_PesticideApplicationActuals WHERE pta_fld_id in (select fld_id from @fieldIds) AND pta_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_PesticideRecommendations WHERE ptr_fld_id in (select fld_id from @fieldIds) AND ptr_crop_year = @crop_year)
BEGIN
select count(1) as PesticideRecommendations FROM AGR_PesticideRecommendations WHERE ptr_fld_id in (select fld_id from @fieldIds) AND ptr_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_ProductApplicationDetails WHERE pad_fld_id in (select fld_id from @fieldIds) AND pad_crop_year = @crop_year)
BEGIN
select count(1) as ProductApplicationDetails FROM AGR_ProductApplicationDetails WHERE pad_fld_id in (select fld_id from @fieldIds) AND pad_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_ActualApplicationProducts WHERE aap_spa_id IN (SELECT spa_id from AGR_SoilPlacementActuals WHERE spa_fld_id in (select fld_id from @fieldIds) and spa_crop_year = @crop_year) )
BEGIN
select count(1) as ActualApplicationProducts FROM AGR_ActualApplicationProducts WHERE aap_spa_id IN (SELECT spa_id from AGR_SoilPlacementActuals WHERE spa_fld_id in (select fld_id from @fieldIds) and spa_crop_year = @crop_year) 
END

IF EXISTS (select * FROM AGR_SoilPlacementActuals WHERE spa_fld_id in (select fld_id from @fieldIds) and spa_crop_year = @crop_year )
BEGIN
select count(1) as SoilPlacementActuals FROM AGR_SoilPlacementActuals WHERE spa_fld_id in (select fld_id from @fieldIds) and spa_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_SoilPlacementRecProducts WHERE spp_spr_id IN (SELECT spr_id FROM AGR_SoilPlacementRecommendations WHERE spr_fld_id in (select fld_id from @fieldIds) and spr_crop_year = @crop_year))
BEGIN
select count(1) as SoilPlacementRecProducts FROM AGR_SoilPlacementRecProducts WHERE spp_spr_id IN (SELECT spr_id FROM AGR_SoilPlacementRecommendations WHERE spr_fld_id in (select fld_id from @fieldIds) and spr_crop_year = @crop_year)
END

IF EXISTS (select * FROM AGR_SoilPlacementRecommendations WHERE spr_fld_id in (select fld_id from @fieldIds) and spr_crop_year = @crop_year )
BEGIN
select count(1) as SoilPlacementRecommendations FROM AGR_SoilPlacementRecommendations WHERE spr_fld_id in (select fld_id from @fieldIds) and spr_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_SoilRequirementComments WHERE src_fld_id in (select fld_id from @fieldIds) and src_crop_year = @crop_year )
BEGIN
select count(1) as SoilRequirementComments FROM AGR_SoilRequirementComments WHERE src_fld_id in (select fld_id from @fieldIds) and src_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_SoilRequirements WHERE srq_fld_id in (select fld_id from @fieldIds) and srq_crop_year = @crop_year)
BEGIN
select count(1) as SoilRequirementComments FROM AGR_SoilRequirements WHERE srq_fld_id in (select fld_id from @fieldIds) and srq_crop_year = @crop_year
END

IF EXISTS (select *  FROM AGR_FieldHarvestData  WHERE fhd_fld_id in (select fld_id from @fieldIds) and fhd_crop_year = @crop_year )
BEGIN
select count(1) as FieldHarvestData  FROM AGR_FieldHarvestData  WHERE fhd_fld_id in (select fld_id from @fieldIds) and fhd_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_SoilTests WHERE sol_fld_id in (select fld_id from @fieldIds) and sol_crop_year = @crop_year )
BEGIN
select count(1) as SoilTests FROM AGR_SoilTests WHERE sol_fld_id in (select fld_id from @fieldIds) and sol_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_ZoneSeedRate WHERE zsr_zon_id in (SELECT zon_id FROM ADS_FieldZoneDetail JOIN ADS_FieldZone on zon_fzn_id = fzn_id WHERE fzn_fld_id in (select fld_id from @fieldIds) AND fzn_crop_year = @crop_year))
BEGIN
select count(1) as ZoneSeedRate FROM ADS_ZoneSeedRate WHERE zsr_zon_id in (SELECT zon_id FROM ADS_FieldZoneDetail JOIN ADS_FieldZone on zon_fzn_id = fzn_id WHERE fzn_fld_id in (select fld_id from @fieldIds) AND fzn_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_SeedDetails WHERE sed_fld_id in (select fld_id from @fieldIds) and sed_crop_year = @crop_year )
BEGIN
select count(1) as SeedDetails FROM ADS_SeedDetails WHERE sed_fld_id in (select fld_id from @fieldIds) and sed_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_EventFields WHERE evf_fld_id in (select fld_id from @fieldIds) AND evf_crop_year = @crop_year )
BEGIN
select count(1) as EventFields FROM AGR_EventFields WHERE evf_fld_id in (select fld_id from @fieldIds) AND evf_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_OtherExpenses WHERE exp_fld_id in (select fld_id from @fieldIds) AND exp_crop_year = @crop_year 	)
BEGIN
select count(1) as OtherExpenses FROM AGR_OtherExpenses WHERE exp_fld_id in (select fld_id from @fieldIds) AND exp_crop_year = @crop_year 	
END

IF EXISTS (select * FROM ADS_SessionCondition where snc_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionCondition FROM ADS_SessionCondition where snc_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_SessionConditionRestriction where scr_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionConditionRestriction FROM ADS_SessionConditionRestriction where scr_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_SessionHarvest where snh_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionHarvest FROM ADS_SessionHarvest where snh_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_SessionImplement where sni_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionImplement FROM ADS_SessionImplement where sni_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_SessionMaterial where snm_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionMaterial FROM ADS_SessionMaterial where snm_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_SessionOperator where sno_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionOperator FROM ADS_SessionOperator where sno_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_SessionTankMix where snt_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)))
BEGIN
select count(1) as SessionTankMix FROM ADS_SessionTankMix where snt_ssn_id in (select ssn_id FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
END

IF EXISTS (select * FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year))
BEGIN
select count(1) as Session FROM ADS_Session where ssn_tsk_id in (select tsk_id FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year )
BEGIN
select count(1) as SessionTask FROM ADS_SessionTask WHERE tsk_fld_id in (select fld_id from @fieldIds) AND tsk_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_TissueTest WHERE tst_fld_id in (select fld_id from @fieldIds) AND tst_crop_year = @crop_year )
BEGIN
select count(1) as TissueTest FROM AGR_TissueTest WHERE tst_fld_id in (select fld_id from @fieldIds) AND tst_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_NematodeTests WHERE ntt_fld_id in (select fld_id from @fieldIds) AND ntt_crop_year = @crop_year )
BEGIN
select count(1) as NematodeTests FROM AGR_NematodeTests WHERE ntt_fld_id in (select fld_id from @fieldIds) AND ntt_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldBenchmarkLocation WHERE ben_fld_id in (select fld_id from @fieldIds) AND ben_crop_year = @crop_year )
BEGIN
select count(1) as FieldBenchmarkLocation FROM ADS_FieldBenchmarkLocation WHERE ben_fld_id in (select fld_id from @fieldIds) AND ben_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_GeoAttribute where gav_gly_id in (select gly_id from ADS_GeoFileLayers WHERE gly_fld_id in (select fld_id from @fieldIds) AND gly_crop_year = @crop_year))
BEGIN
select count(1) as GeoAttribute FROM ADS_GeoAttribute where gav_gly_id in (select gly_id from ADS_GeoFileLayers WHERE gly_fld_id in (select fld_id from @fieldIds) AND gly_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_GeoFileLayers WHERE gly_fld_id in (select fld_id from @fieldIds) AND gly_crop_year = @crop_year )
BEGIN
select gly_fld_id as GeoFileLayers, * FROM ADS_GeoFileLayers WHERE gly_fld_id in (select fld_id from @fieldIds) AND gly_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldZoneDetail WHERE zon_fzn_id in (SELECT fzn_id FROM ADS_FieldZone WHERE fzn_fld_id in (select fld_id from @fieldIds) AND fzn_crop_year = @crop_year))
BEGIN
select count(1) as FieldZoneDetail FROM ADS_FieldZoneDetail WHERE zon_fzn_id in (SELECT fzn_id FROM ADS_FieldZone WHERE fzn_fld_id in (select fld_id from @fieldIds) AND fzn_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_FieldZone WHERE fzn_fld_id in (select fld_id from @fieldIds) AND fzn_crop_year = @crop_year 		)
BEGIN
select count(1) as FieldZone FROM ADS_FieldZone WHERE fzn_fld_id in (select fld_id from @fieldIds) AND fzn_crop_year = @crop_year 		
END

IF EXISTS (select * FROM ADS_MeterReadingFields WHERE mrf_fld_id in (select fld_id from @fieldIds) AND mrf_crop_year = @crop_year )
BEGIN
select count(1) as MeterReadingFields FROM ADS_MeterReadingFields WHERE mrf_fld_id in (select fld_id from @fieldIds) AND mrf_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_ProcessorExport WHERE pex_fld_id in (select fld_id from @fieldIds) AND pex_crop_year = @crop_year )
BEGIN
select count(1) as ProcessorExport FROM ADS_ProcessorExport WHERE pex_fld_id in (select fld_id from @fieldIds) AND pex_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_FeedTest WHERE fdt_fld_id in (select fld_id from @fieldIds) AND fdt_crop_year = @crop_year )
BEGIN
select count(1) as FeedTest FROM AGR_FeedTest WHERE fdt_fld_id in (select fld_id from @fieldIds) AND fdt_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_FieldIrrigation WHERE irr_fld_id in (select fld_id from @fieldIds) AND irr_crop_year = @crop_year )
BEGIN
select count(1) as FieldIrrigation FROM AGR_FieldIrrigation WHERE irr_fld_id in (select fld_id from @fieldIds) AND irr_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_LeaseParcelLocation WHERE lpl_fdl_id in (SELECT fdl_id FROM AGR_FieldLocation where fdl_fld_id in (select fld_id from @fieldIds) AND fdl_crop_year = @crop_year))
BEGIN
select count(1) as LeaseParcelLocation FROM ADS_LeaseParcelLocation WHERE lpl_fdl_id in (SELECT fdl_id FROM AGR_FieldLocation where fdl_fld_id in (select fld_id from @fieldIds) AND fdl_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_FieldAggregation WHERE fia_fld_id in (select fld_id from @fieldIds) AND fia_crop_year = @crop_year 	)
BEGIN
select count(1) as FieldAggregation FROM ADS_FieldAggregation WHERE fia_fld_id in (select fld_id from @fieldIds) AND fia_crop_year = @crop_year 	
END

IF EXISTS (select * FROM ADS_FieldLocationAggregation WHERE fla_fdl_id in (SELECT fdl_id FROM AGR_FieldLocation where fdl_fld_id in (select fld_id from @fieldIds) AND fdl_crop_year = @crop_year))
BEGIN
select count(1) as FieldLocationAggregation FROM ADS_FieldLocationAggregation WHERE fla_fdl_id in (SELECT fdl_id FROM AGR_FieldLocation where fdl_fld_id in (select fld_id from @fieldIds) AND fdl_crop_year = @crop_year)
END

IF EXISTS (select * FROM AGR_FieldLocation WHERE fdl_fld_id in (select fld_id from @fieldIds) AND fdl_crop_year = @crop_year 	)
BEGIN
select count(1) as FieldLocation FROM AGR_FieldLocation WHERE fdl_fld_id in (select fld_id from @fieldIds) AND fdl_crop_year = @crop_year 	
END

IF EXISTS (select * FROM AGR_FieldYieldData WHERE fyd_fld_id in (select fld_id from @fieldIds) AND fyd_crop_year = @crop_year )
BEGIN
select count(1) as FieldYieldData FROM AGR_FieldYieldData WHERE fyd_fld_id in (select fld_id from @fieldIds) AND fyd_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_GrowthStageNotification WHERE gsn_fld_id in (select fld_id from @fieldIds) AND gsn_crop_year = @crop_year )
BEGIN
select count(1) as GrowthStageNotification FROM AGR_GrowthStageNotification WHERE gsn_fld_id in (select fld_id from @fieldIds) AND gsn_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_ShapeFileLayers WHERE sfl_fld_id in (select fld_id from @fieldIds) AND sfl_crop_year = @crop_year )
BEGIN
select count(1) as ShapeFileLayers FROM AGR_ShapeFileLayers WHERE sfl_fld_id in (select fld_id from @fieldIds) AND sfl_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_FieldProgramsBilled WHERE fpb_fld_id in (select fld_id from @fieldIds) AND fpb_crop_year = @crop_year )
BEGIN
select count(1) as FieldProgramsBilled FROM AGR_FieldProgramsBilled WHERE fpb_fld_id in (select fld_id from @fieldIds) AND fpb_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldPath WHERE fpt_fld_id in (select fld_id from @fieldIds) AND fpt_crop_year = @crop_year)
BEGIN
select count(1) as FieldPath FROM ADS_FieldPath WHERE fpt_fld_id in (select fld_id from @fieldIds) AND fpt_crop_year = @crop_year
END

IF EXISTS (select * FROM ADS_FarmFiles WHERE fil_fld_id in (select fld_id from @fieldIds) AND fil_crop_year = @crop_year )
BEGIN
select count(1) as FarmFiles FROM ADS_FarmFiles WHERE fil_fld_id in (select fld_id from @fieldIds) AND fil_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_FieldReportDisease WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)	)
BEGIN
select count(1) as FieldReportDisease FROM AGR_FieldReportDisease WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)	
END

IF EXISTS (select * FROM AGR_FieldReportInsects WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)		)
BEGIN
select count(1) as FieldReportInsects FROM AGR_FieldReportInsects WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)		
END

IF EXISTS (select * FROM AGR_FieldReportNematodes WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportNematodes FROM AGR_FieldReportNematodes WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM AGR_FieldReportNutrients WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportNutrients FROM AGR_FieldReportNutrients WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM AGR_FieldReportWeeds WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportWeeds FROM AGR_FieldReportWeeds WHERE frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_FieldReportPath WHERE fph_frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportPath FROM ADS_FieldReportPath WHERE fph_frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_FieldReportSoil WHERE frs_frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportSoil FROM ADS_FieldReportSoil WHERE frs_frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM AGR_ProductRecommendationFields WHERE prf_fld_id in (select fld_id from @fieldIds) and prf_crop_year = @crop_year)
BEGIN
select count(1) as ProductRecommendationFields FROM AGR_ProductRecommendationFields WHERE prf_fld_id in (select fld_id from @fieldIds) and prf_crop_year = @crop_year
END

IF EXISTS (select * FROM AGR_PesticideApplication WHERE pta_frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as PesticideApplication FROM AGR_PesticideApplication WHERE pta_frp_id IN (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_FieldReportAction WHERE fra_frp_id in (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportAction FROM ADS_FieldReportAction WHERE fra_frp_id in (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM ADS_FieldReportQuestionAnswer WHERE fqa_frp_id in (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year))
BEGIN
select count(1) as FieldReportQuestionAnswer FROM ADS_FieldReportQuestionAnswer WHERE fqa_frp_id in (SELECT frp_id FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year)
END

IF EXISTS (select * FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year )
BEGIN
select count(1) as FieldReport FROM AGR_FieldReport WHERE frp_fld_id in (select fld_id from @fieldIds) AND frp_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldCropPlan WHERE fpl_fld_id in (select fld_id from @fieldIds) and fpl_crop_year = @crop_year )
BEGIN
select count(1) as FieldCropPlan FROM ADS_FieldCropPlan WHERE fpl_fld_id in (select fld_id from @fieldIds) and fpl_crop_year = @crop_year 
END

IF EXISTS (select * FROM AGR_TissueSampleData WHERE tis_fld_id in (select fld_id from @fieldIds) AND tis_crop_year = @crop_year )
BEGIN
select count(1) as TissueSampleData FROM AGR_TissueSampleData WHERE tis_fld_id in (select fld_id from @fieldIds) AND tis_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FarmFertilizerStrategyField WHERE fsf_fld_id in (select fld_id from @fieldIds) AND fsf_crop_year = @crop_year )
BEGIN
select count(1) as FarmFertilizerStrategyField FROM ADS_FarmFertilizerStrategyField WHERE fsf_fld_id in (select fld_id from @fieldIds) AND fsf_crop_year = @crop_year 
END

IF EXISTS (select * FROM ADS_FieldWorkflowAudit WHERE wfl_fld_id in (select fld_id from @fieldIds) and wfl_crop_year = @crop_year)
BEGIN
select count(1) as FieldWorkflowAudit FROM ADS_FieldWorkflowAudit WHERE wfl_fld_id in (select fld_id from @fieldIds) and wfl_crop_year = @crop_year
END

IF EXISTS (select * FROM ADS_FieldAttribute WHERE fat_fld_id in (select fld_id from @fieldIds) AND fat_crop_year = @crop_year)
BEGIN
select count(1) as FieldAttribute FROM ADS_FieldAttribute WHERE fat_fld_id in (select fld_id from @fieldIds) AND fat_crop_year = @crop_year
END

IF EXISTS (select * FROM ADS_FieldGeoFeature WHERE fgf_fld_id in (select fld_id from @fieldIds) AND fgf_crop_year = @crop_year)
BEGIN
select count(1) as FieldGeoFeature FROM ADS_FieldGeoFeature WHERE fgf_fld_id in (select fld_id from @fieldIds) AND fgf_crop_year = @crop_year
END

IF EXISTS (select * FROM ADS_FieldAudit WHERE fad_fld_id in (select fld_id from @fieldIds) AND fad_crop_year = @crop_year)
BEGIN
select count(1) as FieldAudit FROM ADS_FieldAudit WHERE fad_fld_id in (select fld_id from @fieldIds) AND fad_crop_year = @crop_year
END

IF EXISTS (select * FROM ADS_PlantScheduleDetail WHERE psd_fld_id in (select fld_id from @fieldIds) and psd_crop_year = @crop_year)
BEGIN
select count(1) as PlantScheduleDetail FROM ADS_PlantScheduleDetail WHERE psd_fld_id in (select fld_id from @fieldIds) and psd_crop_year = @crop_year
END

IF EXISTS (select * FROM AGR_FieldDetails WHERE fld_id in (select fld_id from @fieldIds) and fld_crop_year = @crop_year)
BEGIN
select * FROM AGR_FieldDetails WHERE fld_id in (select fld_id from @fieldIds) and fld_crop_year = @crop_year 
END
