/* PRODUCT 테이블에서 상품 카테고리 코드(PRODUCT_CODE 앞 2자리) 별 상품 개수를 출력하는 SQL문을 작성해주세요. 
   결과는 상품 카테고리 코드를 기준으로 오름차순 정렬해주세요. */

-- mysql
SELECT SUBSTR(PRODUCT_CODE,1,2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY;

-- Oracle
SELECT SUBSTR(PRODUCT_CODE,1,2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY SUBSTR(PRODUCT_CODE,1,2) -- GROUP BY 절은 Alias 사용 X
ORDER BY CATEGORY;
