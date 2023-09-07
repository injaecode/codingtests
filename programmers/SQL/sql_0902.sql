
# 조건에 부합하는 중고거래 댓글 조회하기
SELECT A.title, A.board_id, 
	B.reply_id, B.writer_id, B.contents, 
    date_format(B.created_date, '%Y-%m-%d') as created_date 
from used_goods_board A join used_goods_reply B 
on a.board_id = b.board_id 
where a.created_date 
between '2022-10-01' and '2022-10-31' 
order by B.created_date, A.title;


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

# 3월에 태어난 여성 회원 목록 출력하기
SELECT member_id, member_name, gender , date_format(date_of_birth , '%Y-%m-%d') date_of_birth
from member_profile
where tlno is not null and gender = 'W' and month(date_of_birth) = '3'
order by member_id 
