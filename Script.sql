CREATE TABLE table_number(
	col1 number,
	col2 number(5),
	col3 number(7,2),
	col4 number(2,5)
);

INSERT INTO TABLE_NUMBER(col1, col2, col3, col4)
VALUES(1234567, 12345, 12345.67, 0.00012);

INSERT INTO TABLE_NUMBER(col1, col2, col3, col4)
VALUES(1234567, 12345, 12345.67, 0.0);

INSERT INTO TABLE_NUMBER(col1, col2, col3, col4)
VALUES(1234567, 12345, 12345.67, 0.0000123);

CREATE TABLE table_date(
	acol DATE,
	bcol timestamp,
	ccol timestamp DEFAULT sysdate
);

INSERT INTO TABLE_DATE(acol, bcol)
VALUES('2023-12-26', '2023-12-27');

CREATE TABLE table_string(
	acol char(10),
	bcol varchar2(10),
	ccol nchar(10),
	dcol nvarchar2(10)
);

INSERT INTO TABLE_STRING(acol) VALUES ('abcdefghij');
INSERT INTO TABLE_STRING(acol) VALUES ('abcde');
INSERT INTO TABLE_STRING(acol) VALUES ('가나다');

INSERT INTO TABLE_STRING(bcol) VALUES ('abcdefghij');
INSERT INTO TABLE_STRING(bcol) VALUES ('abcde');
INSERT INTO TABLE_STRING(bcol) VALUES ('가나다');

INSERT INTO TABLE_STRING(ccol) VALUES ('abcdefghij');
INSERT INTO TABLE_STRING(ccol) VALUES ('abcde');
INSERT INTO TABLE_STRING(ccol) VALUES ('가나다라');
INSERT INTO TABLE_STRING(ccol) VALUES ('가나다라마바사아자차');

INSERT INTO TABLE_STRING(dcol) VALUES ('abcdefghij'); 
INSERT INTO TABLE_STRING(dcol) VALUES ('abcde'); 
INSERT INTO TABLE_STRING(dcol) VALUES ('가나다라'); 
INSERT INTO TABLE_STRING(dcol) VALUES ('가나다라마바사아자차');

-- 고객 테이블
CREATE TABLE tbl_custom(
	custom_id varchar2(20),
	name nvarchar2(20),
	email varchar2(20),
	age number(3),
	reg_date timestamp DEFAULT sysdate
);

-- 상품 테이블
CREATE TABLE tbl_product(
	pcode varchar2(20),
	category char(2),
	pname nvarchar2(20),
	price number(9)
);

-- 구매 테이블
CREATE TABLE tbl_buy(
	custom_id varchar2(20),
	pcode varchar2(20),
	quantity number(5),
	buy_date timestamp
);

ALTER TABLE TBL_BUY RENAME COLUMN pcdoe TO pcode;
ALTER TABLE TBL_BUY RENAME COLUMN custmo_id TO custom_id;

INSERT INTO TBL_CUSTOM(custom_id, name, email, age, reg_date)
VALUES('mina012', '김미나', 'kim@gmail.com', 20, sysdate);
INSERT INTO TBL_CUSTOM(custom_id, name, email, age, reg_date)
VALUES('hongGD', '홍길동', 'gil@korea.com', 32, sysdate);
INSERT INTO TBL_CUSTOM(custom_id, name, email, age, reg_date)
VALUES('twice', '박모모', 'momo@daum.net', 29, sysdate);
INSERT INTO TBL_CUSTOM(custom_id, name, email, age, reg_date)
VALUES('wonder', '이나나', 'lee@naver.com', 40, sysdate);
INSERT INTO TBL_CUSTOM(custom_id, name, email, age, reg_date)
VALUES('wonder', '최모모', 'choi@naver.com', 33, sysdate);

INSERT INTO TBL_PRODUCT(pcode, category, pname, price)
VALUES('IPAD011', 'A1', '아이패드10', 880000);
INSERT INTO TBL_PRODUCT(pcode, category, pname, price)
VALUES('DOWON123a', 'B1', '동원참치선물세트', 54000);
INSERT INTO TBL_PRODUCT(pcode, category, pname, price)
VALUES('dk_143', 'A2', '모션데스크', 234500);
INSERT INTO TBL_PRODUCT(pcode, category, pname)
VALUES('dk_1433', 'A2', '자동모션데스크');

INSERT INTO TBL_BUY(custom_id, pcode, quantity, buy_date)
VALUES('mina012', 'IPAD011', 1, '2022-02-06');
INSERT INTO TBL_BUY(custom_id, pcode, quantity, buy_date)
VALUES('hongGD', 'IPAD011', 2, sysdate);
INSERT INTO TBL_BUY(custom_id, pcode, quantity, buy_date)
VALUES('wonder', 'DOWON123a', 3, '2022-02-06');
INSERT INTO TBL_BUY(custom_id, pcode, quantity, buy_date)
VALUES('mina012', 'dk_143', 1, sysdate);
INSERT INTO TBL_BUY(custom_id, pcode, quantity, buy_date)
VALUES('twice', 'DOWON123a', 2, '2022-02-07');













