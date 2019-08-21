use [agri-datadb]
begin tran a
declare @unassigned int = 2, @locked int = 2

-- before
select prd_id, prd_nutrient_type from AGR_FertilizerProducts 
where prd_id in (169149, 186475, 186658, 198518, 199653)

update AGR_FertilizerProducts set prd_nutrient_type = 'P' where prd_id in (169149, 186475, 186658, 198518, 199653) 
select @@ROWCOUNT

-- after
select prd_id, prd_nutrient_type from AGR_FertilizerProducts 
where prd_id in (169149, 186475, 186658, 198518, 199653)

commit tran a
--rollback tran a