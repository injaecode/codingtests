# 인기있는 아이스크림
SELECT flavor 
from first_half 
order by total_order desc, shipment_id;

# 과일로 만든 아이스크림 고르기
SELECT flavor 
from first_half 
where total_order>=3000 
	and flavor in 
		(select flavor 
		from icecream_info 
		where ingredient_type='fruit_based') 
order by total_order desc;

# 성분으로 구분한 아이스크림 총 주문량
SELECT I.ingredient_type, sum(F.total_order) as total_order
from first_half F join icecream_info I
on F.flavor = I.flavor
group by I.ingredient_type;