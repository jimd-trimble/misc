
use [DataSync]

declare @cfAppId int = 1,
	@adsAppId int = 2;
declare @fieldIds TABLE (ID bigint);
insert into @fieldIds values (1135546), (1135544), (1135543), (1135542), (1135541), (1135540), (1135547), (1135548), (1135549), (1135550), (1135552), (1135553), (1135554), (1135555), (1135556), (1135557), (1135558), (1135559), (1135560), (1135561), (1135562), (1135563), (1135564), (1135565), (1135574), (1135573), (1135569), (1135568), (1135567), (1135566);
--select distinct fk_FieldID from ApplicationField af
--where af.fk_ApplicationID = 2
--and ExternalID in (select fld_id from [agri-datadb].dbo.AGR_FieldDetails where fld_gfm_id in (240025, 240028))


-- (1135546, 1135544, 1135543, 1135542, 1135541, 1135540, 1135547, 1135548, 1135549, 1135550, 1135552, 1135553, 1135554, 1135555, 1135556, 1135557, 1135558, 1135559, 1135560, 1135561, 1135562, 1135563, 1135564, 1135565, 1135574, 1135573, 1135569, 1135568, 1135567, 1135566)


select distinct fk_FarmID from Field f
join @fieldIds i on f.ID = i.ID
--where f.id in (1135546, 1135544, 1135543, 1135542, 1135541, 1135540, 1135547, 1135548, 1135549, 1135550, 1135552, 1135553, 1135554, 1135555, 1135556, 1135557, 1135558, 1135559, 1135560, 1135561, 1135562, 1135563, 1135564, 1135565, 1135574, 1135573, 1135569, 1135568, 1135567, 1135566)

select * from GrownCrop gc
----join @fieldIds i on gc.fk_FieldID = i.ID
where gc.id in (1543125, 1543126, 1543127, 1543128, 1543129, 1543130, 1543131, 1543132, 1543133, 1543134, 1543135, 1543136, 1543137, 1543138, 1543139, 1543140, 1543141, 1543142, 1543143, 1543144, 1543145, 1543146, 1543147, 1543148, 1543149, 1543150, 1543151, 1543152, 1543153, 1543154, 1543157, 1543158, 1543159, 1543161, 1543162, 1543163, 1543164, 1543165, 1543166, 1543167, 1543168, 1543169, 1543172, 1543173, 1543174, 1543175, 1543176, 1543177)
----where gc.fk_FieldID in (1135546, 1135544, 1135543, 1135542, 1135541, 1135540, 1135547, 1135548, 1135549, 1135550, 1135552, 1135553, 1135554, 1135555, 1135556, 1135557, 1135558, 1135559, 1135560, 1135561, 1135562, 1135563, 1135564, 1135565, 1135574, 1135573, 1135569, 1135568, 1135567, 1135566)

select * from Farm 
--where fk_GroupID = 85375
where ID in (238132, 238135)


select * from ApplicationGrownCrop
where fk_GrownCropID in (1543125, 1543126, 1543127, 1543128, 1543129, 1543130, 1543131, 1543132, 1543133, 1543134, 1543135, 1543136, 1543137, 1543138, 1543139, 1543140, 1543141, 1543142, 1543143, 1543144, 1543145, 1543146, 1543147, 1543148, 1543149, 1543150, 1543151, 1543152, 1543153, 1543154, 1543157, 1543158, 1543159, 1543161, 1543162, 1543163, 1543164, 1543165, 1543166, 1543167, 1543168, 1543169, 1543172, 1543173, 1543174, 1543175, 1543176, 1543177)
-- (3069408, 3069416, 3069424, 3069432, 3069440, 3069448, 3069456, 3069409, 3069417, 3069425, 3069464, 3069478, 3069486, 3069494, 3069506, 3069433, 3069441, 3069449, 3069457, 3069465, 3069479, 3069487, 3069495, 3069507, 3069406, 3069414, 3069422, 3069430, 3069438, 3069446, 3069454, 3069407, 3069415, 3069423, 3069462, 3069474, 3069484, 3069492, 3069504, 3069431, 3069439, 3069447, 3069455, 3069463, 3069475, 3069485, 3069493, 3069505, 3069410, 3069418, 3069426, 3069434, 3069442, 3069450, 3069458, 3069411, 3069419, 3069427, 3069470, 3069480, 3069488, 3069500, 3069508, 3069435, 3069443, 3069451, 3069459, 3069471, 3069481, 3069489, 3069501, 3069509, 3069412, 3069420, 3069428, 3069436, 3069444, 3069452, 3069460, 3069413, 3069421, 3069429, 3069472, 3069482, 3069490, 3069502, 3069510, 3069437, 3069445, 3069453, 3069461, 3069473, 3069483, 3069491, 3069503, 3069511)

select * from ApplicationField
where fk_FieldID in (select ID from @fieldIds)
--(2267219, 2267220, 2267221, 2267222, 2267223, 2267224, 2267225, 2267226, 2267227, 2267228, 2267231, 2267232, 2267233, 2267234, 2267235, 2267236, 2267237, 2267238, 2267239, 2267240, 2267243, 2267244, 2267245, 2267246, 2267247, 2267248, 2267249, 2267250, 2267251, 2267252, 2267253, 2267254, 2267255, 2267256, 2267257, 2267258, 2267259, 2267260, 2267261, 2267262, 2267263, 2267264, 2267265, 2267266, 2267267, 2267268, 2267269, 2267270, 2267271, 2267272, 2267273, 2267274, 2267275, 2267276, 2267277, 2267278, 2267285, 2267286, 2267287, 2267288)

select * from ApplicationFarm
where fk_FarmID in (238132, 238135)
--(475960, 475966, 475961, 475967)

select count(*) as SampleSetCount from SampleSet
where fk_FieldID in (select ID from @fieldIds)

select count(*) as TargetSetCount from TargetSet
where fk_FieldID in (select ID from @fieldIds)

select count(*) as ZoneSetCount from ZoneSet
where fk_FieldID in (select ID from @fieldIds)

--select * from Client
--where ID = 1890847

-- DO NOT DELETE GROUP
--select * from [Group] where ID = 85375
--select * from GroupMembershipType