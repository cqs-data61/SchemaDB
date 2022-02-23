DROP DATABASE IF EXISTS "schema864";
CREATE DATABASE "schema864";
USE "schema864";
CREATE TABLE "data_error" (
	"api_report" VARCHAR,
	"api_date" TIMESTAMP,
	"row_text" VARCHAR,
	"error_text" VARCHAR,
	"ins_ts" TIMESTAMP
);

CREATE TABLE "report_input" (
	"user_id" BIGINT,
	"ts" TIMESTAMP,
	"context" LONGTEXT,
	"ip" VARCHAR
);
