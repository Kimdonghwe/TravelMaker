DROP TABLE AREA_CD;

CREATE TABLE AREA_CD
(
    RAGION_CD    VARCHAR2(6) NOT NULL,
    RAGION_NM    VARCHAR2(36) NOT NULL,
    UDATE    TIMESTAMP DEFAULT SYSDATE NOT NULL,
    CDATE    TIMESTAMP DEFAULT SYSDATE NOT NULL
);

COMMENT ON COLUMN AREA_CD.RAGION_CD IS '지역코드';

COMMENT ON COLUMN AREA_CD.RAGION_NM IS '코드명';

COMMENT ON COLUMN AREA_CD.UDATE IS '수정일';

COMMENT ON COLUMN AREA_CD.CDATE IS '생성일';

COMMENT ON TABLE AREA_CD IS '지역코드';

CREATE UNIQUE INDEX AREA_CD_PK ON AREA_CD
( RAGION_CD );

ALTER TABLE AREA_CD
 ADD CONSTRAINT AREA_CD_PK PRIMARY KEY ( RAGION_CD )
 USING INDEX AREA_CD_PK;