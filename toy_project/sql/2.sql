SELECT s_seq "거래 번호"
      ,e_seq "제품 번호"  
      ,(SELECT company
        FROM electronic
        WHERE company = 'SAMSUNG'
       ) "회사명"
FROM sale_history
WHERE e_seq = (SELECT e_seq
               FROM electronic
               WHERE company = 'SAMSUNG'
              )
              
---

SELECT *
FROM sale_history
WHERE e_seq = (SELECT e_seq
               FROM electronic
               WHERE company = 'SAMSUNG'
              )
              
---

SELECT c_seq "고객 번호"
      ,COUNT(c_seq) "거래 횟수"
FROM sale_history
GROUP BY c_seq

---

SELECT e_seq "제품 번호"
      ,COUNT(e_seq) "거래 횟수"
FROM sale_history
GROUP BY e_seq
HAVING e_seq = 2