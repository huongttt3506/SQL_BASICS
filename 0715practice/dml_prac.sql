--P1

INSERT INTO user(first_name, last_name, age, balance)
VALUES ('Huong', 'Tran', 35, 100);

SELECT * FROM user WHERE first_name = 'Huong';
-- p2
SELECT * FROM user WHERE balance >= 100;

--P3
    UPDATE user
    SET balance = 100
    WHERE balance >= 100;
    --không có user nào có balance > 100
SELECT * FROM user WHERE balance > 100; 

--P4
SELECT * FROM user
WHERE first_name = 'Austin';

DELETE FROM user
WHERE first_name = 'Austin';
-- Sau khi xóa, truy vấn lại, thì không còn xuất hiện
SELECT * FROM user
WHERE first_name = 'Austin';

-- P5
-- 전화번호가 010-으로 시작하지 않는 사용자

SELECT * FROM user WHERE NOT phone LIKE '010-%';

--p6
-- 성에 '이 포함된 이름을 조회
-- ' là kí tự đặc biệt, dùng như là 1 kí tự trong 1 string, cần double up ''
SELECT * FROM user WHERE last_name LIKE '%''%';

-- p7
-- 직급이 '차장'인 사원만 조회
SELECT * FROM employee
WHERE grade = '차장';

--p8
--가격이 100000 이하면서 재고가 10개 이상인 물품만 조회하여
SELECT * FROM goods
WHERE price < 100000
    AND stock > 10;

-- P9
-- 한식 또는 양식 중 채식 메뉴를 가격 순으로 조회
SELECT * FROM restaurantMenu
WHERE vegetarian = true
ORDER BY category, price;

--p10
--DDL 연습에서 만든 P4의 테이블의 데이터 중, 재생시간이 5분 이상인 노래 중 작곡가와 작사가가 일치하는 노래만 조회하는 SQL을 작성하시오.

SELECT * FROM music
WHERE dur_in_secs >= 300
    AND writer = lyrics;

--p11
-- DDL 연습에서 만든 P1의 테이블의 데이터 중, 직급이 '대리'인 사원 중 연봉이 5000만원 이상인
--사원의 직급을 '과장'으로 갱신하는 SQL을 작성하시오.

UPDATE employee
SET grade = '과장'
WHERE grade = '대리' AND salary >= 50000000;

--p12 
--DDL 연습에서 만든 P2의 테이블의 데이터 중, 재고가 '0'인 데이터를 삭제하는 SQL을 작성하시오.
DELETE FROM goods
WHERE stock = 0;














