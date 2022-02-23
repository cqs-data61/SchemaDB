DROP DATABASE IF EXISTS "schema698";
CREATE DATABASE "schema698";
USE "schema698";
CREATE TABLE "keyvaluestore" (
	"key" VARCHAR,
	"value" VARCHAR
);

CREATE TABLE "report" (
	"name" VARCHAR,
	"description" VARCHAR,
	"query" VARCHAR,
	"input_fields" VARCHAR,
	"subtitle_field" VARCHAR,
	"separate_by" VARCHAR,
	"landscape" BOOLEAN,
	"number_style" VARCHAR,
	"number_remaining" VARCHAR,
	 PRIMARY KEY ("namecollatenocase")
);

CREATE TABLE "distributionperiod" (
	"start_date" VARCHAR,
	"day_1_first_appt" VARCHAR,
	"day_1_last_appt" VARCHAR,
	"day_2_first_appt" VARCHAR,
	"day_2_last_appt" VARCHAR,
	"day_3_first_appt" VARCHAR,
	"day_3_last_appt" VARCHAR,
	"day_4_first_appt" VARCHAR,
	"day_4_last_appt" VARCHAR,
	"day_5_first_appt" VARCHAR,
	"day_5_last_appt" VARCHAR,
	"day_6_first_appt" VARCHAR,
	"day_6_last_appt" VARCHAR,
	"day_7_first_appt" VARCHAR,
	"day_7_last_appt" VARCHAR,
	 PRIMARY KEY ("start_date")
);

CREATE TABLE "fulfillment" (
	"distribution" VARCHAR,
	"family_name" VARCHAR,
	"appt_day" INTEGER,
	"appt_time" VARCHAR,
	"fulfilled" BOOLEAN,
	"fulfillment_time" VARCHAR,
	"notes" VARCHAR,
	 PRIMARY KEY ("distribution","family_name")
);

CREATE TABLE "clientid" (
	"id" INTEGER,
	"family_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "client" (
	"family_name" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"ethnicity" VARCHAR,
	"count_senior" INTEGER,
	"count_adult" INTEGER,
	"count_child" INTEGER,
	"count_sex_male" INTEGER,
	"count_sex_female" INTEGER,
	"count_sex_other" INTEGER,
	"count_veteran" INTEGER,
	"income_source" VARCHAR,
	"income_amount" REAL,
	"pet_types" VARCHAR,
	"address_default" VARCHAR,
	"appt_day_default" INTEGER,
	"appt_time_default" VARCHAR,
	"verified" BOOLEAN,
	"archived" BOOLEAN,
	"notes_default" VARCHAR,
	 PRIMARY KEY ("family_namecollatenocase")
);

CREATE TABLE "user" (
	"username" VARCHAR,
	"password" VARCHAR,
	"permission_level" INTEGER
);
