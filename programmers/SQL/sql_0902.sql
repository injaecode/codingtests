SELECT I.rest_id, I.rest_name, I.food_type, I.favorites, I.address, round(avg(R.review_score),2) score
from rest_info I join rest_review R
on I.rest_id = R.rest_id
where address like "서울%"
group by I.rest_id
order by score desc, I.favorites desc;

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

