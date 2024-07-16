--CROSS JOIN
--곱집합을 만드는 용도
SELECT *
FROM lecture, instructor
WHERE lecture.instructor_id = instructor.id;

SELECT *
FROM lecture INNER JOIN instructor
    ON lecture.instructor_id = instructor.id;

SELECT name, day, first_name, last_name
FROM lecture INNER JOIN instructor
    ON lecture.instructor_id = instructor_id
ORDER BY day;

SELECT instructor_id, name, day, first_name, last_name
FROM instructor INNER JOIN lecture
    ON lecture.instructor_id = instructor_id
ORDER BY instructor_id;

--INNER JOIN은 한쪽 테이블의 레코드가 없으면 데이터가 나오지 않는다

--학생과 지도교수 데이터를 다 보고 싶다
SELECT *
FROM student INNER JOIN instructor
    ON student.advisor_id = instructor.id
ORDER BY student.id;

--OUTER JOIN

    SELECT instructor.id, name, day, first_name,last_name 
    FROM instructor LEFT OUTER JOIN lecture
        ON instructor.id = lecture.instructor_id;

SELECT instructor.id, name, day, first_name,last_name 
FROM lecture LEFT OUTER JOIN instructor
    ON instructor.id = lecture.instructor_id;
-- KHÔNG HỖ TRỢ RIGHT OUTER JOIN,  FULL OUTER JOIN
SELECT *
FROM lecture RIGHT OUTER JOIN instructor
    ON instructor.id = lecture.instructor_id;

