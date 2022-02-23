DROP DATABASE IF EXISTS "schema2462";
CREATE DATABASE "schema2462";
USE "schema2462";
CREATE TABLE "pay_uniq_seq_enty" (
	"pay_uniq_seq" BIGINT,
	"input_dt" DATETIME
);

CREATE TABLE "full_text_enty" (
	"mgn_no" CHAR,
	"full_text" VARCHAR,
	"input_dt" DATETIME
);

CREATE TABLE "cancel_info_enty" (
	"cancel_mgn_no" CHAR,
	"pay_mgn_no" CHAR,
	"card_info" VARCHAR,
	"pay_amt" INT,
	"vat_amt" INT,
	"pay_msg" VARCHAR,
	"pay_sts" VARCHAR,
	"input_dt" DATETIME
);

CREATE TABLE "pay_info_enty" (
	"pay_mgn_no" CHAR,
	"card_info" VARCHAR,
	"pay_amt" INT,
	"vat_amt" INT,
	"pay_msg" VARCHAR,
	"ins_mth" VARCHAR,
	"pay_sts" VARCHAR,
	"input_dt" DATETIME
);
