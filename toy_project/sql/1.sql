SELECT sh.c_seq AS "고객번호"
       ,cu.name AS "이름"
       ,sh.e_seq AS "제품번호"
       ,el.name AS "품명"
       ,sh.amount AS "수량"
       ,el.price AS "가격"
       ,(el.price * sh.amount) AS "구매 총합"
       ,sh.reg_date AS "구매 일시"
       ,(SELECT NOW()) AS "현재 시각"
FROM sale_history sh, customer cu, electronic el
WHERE sh.c_seq = cu.c_seq
AND sh.e_seq = el.e_seq
AND sh.c_seq = 3


--

SELECT sh.c_seq AS "고객번호"
       ,cu.name AS "이름"
       ,sh.e_seq AS "제품번호"
       ,el.name AS "품명"
       ,sh.amount AS "수량"
       ,el.price AS "가격"
       ,(el.price * sh.amount) AS "구매 총합"
       ,sh.reg_date AS "구매 일시"
FROM sale_history sh
JOIN customer cu ON sh.c_seq = cu.c_seq
JOIN electronic el ON sh.e_seq = el.e_seq

--

SELECT cu.name AS "이름"
       ,sh.c_seq AS "고객번호"
       ,sh.e_seq AS "제품번호"
       ,sh.amount AS "수량"
       ,sh.reg_date AS "구매 일시"
FROM sale_history sh
RIGHT JOIN customer cu ON sh.c_seq = cu.c_seq