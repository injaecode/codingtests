# 특정 옵션이 포함된 자동차 리스트 구하기
SELECT * 
from car_rental_company_car 
where options like '%네비게이션%' 
order by car_id desc;

# 평균 일일 대여 요금 구하기
SELECT round(avg(daily_fee)) as average_fee 
from car_rental_company_car 
group by car_type 
having car_type='SUV';