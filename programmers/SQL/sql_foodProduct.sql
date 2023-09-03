# 경기도에 위치한 식품창고 목록 출력하기
SELECT warehouse_id, warehouse_name, address, 
	case when freezer_yn is null then 'N' else freezer_yn end as freezer_yn 
from food_warehouse 
where address like '경기도%' 
order by warehouse_id;

# 강원도에 위치한 생산공장 목록 출력하기
SELECT factory_id, factory_name, address 
from food_factory 
where address like "강원%" 
order by factory_id;

# 가격이 제일 비싼 식품의 정보 출력하기
SELECT product_id, product_name, product_cd, category, price 
from food_product 
where price = (select max(price) 
			from food_product);
