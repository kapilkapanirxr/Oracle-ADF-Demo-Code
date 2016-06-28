--------------------------------------------------------
--  File created - Tuesday-June-28-2016
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------
CREATE TABLE "EMPLOYEE"
  (
    "FIRST_NAME"  VARCHAR2(20),
    "LAST_NAME"   VARCHAR2(20),
    "DOB"         DATE,
    "DOJ"         DATE,
    "DSOA11G"     DATE,
    "DSOA12C"     DATE,
    "DBPM11G"     DATE,
    "DBPM12C"     DATE,
    "AGE"         VARCHAR2(20),
    "SEX"         VARCHAR2(20),
    "CITY"        VARCHAR2(20),
    "COUNTRY"     VARCHAR2(20),
    "STREET_NO"   VARCHAR2(20),
    "STREET_NAME" VARCHAR2(20)
  )
  REM INSERTING into EMPLOYEE
  SET DEFINE OFF;
INSERT
INTO EMPLOYEE
  (
    FIRST_NAME,
    LAST_NAME,
    DOB,
    DOJ,
    DSOA11G,
    DSOA12C,
    DBPM11G,
    DBPM12C,
    AGE,
    SEX,
    CITY,
    COUNTRY,
    STREET_NO,
    STREET_NAME
  )
  VALUES
  (
    'Kapil',
    'Kapani',
    to_date('28/JUN/16','DD/MON/RR'),
    to_date('28/JUN/16','DD/MON/RR'),
    NULL,
    NULL,
    NULL,
    NULL,
    '28',
    'Male',
    'Canberra',
    'Australia',
    '15',
    'Lampard'
  );
