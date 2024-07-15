--INSERT
-- 데이터를 추가할 때 사용한다
--table 
--values (col1에 들어갈 데인터, cl2에 
INSERT INTO user(first_name, last_name)
VALUES ('alex', 'rod');

SELECT * FROM user WHERE first_name = 'alex';

INSERT INTO user(first_name, last_name, balance)
VALUES ('brad', 'pete', 220);
SELECT * FROM user WHERE first_name = 'brad';

-- constraint을 지키지 않으면 넣을 수 없다.
INSERT INTO user(id)
VALUES (1);

-- 여러 데이터 한번에 넣기
INSERT INTO user(first_name)
VALUES ('chad'),
        ('dave'),
        ('eric'),
        ('fred');

SELECT * FROM user ORDER BY id DESC;

--update
UPDATE user
SET balance = 100,
    age = 35
WHERE first_name = 'alex';
SELECT * FROM user WHERE first_name = 'alex';

--WHERE를 생략하면 (NẾU BỎ QUA ĐIỀU KIỆN, SẼ UPDATE TOÀN BỘ TABLE)
UPDATE user
SET balance = 0;

SELECT * FROM user;

--DELETE
DELETE FROM user
WHERE first_name = 'eric';

DELETE FROM user
WHERE age > 55;
SELECT * FROM user WHERE age > 55;

--WHERE 를 생략하면? XÓA HẾT DỮ LIỆU
--DELETE FROM user;
--SELECT * FROM user; 

