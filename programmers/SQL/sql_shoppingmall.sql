#나이 정보가 없는 회원 수 구하기
SELECT count(user_id) as users 
from user_info 
where age is null;

# 조건에 맞는 회원수 구하기
SELECT count(user_id) 
from user_info 
where age between 20 and 29 
	and joined like '2021%';
    
# 가장 비싼 상품 구하기
SELECT max(price) as max_price 
from product;

#카테고리 별 상품 개수 구하기
SELECT substr(product_code, 1, 2) category, 
    count(product_code) products 
from product 
group by category 
order by product_code;

# 가격대 별 상품 개수 구하기
SELECT case when price < 10000 then '0'
            when price < 20000 then '10000'
            when price < 30000 then '20000'
            when price < 40000 then '30000'
            when price < 50000 then '40000'
            when price < 60000 then '50000'
            when price < 70000 then '60000'
            when price < 80000 then '70000'
            when price < 90000 then '80000'
            else  '90000' end price_group, count(product_id) products
from product
group by price_group
order by price_group