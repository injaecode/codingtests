
# 조건에 부합하는 중고거래 댓글 조회하기
SELECT A.title, A.board_id, 
	B.reply_id, B.writer_id, B.contents, 
    date_format(B.created_date, '%Y-%m-%d') as created_date 
from used_goods_board A join used_goods_reply B 
on a.board_id = b.board_id 
where a.created_date 
between '2022-10-01' and '2022-10-31' 
order by B.created_date, A.title;

# 조건에 맞는 사용자와 총 거래금액 조회하기
SELECT user_id, nickname, sum(price) total_sales
from used_goods_board B join used_goods_user U
on B.writer_id = U.user_id
where status = 'DONE'
group by U.user_id
having sum(price)>=700000
order by total_sales;

#조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
SELECT concat("/home/grep/src/",F.board_id,"/", F.file_id, F.file_name, F.file_ext) as file_path
from used_goods_file F join used_goods_board B
on F.board_id = B.board_id
where B.views = (select max(D.views) from used_goods_board D)
order by F.file_id desc;
# 조건에 부합하는 중고거래 상태 조회하기
SELECT board_id, writer_id, title, price, 
case when status="SALE" then "판매중"
when status = "RESERVED" then "예약중"
when status = "DONE" then "거래완료" end status
from used_goods_board
where date_format(created_date, "%Y-%m-%d") = "2022-10-05"
order by board_id desc;

