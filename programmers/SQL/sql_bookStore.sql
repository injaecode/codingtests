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