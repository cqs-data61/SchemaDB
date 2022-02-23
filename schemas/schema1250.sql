DROP DATABASE IF EXISTS "schema1250";
CREATE DATABASE "schema1250";
USE "schema1250";
CREATE TABLE "s_price" (
	"s_id" VARCHAR,
	"s_ttime" TIMESTAMP,
	"s_price" INT
);

CREATE TABLE "s_detail" (
	"s_id" VARCHAR,
	"s_name" VARCHAR,
	"s_min" INT,
	"s_max" INT
);

CREATE TABLE "i_price" (
	"i_id" VARCHAR,
	"i_ttime" TIMESTAMP,
	"i_price" INT
);

CREATE TABLE "i_detail" (
	"i_id" VARCHAR,
	"i_name" VARCHAR
);
