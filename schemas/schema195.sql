DROP DATABASE IF EXISTS "schema195";
CREATE DATABASE "schema195";
USE "schema195";
CREATE TABLE "hrmpaytableitem" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"pay_tabble_id" INT,
	"code1" VARCHAR,
	"code2" VARCHAR,
	"code3" VARCHAR,
	"amt" DECIMAL,
	"cmt" VARCHAR
);

CREATE TABLE "hrmpaytable" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"table_nm" VARCHAR,
	"enable_yn" BOOLEAN,
	"type_code1" VARCHAR,
	"type_code2" VARCHAR,
	"type_code3" VARCHAR,
	"seq" INT,
	"cmt" VARCHAR
);

CREATE TABLE "hrmpayitem" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"code" VARCHAR,
	"code_nm" VARCHAR,
	"item_type" VARCHAR,
	"pay_table_yn" BOOLEAN,
	"seq" INT,
	"cmt" VARCHAR
);

CREATE TABLE "hrmanualleave" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"yyyy" INT,
	"emp_id" VARCHAR,
	"base_dt" DATETIME,
	"from_dt" DATETIME,
	"to_dt" DATETIME,
	"total_work_days" INT,
	"except_days" INT,
	"cnt" DECIMAL,
	"add_cnt" DECIMAL,
	"use_cnt" DECIMAL,
	"intra_anual" BOOLEAN,
	"cmt" VARCHAR
);

CREATE TABLE "hrmdutycoderule" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"rule_id" INT,
	"duty_code" VARCHAR,
	"fk_limit_id" INT
);

CREATE TABLE "hrmdutyapplicationlimit" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"limit_id" INT,
	"from_year_type" VARCHAR,
	"from_mmdd" VARCHAR,
	"to_year_type" VARCHAR,
	"to_mmdd" VARCHAR,
	"cnt" INT,
	"invalid_msg" VARCHAR,
	"cmt" VARCHAR
);

CREATE TABLE "hrmdutyapplicationdate" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"fk_duty_id" INT,
	"duty_dt" DATETIME
);

CREATE TABLE "hrmdutyapplication" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"duty_id" INT,
	"emp_id" VARCHAR,
	"duty_code" VARCHAR,
	"duty_reason" VARCHAR,
	"duty_start_dt" DATETIME,
	"duty_end_dt" DATETIME,
	"family_event_dt" DATETIME,
	"family_event_amt" INT
);

CREATE TABLE "hrmdutycode" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"duty_code" VARCHAR,
	"duty_name" VARCHAR,
	"duty_group" VARCHAR,
	"enable_yn" BOOLEAN,
	"family_event_yn" BOOLEAN,
	"family_event_amt" INT,
	"cmt" VARCHAR
);

CREATE TABLE "hrmappointmentinfo" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"list_id" INT,
	"change_type" VARCHAR,
	"change_type_detail" VARCHAR,
	"code" VARCHAR,
	"prt_seq" INT
);

CREATE TABLE "hrmappointmentledgerlist" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"list_id" INT,
	"seq" INT,
	"emp_id" VARCHAR,
	"appointment_code" VARCHAR,
	"from_dt" DATETIME,
	"to_dt" DATETIME,
	"ledger_id" VARCHAR,
	"finish_yn" BOOLEAN
);

CREATE TABLE "hrmappointmentledger" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"ledger_id" VARCHAR,
	"appointment_type" VARCHAR,
	"rgst_dt" DATETIME,
	"cmt" VARCHAR
);

CREATE TABLE "hrmemplicense" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"license_type" VARCHAR,
	"license_code" VARCHAR,
	"date_of_acquisition" DATE,
	"certification_authority" VARCHAR,
	"mandatory_yn" BOOLEAN,
	"cmt" VARCHAR
);

CREATE TABLE "hrmempeducation" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"edu_type" VARCHAR,
	"school_code" VARCHAR,
	"cmt" VARCHAR
);

CREATE TABLE "hrmempschoolcareer" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"school_career_type" VARCHAR,
	"school_code" VARCHAR,
	"from_dt" DATE,
	"to_dt" DATE,
	"major_name" VARCHAR,
	"plural_major_name" VARCHAR,
	"location" VARCHAR,
	"lesson_year" INT,
	"cmt" VARCHAR
);

CREATE TABLE "hrmempfamily" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"family_name" VARCHAR,
	"rregno" VARCHAR,
	"family_rel_code" VARCHAR,
	"occupation_name" VARCHAR,
	"school_career_type" VARCHAR,
	"cmt" VARCHAR
);

CREATE TABLE "hrmempstatushistory" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"appointment_code" VARCHAR,
	"status_code" VARCHAR,
	"from_dt" DATE,
	"to_dt" DATE
);

CREATE TABLE "hrmempjobhistory" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"job_type" VARCHAR,
	"job_code" VARCHAR,
	"from_dt" DATE,
	"to_dt" DATE
);

CREATE TABLE "hrmempdepthistory" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"id" INT,
	"emp_id" VARCHAR,
	"dept_type" VARCHAR,
	"dept_code" VARCHAR,
	"from_dt" DATE,
	"to_dt" DATE
);

CREATE TABLE "hrmemployee" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"emp_id" VARCHAR,
	"emp_name" VARCHAR,
	"emp_name_eng" VARCHAR,
	"emp_name_chi" VARCHAR,
	"emp_name_legal" VARCHAR,
	"rregno" VARCHAR,
	"gender" VARCHAR,
	"birthday" DATE,
	"work_condition" VARCHAR,
	"img_path" VARCHAR
);

CREATE TABLE "hrmappointmentcodedetail" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"type_id" VARCHAR,
	"appointment_code" VARCHAR,
	"change_type" VARCHAR,
	"change_type_detail" VARCHAR,
	"prt_seq" INT
);

CREATE TABLE "hrmappointmentcode" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"appointment_code" VARCHAR,
	"appointment_code_name" VARCHAR,
	"use_yn" BOOLEAN,
	"emp_status_code" VARCHAR,
	"end_date_yn" BOOLEAN,
	"prt_seq" INT,
	"cmt" VARCHAR
);

CREATE TABLE "hrmrelationcode" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"relation_id" INT,
	"rel_code" VARCHAR,
	"parent_type_id" VARCHAR,
	"parent_detail_id" VARCHAR,
	"child_type_id" VARCHAR,
	"child_detail_id" VARCHAR
);

CREATE TABLE "hrmtypecodedetail" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"detail_id" VARCHAR,
	"type_id" VARCHAR,
	"code" VARCHAR,
	"code_name" VARCHAR,
	"use_yn" BOOLEAN,
	"prt_seq" INT,
	"cmt" VARCHAR
);

CREATE TABLE "hrmtypecode" (
	"sys_dt" DATETIME,
	"sys_user" VARCHAR,
	"upd_dt" DATETIME,
	"upd_user" VARCHAR,
	"type_id" VARCHAR,
	"type_code" VARCHAR,
	"code" VARCHAR,
	"code_name" VARCHAR,
	"use_yn" BOOLEAN,
	"prt_seq" INT,
	"cmt" VARCHAR
);
