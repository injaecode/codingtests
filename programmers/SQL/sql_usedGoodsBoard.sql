
# 조건에 부합하는 중고거래 댓글 조회하기
SELECT A.title, A.board_id, 
	B.reply_id, B.writer_id, B.contents, 
    date_format(B.created_date, '%Y-%m-%d') as created_date 
from used_goods_board A join used_goods_reply B 
on a.board_id = b.board_id 
where a.created_date 
between '2022-10-01' and '2022-10-31' 
order by B.created_date, A.title;