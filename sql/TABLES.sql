--------------------------------------------------------
--  DDL for Table AREA_CD
--------------------------------------------------------

  CREATE TABLE "AREA_CD" 
   (	"RAGION_CD" VARCHAR2(6 BYTE), 
	"RAGION_NM" VARCHAR2(36 BYTE), 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE
   ) ;

   COMMENT ON COLUMN "AREA_CD"."RAGION_CD" IS '지역코드';
   COMMENT ON COLUMN "AREA_CD"."RAGION_NM" IS '코드명';
   COMMENT ON COLUMN "AREA_CD"."UDATE" IS '수정일';
   COMMENT ON COLUMN "AREA_CD"."CDATE" IS '생성일';
   COMMENT ON TABLE "AREA_CD"  IS '지역코드';
--------------------------------------------------------
--  DDL for Table BBS
--------------------------------------------------------

  CREATE TABLE "BBS" 
   (	"BBS_ID" NUMBER(10,0), 
	"MANAGEMENT_ID" NUMBER(10,0), 
	"TITLE" VARCHAR2(150 BYTE), 
	"CODE_ID" VARCHAR2(6 BYTE), 
	"NICKNAME" VARCHAR2(36 BYTE), 
	"BCONTENT" CLOB, 
	"STATUS" CHAR(1 BYTE), 
	"HIT" NUMBER(10,0), 
	"GOOD" NUMBER(5,0) DEFAULT 0, 
	"BAD" NUMBER(5,0) DEFAULT 0, 
	"PLAN_ID" NUMBER(20,0), 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE
   ) ;

   COMMENT ON COLUMN "BBS"."BBS_ID" IS '게시글번호';
   COMMENT ON COLUMN "BBS"."MANAGEMENT_ID" IS '내부관리용아이디';
   COMMENT ON COLUMN "BBS"."TITLE" IS '제목';
   COMMENT ON COLUMN "BBS"."CODE_ID" IS '게시글분류코드';
   COMMENT ON COLUMN "BBS"."NICKNAME" IS '작성자이름(별칭)';
   COMMENT ON COLUMN "BBS"."BCONTENT" IS '본문내용';
   COMMENT ON COLUMN "BBS"."STATUS" IS '게시글 상태';
   COMMENT ON COLUMN "BBS"."HIT" IS '조회수';
   COMMENT ON COLUMN "BBS"."GOOD" IS '선호';
   COMMENT ON COLUMN "BBS"."BAD" IS '비선호';
   COMMENT ON COLUMN "BBS"."PLAN_ID" IS '여행일정 아이디';
   COMMENT ON COLUMN "BBS"."CDATE" IS '작성일';
   COMMENT ON COLUMN "BBS"."UDATE" IS '수정일';
   COMMENT ON TABLE "BBS"  IS '게시글';
--------------------------------------------------------
--  DDL for Table CLASS_CD
--------------------------------------------------------

  CREATE TABLE "CLASS_CD" 
   (	"CODE_ID" VARCHAR2(6 BYTE), 
	"CODE_NM" VARCHAR2(30 BYTE), 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"PCODE_ID" VARCHAR2(6 BYTE)
   ) ;

   COMMENT ON COLUMN "CLASS_CD"."CODE_ID" IS '코드아이디';
   COMMENT ON COLUMN "CLASS_CD"."CODE_NM" IS '코드명';
   COMMENT ON COLUMN "CLASS_CD"."UDATE" IS '수정일';
   COMMENT ON COLUMN "CLASS_CD"."CDATE" IS '생성일';
   COMMENT ON COLUMN "CLASS_CD"."PCODE_ID" IS '상위코드';
   COMMENT ON TABLE "CLASS_CD"  IS '공용코드';
--------------------------------------------------------
--  DDL for Table GB
--------------------------------------------------------

  CREATE TABLE "GB" 
   (	"GB_ID" NUMBER(10,0), 
	"GOOD" NUMBER(10,0) DEFAULT 0, 
	"BAD" NUMBER(10,0) DEFAULT 0, 
	"MANAGEMENT_ID" NUMBER(10,0), 
	"BBS_ID" NUMBER
   ) ;

   COMMENT ON COLUMN "GB"."GB_ID" IS '기본id';
   COMMENT ON COLUMN "GB"."GOOD" IS '좋아요';
   COMMENT ON COLUMN "GB"."BAD" IS '싫어요';
   COMMENT ON COLUMN "GB"."MANAGEMENT_ID" IS '내부관리용 ID';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MANAGEMENT_ID" NUMBER(10,0), 
	"MEMBER_ID" VARCHAR2(12 BYTE), 
	"PW" VARCHAR2(20 BYTE), 
	"TEL" VARCHAR2(11 BYTE), 
	"NICKNAME" VARCHAR2(36 BYTE), 
	"GENDER" VARCHAR2(3 BYTE), 
	"ADDRESS" VARCHAR2(120 BYTE), 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"CODE_ID" VARCHAR2(6 BYTE), 
	"BIRTHDAY" DATE, 
	"EMAIL" VARCHAR2(100 BYTE)
   ) ;

   COMMENT ON COLUMN "MEMBER"."MANAGEMENT_ID" IS '내부관리용아이디';
   COMMENT ON COLUMN "MEMBER"."MEMBER_ID" IS '회원아이디';
   COMMENT ON COLUMN "MEMBER"."PW" IS '비밀번호';
   COMMENT ON COLUMN "MEMBER"."TEL" IS '전화번호';
   COMMENT ON COLUMN "MEMBER"."NICKNAME" IS '별칭';
   COMMENT ON COLUMN "MEMBER"."GENDER" IS '성별';
   COMMENT ON COLUMN "MEMBER"."ADDRESS" IS '주소';
   COMMENT ON COLUMN "MEMBER"."UDATE" IS '변경일';
   COMMENT ON COLUMN "MEMBER"."CDATE" IS '작성일';
   COMMENT ON COLUMN "MEMBER"."CODE_ID" IS '회원구분코드';
   COMMENT ON TABLE "MEMBER"  IS '회원';
--------------------------------------------------------
--  DDL for Table RBBS
--------------------------------------------------------

  CREATE TABLE "RBBS" 
   (	"RBBS_ID" NUMBER(10,0), 
	"BBS_ID" NUMBER(10,0), 
	"MANAGEMENT_ID" NUMBER(10,0), 
	"NICKNAME" VARCHAR2(36 BYTE), 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"BCONTENT" CLOB
   ) ;

   COMMENT ON COLUMN "RBBS"."RBBS_ID" IS '댓글번호';
   COMMENT ON COLUMN "RBBS"."BBS_ID" IS '게시글번호';
   COMMENT ON COLUMN "RBBS"."MANAGEMENT_ID" IS '내부관리용아이디';
   COMMENT ON COLUMN "RBBS"."NICKNAME" IS '작성자이름(별칭)';
   COMMENT ON COLUMN "RBBS"."CDATE" IS '작성일';
   COMMENT ON COLUMN "RBBS"."UDATE" IS '수정일';
   COMMENT ON COLUMN "RBBS"."BCONTENT" IS '본문내용';
   COMMENT ON TABLE "RBBS"  IS '댓글';
--------------------------------------------------------
--  DDL for Table TRVL_LST
--------------------------------------------------------

  CREATE TABLE "TRVL_LST" 
   (	"PLAN_ID" NUMBER(20,0), 
	"MANAGEMENT_ID" NUMBER(10,0), 
	"TRVL_NM" VARCHAR2(150 BYTE), 
	"TRVL_STD" DATE, 
	"TRVL_LSD" DATE, 
	"TRAVEL_DAYS" VARCHAR2(1 BYTE), 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"RAGION_NM" VARCHAR2(21 BYTE)
   ) ;

   COMMENT ON COLUMN "TRVL_LST"."PLAN_ID" IS '여행일정아이디';
   COMMENT ON COLUMN "TRVL_LST"."MANAGEMENT_ID" IS '내부관리용아이디';
   COMMENT ON COLUMN "TRVL_LST"."TRVL_NM" IS '여행이름';
   COMMENT ON COLUMN "TRVL_LST"."TRVL_STD" IS '여행시작일';
   COMMENT ON COLUMN "TRVL_LST"."TRVL_LSD" IS '여행종료일';
   COMMENT ON COLUMN "TRVL_LST"."TRAVEL_DAYS" IS '여행일수';
   COMMENT ON COLUMN "TRVL_LST"."CDATE" IS '작성일';
   COMMENT ON COLUMN "TRVL_LST"."UDATE" IS '수정일';
   COMMENT ON COLUMN "TRVL_LST"."RAGION_NM" IS '지역명';
   COMMENT ON TABLE "TRVL_LST"  IS '회원여행일정목록';
--------------------------------------------------------
--  DDL for Table TRVL_PL
--------------------------------------------------------

  CREATE TABLE "TRVL_PL" 
   (	"PM_ID" NUMBER(20,0), 
	"TRVL_CD" NUMBER(10,0), 
	"PLAN_ID" NUMBER(20,0), 
	"MANAGEMENT_ID" NUMBER(10,0), 
	"TRVL_DAY" VARCHAR2(1 BYTE), 
	"TRVL_DTIME" VARCHAR2(8 BYTE), 
	"TRAFFIC_TIME" VARCHAR2(10 BYTE), 
	"DAY_WEEK" VARCHAR2(3 BYTE), 
	"TRVL_STIME" VARCHAR2(8 BYTE), 
	"COMMENTS" CLOB
   ) ;

   COMMENT ON COLUMN "TRVL_PL"."PM_ID" IS '여행지관리아이디';
   COMMENT ON COLUMN "TRVL_PL"."TRVL_CD" IS '여행지코드';
   COMMENT ON COLUMN "TRVL_PL"."PLAN_ID" IS '여행일정아이디';
   COMMENT ON COLUMN "TRVL_PL"."MANAGEMENT_ID" IS '내부관리용아이디';
   COMMENT ON COLUMN "TRVL_PL"."TRVL_DAY" IS '여행일';
   COMMENT ON COLUMN "TRVL_PL"."TRVL_DTIME" IS '여행일활동시간';
   COMMENT ON COLUMN "TRVL_PL"."TRAFFIC_TIME" IS '교통시간';
   COMMENT ON COLUMN "TRVL_PL"."DAY_WEEK" IS '요일';
   COMMENT ON COLUMN "TRVL_PL"."TRVL_STIME" IS '여행지활동시간';
   COMMENT ON COLUMN "TRVL_PL"."COMMENTS" IS '코멘트';
   COMMENT ON TABLE "TRVL_PL"  IS '여행일정';
--------------------------------------------------------
--  DDL for Table TRVL_SP
--------------------------------------------------------

  CREATE TABLE "TRVL_SP" 
   (	"TRVL_CD" NUMBER(10,0), 
	"RAGION_CD" VARCHAR2(6 BYTE), 
	"TRSP_CLA" VARCHAR2(6 BYTE), 
	"TRVL_NM" VARCHAR2(243 BYTE), 
	"TRVL_ADDR" VARCHAR2(210 BYTE), 
	"IMG" VARCHAR2(200 BYTE), 
	"IMG2" VARCHAR2(200 BYTE), 
	"TRVL_X" NUMBER(30,15), 
	"TRVL_Y" NUMBER(30,15), 
	"TRVL_ZIPCD" VARCHAR2(10 BYTE)
   ) ;

   COMMENT ON COLUMN "TRVL_SP"."TRVL_CD" IS '여행지코드';
   COMMENT ON COLUMN "TRVL_SP"."RAGION_CD" IS '지역코드';
   COMMENT ON COLUMN "TRVL_SP"."TRSP_CLA" IS '여행지분류';
   COMMENT ON COLUMN "TRVL_SP"."TRVL_NM" IS '여행지명';
   COMMENT ON COLUMN "TRVL_SP"."TRVL_ADDR" IS '여행지주소';
   COMMENT ON COLUMN "TRVL_SP"."IMG" IS '여행지사진1';
   COMMENT ON COLUMN "TRVL_SP"."IMG2" IS '여행지사진2';
   COMMENT ON COLUMN "TRVL_SP"."TRVL_X" IS '여행지X좌표';
   COMMENT ON COLUMN "TRVL_SP"."TRVL_Y" IS '여행지Y좌표';
   COMMENT ON COLUMN "TRVL_SP"."TRVL_ZIPCD" IS '여행지 우편번호';
   COMMENT ON TABLE "TRVL_SP"  IS '여행지';
--------------------------------------------------------
--  DDL for Table UPLOAD_FL
--------------------------------------------------------

  CREATE TABLE "UPLOAD_FL" 
   (	"UPLOADFILE_ID" NUMBER(10,0), 
	"BBS_ID" NUMBER(10,0), 
	"MANAGEMENT_ID" NUMBER(10,0), 
	"UPLOAD_FILENAME" VARCHAR2(50 BYTE), 
	"FSIZE" VARCHAR2(10 BYTE), 
	"FTYPE" VARCHAR2(6 BYTE), 
	"CDATE" TIMESTAMP (6) DEFAULT SYSDATE, 
	"UDATE" TIMESTAMP (6) DEFAULT SYSDATE
   ) ;

   COMMENT ON COLUMN "UPLOAD_FL"."UPLOADFILE_ID" IS '파일아이디';
   COMMENT ON COLUMN "UPLOAD_FL"."BBS_ID" IS '게시글번호';
   COMMENT ON COLUMN "UPLOAD_FL"."MANAGEMENT_ID" IS '내부관리용아이디';
   COMMENT ON COLUMN "UPLOAD_FL"."UPLOAD_FILENAME" IS '업로드파일명';
   COMMENT ON COLUMN "UPLOAD_FL"."FSIZE" IS '파일크기';
   COMMENT ON COLUMN "UPLOAD_FL"."FTYPE" IS '파일유형';
   COMMENT ON COLUMN "UPLOAD_FL"."CDATE" IS '작성일';
   COMMENT ON COLUMN "UPLOAD_FL"."UDATE" IS '수정일';
   COMMENT ON TABLE "UPLOAD_FL"  IS '업로드파일';