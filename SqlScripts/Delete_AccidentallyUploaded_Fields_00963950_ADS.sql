-----------------------------------------------------
-- SalesForce case 00963950.
-- In this case we need to fully DELETE the fields, client and farms.
-- The fields were accidentally uploaded via USB by an adivisor to the wrong Org.
-- Therefore a full DELETE is preferalbe over simply setting IsDelete = 1.
-- Fields to remove: All fields associated with the Agden Green Farm (311153) and Highfield Farm (311156).
-- The fields have associated UserOp records in GrownCrop, Task, Session, SessionHarvest, SessionAsset (addressed separately).
-- The fields are currently retired.
-- There are related AGR_FieldDetails and AGR_GrowerFarm records, but no other table in agri-datadb is affected.
-- No tables in ads-spatial are affected.
-- There are records across several tables in DataSync (addressed separately).
-----------------------------------------------------

USE [agri-datadb]
BEGIN TRAN a

-- CHECKS
SELECT * FROM AGR_FieldDetails
WHERE fld_id in (1319172, 1319173, 1319174, 1319175, 1319176, 1319178, 1319179, 1319180, 1319181, 1319182, 1319184, 1319185, 1319186, 1319187, 1319188, 1319189, 1319190, 1319191, 1319192, 1319193, 1319194, 1319195, 1319196, 1319197, 1319198, 1319199, 1319200, 1319201, 1319206, 1319172, 1319173, 1319174, 1319175, 1319176, 1319178, 1319179, 1319180, 1319181, 1319182, 1319184, 1319185, 1319186, 1319187, 1319188, 1319189, 1319190, 1319191, 1319192, 1319193, 1319194, 1319195, 1319196, 1319197, 1319198, 1319199, 1319200, 1319201, 1319216, 1319217, 1319205)

SELECT * FROM AGR_GrowerFarm
WHERE gfm_id in (240025, 240028)

-- DELETE
DELETE FROM AGR_FieldDetails
WHERE fld_id in (1319172, 1319173, 1319174, 1319175, 1319176, 1319178, 1319179, 1319180, 1319181, 1319182, 1319184, 1319185, 1319186, 1319187, 1319188, 1319189, 1319190, 1319191, 1319192, 1319193, 1319194, 1319195, 1319196, 1319197, 1319198, 1319199, 1319200, 1319201, 1319206, 1319172, 1319173, 1319174, 1319175, 1319176, 1319178, 1319179, 1319180, 1319181, 1319182, 1319184, 1319185, 1319186, 1319187, 1319188, 1319189, 1319190, 1319191, 1319192, 1319193, 1319194, 1319195, 1319196, 1319197, 1319198, 1319199, 1319200, 1319201, 1319216, 1319217, 1319205)

DELETE FROM AGR_GrowerFarm
WHERE gfm_id in (240025, 240028)

-- CHECKS
SELECT * FROM AGR_FieldDetails
WHERE fld_id in (1319172, 1319173, 1319174, 1319175, 1319176, 1319178, 1319179, 1319180, 1319181, 1319182, 1319184, 1319185, 1319186, 1319187, 1319188, 1319189, 1319190, 1319191, 1319192, 1319193, 1319194, 1319195, 1319196, 1319197, 1319198, 1319199, 1319200, 1319201, 1319206, 1319172, 1319173, 1319174, 1319175, 1319176, 1319178, 1319179, 1319180, 1319181, 1319182, 1319184, 1319185, 1319186, 1319187, 1319188, 1319189, 1319190, 1319191, 1319192, 1319193, 1319194, 1319195, 1319196, 1319197, 1319198, 1319199, 1319200, 1319201, 1319216, 1319217, 1319205)

SELECT * FROM AGR_GrowerFarm
WHERE gfm_id in (240025, 240028)

--COMMIT TRAN a
ROLLBACK TRAN a