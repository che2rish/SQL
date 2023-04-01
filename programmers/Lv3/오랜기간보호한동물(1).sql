/* 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 
   이때 결과는 보호 시작일 순으로 조회해야 합니다. */

-- mysql
SELECT A.NAME, A.DATETIME
FROM ANIMAL_INS A 
WHERE A.ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY A.DATETIME
LIMIT 3;

-- Oracle
