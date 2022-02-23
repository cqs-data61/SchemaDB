DROP DATABASE IF EXISTS "schema432";
CREATE DATABASE "schema432";
USE "schema432";
CREATE TABLE "vaccine_data" (
	"vaers_id" INT,
	"recvdate" VARCHAR,
	"age_yrs" INT,
	"sex" VARCHAR,
	"died" VARCHAR,
	"datedied" VARCHAR,
	"l_threat" VARCHAR,
	"hospital" VARCHAR,
	"hospdays" INT,
	"recovd" VARCHAR,
	"vax_date" VARCHAR,
	"history" VARCHAR
);

CREATE TABLE "all_symp" (
	"vaers_id" INT,
	"symptoms" VARCHAR
);

CREATE TABLE "vaccine_type" (
	"vaers_id" INT,
	"vax_type" VARCHAR,
	"vax_manu" VARCHAR,
	"vax_dose_series" VARCHAR,
	"vax_route" VARCHAR,
	"vax_name" VARCHAR
);
