-- UPDATE 형식
-- 		UPDATE 테이블명
--		SET 수정할 컬럼=값을 , 로 구분해서 나열
-- 		WHERE 수정할 행에 대한 조건식.

SELECT * FROM TBL_CUSTOM tc ;
-- 기본키 컬럼사용 조건식은 1개 행만 수정됩니다.
UPDATE TBL_CUSTOM 
SET age=39
WHERE CUSTOM_ID = 'twice';

UPDATE TBL_CUSTOM 
SET age=23, EMAIL='nana@korea.kr'
WHERE CUSTOM_ID = 'wonder';

-- custom_id : wonder와 twice 에 대해 reg_date를 2022년 2월 5일로 변경해보세요
UPDATE TBL_CUSTOM 
SET REG_DATE = '2022-02-05'
WHERE CUSTOM_ID IN ('wonder','twice'); -- IN 연산자는 OR 대체


-- DELETE 형식
-- 		DELETE FROM 테이블명 WHERE 조건식;
DELETE FROM TBL_PRODUCT tp WHERE pcode = 'GAL01112';	-- 결과는?
DELETE FROM TBL_PRODUCT tp WHERE pcode = 'IPAD011';		-- 결과는?


-- 삭제를 위한 샘플데이터 추가
INSERT INTO TBL_PRODUCT tp (pcode,category,pname,price)
VALUES ('GAL01112', 'A1', '갤럭시20', '912300');

SELECT * FROM TBL_CUSTOM tc;
SELECT * FROM TBL_PRODUCT tp;
SELECT * FROM TBL_BUY tb;

UPDATE TBL_PRODUCT
SET pname = '아이패드프로'
WHERE pcode = 'IPAD011';

UPDATE TBL_PRODUCT 
SET pcode = 'IPAD011'
WHERE pcode = 'IPAD011';








