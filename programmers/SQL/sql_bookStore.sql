#조건에 맞는 도서 리스트 출력하기
SELECT book_id, date_format(published_date,'%Y-%m-%d') as published_date 
from book 
group by category 
having category = '인문' 
order by book_id desc;

# 조건에 맞는 도서와 저자 리스트 출력하기
SELECT B.book_id, A.author_name, 
date_format(B.published_date, '%Y-%m-%d') published_date 
from book B join author A 
on B.author_id = A.author_id 
where B.category = '경제' 
order by B.published_date;

# 카테고리 별 도서 판매량 집계하기
SELECT B.category, sum(S.sales) total_sales
from book B join book_sales S
on B.book_id = S.book_id
where S.sales_date like '2022-01%'
group by B.category
order by B.category; 

# 저자 별 카테고리 별 매출액 집계하기
SELECT A.author_id, A.author_name, B.category, sum(S.sales*B.price) total_sales
from book B 
    join book_sales S 
        on  S.book_id =B.book_id
    join author A 
        on B.author_id = A.author_id
where S.sales_date like '2022-01%'
group by A.author_id, B.category
order by A.author_id, B.category desc;