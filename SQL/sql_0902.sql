# 모든 레코드 조회하기
SELECT * 
from animal_ins 
order by animal_id;

# 동물의 아이디와 이름
SELECT animal_id, name 
from animal_ins 
order by animal_id;

# 역순 정렬하기
SELECT name, datetime 
from animal_ins 
order by animal_id desc;

# 아픈 동물 찾기
SELECT animal_id, name 
from animal_ins 
where intake_condition = 'sick';

# 어린 동물 찾기
SELECT animal_id, name 
from animal_ins 
where intake_condition != 'aged';

# 강원도에 위치한 생산공장 목록 출력하기
SELECT factory_id, factory_name, address 
from food_factory 
where address like "강원%" 
order by factory_id;

# 조건에 부합하는 중고거래 댓글 조회하기
SELECT A.title, A.board_id, 
	B.reply_id, B.writer_id, B.contents, 
    date_format(B.created_date, '%Y-%m-%d') as created_date 
from used_goods_board A join used_goods_reply B 
on a.board_id = b.board_id 
where a.created_date 
between '2022-10-01' and '2022-10-31' 
order by B.created_date, A.title;

#조건에 맞는 도서 리스트 출력하기
SELECT book_id, date_format(published_date,'%Y-%m-%d') as published_date 
from book 
group by category 
having category = '인문' 
order by book_id desc;

# 인기있는 아이스크림
SELECT flavor 
from first_half 
order by total_order desc, shipment_id;

# 평균 일일 대여 요금 구하기
SELECT round(avg(daily_fee)) as average_fee 
from car_rental_company_car 
group by car_type 
having car_type='SUV';

# 12세 이하인 여자 환자 목록 출력하기
SELECT pt_name, pt_no, gend_cd, age, 
	case when tlno is null then 'NONE' else tlno end as tlno 
from patient where age<=12 and gend_cd='W' 
order by age desc, pt_name;