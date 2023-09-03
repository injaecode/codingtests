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

# 흉부외과 또는 일반외과 의사 목록 출력하기
SELECT dr_name, dr_id, mcdp_cd, date_format(hire_ymd, '%Y-%m-%d') as hire_ymd 
from doctor 
where mcdp_cd in ('GS', 'CS') 
order by hire_ymd desc, dr_name;



# 12세 이하인 여자 환자 목록 출력하기
SELECT pt_name, pt_no, gend_cd, age, 
	case when tlno is null then 'NONE' else tlno end as tlno 
from patient where age<=12 and gend_cd='W' 
order by age desc, pt_name;

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