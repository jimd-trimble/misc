begin tran a
declare @bndId_0 int = 1738279;
declare @bndId_3019 int = 1738280; 

-- Query to find valid geometries with EnvelopeAngle = 180:
--SELECT chck.bnd_geography.EnvelopeAngle() as bnd_angle, chck.bnd_id
----FROM [ads-spatial].[dbo].[GEO_Boundary] 
--	FROM (SELECT bnd_geography.STIsValid() as bnd_valid, bnd_id, bnd_geography FROM [ads-spatial].[dbo].[GEO_Boundary] where bnd_frm_id = @frmId) chck
--where chck.bnd_valid = 1
---- in (@bndId_0, @bndId_3019);
--order by bnd_angle desc

select count(*) from [ads-spatial].[dbo].[GEO_Boundary]
where bnd_id in (1729998, 1734565, 1734568, 1734561, 1735350, 1740598, 1740671, 1740672, 1742411, 1742413, 1750008, 1750009, 1750039, 1750040, 1746813, 1746815, 1746811, 1752700, 1763150, 1763151);

update u
set u.bnd_geography = s.fixed_geog
from [ads-spatial].[dbo].[GEO_Boundary] u
    inner join (select bnd_id, bnd_geography.ReorientObject() as fixed_geog
		from [ads-spatial].[dbo].[GEO_Boundary]
		where bnd_id in (1729998, 1734565, 1734568, 1734561, 1735350, 1740598, 1740671, 1740672, 1742411, 1742413, 1750008, 1750009, 1750039, 1750040, 1746813, 1746815, 1746811, 1752700, 1763150, 1763151)) s on
    u.bnd_id = s.bnd_id;
SELECT @@ROWCOUNT as BND_CHECK;

-- after
--SELECT bnd_geography FROM [ads-spatial].[dbo].[GEO_Boundary] where bnd_id in (@bndId_0, @bndId_3019);

commit tran a
--rollback tran a