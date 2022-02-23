DROP DATABASE IF EXISTS "schema2278";
CREATE DATABASE "schema2278";
USE "schema2278";
CREATE TABLE "trans_history" (
	"trans_date" DATE,
	"acct_no" VARCHAR,
	"trans_no" INT,
	"trans_price" DECIMAL,
	"trans_fees" DECIMAL,
	"trans_cancel" CHAR
);

CREATE TABLE "acct_info" (
	"acct_no" VARCHAR,
	"client_name" VARCHAR,
	"br_code" VARCHAR
);

CREATE TABLE "branch" (
	"br_code" VARCHAR,
	"br_name" VARCHAR
);
