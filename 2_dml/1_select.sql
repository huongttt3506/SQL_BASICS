-- SELECT

SELECT * FROM user;
SELECT first_name, last_name FROM user;
SELECT last_name, phone, email FROM user;

--ORDER BY 결과를 정렬하자
SELECT * FROM user ORDER BY age;
SELECT * FROM user ORDER BY age, first_name;
SELECT * FROM user ORDER BY age DESC;
SELECT * FROM user ORDER BY age DESC, first_name;
SELECT * FROM user ORDER BY age, first_name DESC;
SELECT * FROM user ORDER BY age DESC, first_name DESC;

--중복 제거 //truy vấn dữ liệu 1 cột nhưng loại bỏ các giá trị trùng lặp
SELECT age FROM user;
SELECT DISTINCT age FROM user ORDER BY age;

SELECT DISTINCT age FROM user ORDER BY age;
SELECT DISTINCT first_name FROM user;
SELECT DISTINCT last_name FROM user;

-- DISTINCT 에 여러 COLUMN 을 넣을 경우
-- 조합한 기준으로 걸러준다
SELECT DISTINCT first_name, last_name FROM user;
SELECT DISTINCT first_name, age FROM user;
SELECT DISTINCT last_name, age FROM user;

SELECT DISTINCT country FROM user;

--WHERE 조건을 추가하여 조희하기
--아이가 30 미만인 사용자의 first_namr 을 조흐ㅣ하시오
SELECT first_name, age FROM user WHERE age < 30;
--아이가 30 이상인 사용자의 first_name 을 조흐ㅣ하시오
SELECT first_name, age FROM user WHERE age >= 40;
--balance가 150인 사용자
SELECT first_name, balance, age FROM user WHERE balance = 150;
SELECT first_name, balance FROM user WHERE balance = 200;

--WHERE 조건을 정하다
--ORDER BY로 결과를 정렬한다
SELECT first_name, age
FROM user
WHERE age < 30
ORDER BY age;

--여러가지 조건을 조합할 때
-- AND: 두가지 이상의 조건을 동시 
SELECT balance, age
FROM user
WHERE age >= 40
    AND balance >= 150
ORDER BY age;

SELECT balance, age
FROM user
WHERE age >= 40
    AND balance >= 150
    -- AND country = 'United States'
ORDER BY age;
-- OR: 둘 중 하나를 만족시키는
SELECT balance, age
FROM user
WHERE age < 25
    OR age > 60
ORDER BY age;

-- AND와 OR는 괄호로 조건을 묶을 수 있다.
SELECT balance, age
FROM user
WHERE (age < 25 OR age > 60)
    AND balance > 170
ORDER BY age;

--SQL 의 DATA TYPE 과 JAVA 의 자료형은 조금 다른 느낌이다
SELECT age FROM user WHERE age = '25';

--WHERE + LIKE
--기준이 되는 문자열 및 Wildcard로 검사
SELECT first_name
FROM user
WHERE email LIKE '%naver.com';
-- %: 0개 이상늬 문자와 일치
--alex@naver.com
--bra@naver.com
--brad/naver.com
--naver.com

SELECT email
FROM user
WHERE email LIKE '%@_____.com';

--이름이 A로 시작하면서 4글자인 사용자
SELECT first_name
FROM user
WHERE first_name LIKE 'A___';

--전화번호가 010으로 시작하는 사용자
SELECT * FROM user WHERE phone LIKE '010-%';
--전화번호가 010으로 시작하지 않는 사용자
SELECT * FROM user WHERE NOT phone LIKE '010-%';

-- BETWEEN, IN
-- age 가 30 ~ 39 사이
SELECT first_name, age
FROM user
WHERE age BETWEEN 30 AND 39
--WHERE age >= 30 and age <= 39
ORDER by age;  

-- country 가 United Stated, Canada, Australia 중 하나
SELECT first_name, country
FROM user
WHERE 
    country IN ('United Stated', 'Canada', 'Australia')
    --country = 'United Stated'
    --OR country = 'Canada'
    --OR country = 'Australia';
ORDER BY country;

--LIMIT & OFFSET
---- LIMIT 결과 Row의 갯수를 제한한다.
SELECT * FROM user;
SELECT *
FROM user
LIMIT 10;

SELECT * FROM user
WHERE age < 30
LIMIT 10;

SELECT * FROM user
WHERE age < 30
ORDER BY age
LIMIT 20;
-- OFFSET : Row 건어뛰기 
--(bỏ qua các hàng đầu tiên vidu offset 20, trả về kq bắt đầu từ hàng thứ 21)
SELECT * FROM user
WHERE age < 40
ORDER BY age
LIMIT 20 OFFSET 20;













