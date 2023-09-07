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


#5월 식품들의 총매출 조회하기
SELECT P.product_id, P.product_name, sum(O.amount)*P.price total_sales
from food_product P join food_order O
on P.product_id = O.product_id
where O.produce_date between '2022-05-01' and '2022-05-31'
group by O.product_id
order by total_sales desc, O.product_id;

# 조건별로 분류하여 주문상태 출력하기
SELECT order_id, product_id, date_format(out_date,'%Y-%m-%d') out_date, 
    case when out_date <= '2022-05-01' then '출고완료' 
     when out_date > '2022-05-01' then '출고대기'
     else '출고미정' end '출고여부'
from food_order
order by order_id;