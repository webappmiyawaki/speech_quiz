CREATE DATABASE speech_quiz;

TRUNCATE test_result;

CREATE TABLE test_result(
    user_id VARCHAR(100),
    quiz_text_num INTEGER,
    quiz_ans_num INTEGER
);

INSERT INTO test_result VALUES(1,1,1);
INSERT INTO test_result VALUES(1,2,1);
INSERT INTO test_result VALUES(1,3,1);
INSERT INTO test_result VALUES(1,4,1);
INSERT INTO test_result VALUES(1,5,1);
INSERT INTO test_result VALUES(1,6,1);
INSERT INTO test_result VALUES(2,1,2);
INSERT INTO test_result VALUES(2,2,2);
INSERT INTO test_result VALUES(2,3,2);
INSERT INTO test_result VALUES(2,4,2);
INSERT INTO test_result VALUES(2,5,2);
INSERT INTO test_result VALUES(2,6,2);
INSERT INTO test_result VALUES(3,1,3);
INSERT INTO test_result VALUES(3,2,3);
INSERT INTO test_result VALUES(3,3,3);
INSERT INTO test_result VALUES(3,4,3);
INSERT INTO test_result VALUES(3,5,3);
INSERT INTO test_result VALUES(3,6,3);
INSERT INTO test_result VALUES(4,1,4);
INSERT INTO test_result VALUES(4,2,4);
INSERT INTO test_result VALUES(4,3,4);
INSERT INTO test_result VALUES(4,4,4);
INSERT INTO test_result VALUES(4,5,4);
INSERT INTO test_result VALUES(4,6,4);
INSERT INTO test_result VALUES(5,1,5);
INSERT INTO test_result VALUES(5,2,5);
INSERT INTO test_result VALUES(5,3,5);
INSERT INTO test_result VALUES(5,4,5);
INSERT INTO test_result VALUES(5,5,5);
INSERT INTO test_result VALUES(5,6,5);

SELECT quiz_text_num,
       COUNT(CASE WHEN quiz_ans_num=1 THEN quiz_text_num ELSE NULL END) AS ans01,
       COUNT(CASE WHEN quiz_ans_num=2 THEN quiz_text_num ELSE NULL END) AS ans02,
       COUNT(CASE WHEN quiz_ans_num=3 THEN quiz_text_num ELSE NULL END) AS ans03,
       COUNT(CASE WHEN quiz_ans_num=4 THEN quiz_text_num ELSE NULL END) AS ans04,
       COUNT(CASE WHEN quiz_ans_num=5 THEN quiz_text_num ELSE NULL END) AS ans05
FROM test_result
GROUP BY quiz_text_num
ORDER BY quiz_text_num;