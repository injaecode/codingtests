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