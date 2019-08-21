begin tran a
declare @bndId_0 int = 1738279;
declare @bndId_3019 int = 1738280; 

declare @bnd_0_corrected Geography = (SELECT bnd_geography.ReorientObject() FROM [ads-spatial].[dbo].[GEO_Boundary] where bnd_id = @bndId_0);
declare @bnd_3019_corrected Geography = (SELECT bnd_geography.ReorientObject() FROM [ads-spatial].[dbo].[GEO_Boundary] where bnd_id = @bndId_3019);

-- before
--SELECT bnd_geography FROM [ads-spatial].[dbo].[GEO_Boundary] where bnd_id in (@bndId_0, @bndId_3019);

UPDATE [ads-spatial].[dbo].[GEO_Boundary]
SET bnd_geography = @bnd_0_corrected
WHERE bnd_id = @bndId_0;
SELECT @@ROWCOUNT as BND_CHECK;

UPDATE [ads-spatial].[dbo].[GEO_Boundary]
SET bnd_geography = @bnd_3019_corrected
WHERE bnd_id = @bndId_3019;
SELECT @@ROWCOUNT as BND_CHECK;

-- after
SELECT bnd_geography FROM [ads-spatial].[dbo].[GEO_Boundary] where bnd_id in (@bndId_0, @bndId_3019);

--commit tran a
rollback tran a