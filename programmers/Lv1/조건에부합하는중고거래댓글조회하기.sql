/* USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회하는 SQL문을 작성해주세요. 
  결과는 댓글 작성일을 기준으로 오름차순 정렬해주시고, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬해주세요. */
  
-- mysql
SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, DATE_FORMAT(B.CREATED_DATE,'%Y-%m-%d')AS CREATED_DATE
FROM USED_GOODS_BOARD A, USED_GOODS_REPLY B
WHERE A.BOARD_ID = B.BOARD_ID
    AND DATE_FORMAT(A.CREATED_DATE,'%Y-%m') = '2022-10'
ORDER BY B.CREATED_DATE, A.TITLE;

-- Oracle
SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS, TO_CHAR(B.CREATED_DATE,'YYYY-MM-DD')AS CREATED_DATE
FROM USED_GOODS_BOARD A, USED_GOODS_REPLY B
WHERE A.BOARD_ID = B.BOARD_ID
    AND TO_CHAR(A.CREATED_DATE,'YYYY-MM') = '2022-10'
ORDER BY B.CREATED_DATE, A.TITLE;
