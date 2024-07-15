-- SELECT

SELECT * FROM user;
SELECT first_name, last_name FROM user;
SELECT last_name, phone, email FROM user;

--ORDER BY 결과를 정렬하자
SELECT * FROM user ORDER BY age;
SELECT * FROM user ORDER BY age, first_name;
SELECT * FROM user ORDER BY age DESC;

