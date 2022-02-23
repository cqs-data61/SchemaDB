DROP DATABASE IF EXISTS "schema1280";
CREATE DATABASE "schema1280";
USE "schema1280";
CREATE TABLE "user" (
	"us_name" VARCHAR,
	"us_email" VARCHAR,
	"us_password" VARCHAR,
	"us_role" VARCHAR,
	 PRIMARY KEY ("us_name")
);

CREATE TABLE "training" (
	"tr_id" INT,
	"tr_sd_id" INT,
	"tr_md_id" INT,
	"tr_ms_id" INT,
	"tr_status" VARCHAR,
	"tr_progress" VARCHAR,
	"tr_rating" INT,
	"tr_amount" INT,
	 PRIMARY KEY ("tr_id")
);

CREATE TABLE "technology" (
	"t_id" INT,
	"t_name" VARCHAR,
	"t_toc" VARCHAR,
	"t_duration" INT,
	"t_prerequisites" VARCHAR,
	 PRIMARY KEY ("t_id")
);

CREATE TABLE "student_details" (
	"sd_id" INT,
	"sd_username" VARCHAR,
	"sd_firstname" VARCHAR,
	"sd_lastname" VARCHAR,
	"sd_email" VARCHAR,
	"sd_password" VARCHAR,
	"sd_contact" VARCHAR,
	"sd_image" VARCHAR,
	 PRIMARY KEY ("sd_id")
);

CREATE TABLE "mentor_skill" (
	"ms_id" INT,
	"ms_md_id" INT,
	"ms_t_id" INT,
	"ms_self_rating" INT,
	"ms_exp" FLOAT,
	"ms_facilities" VARCHAR,
	"ms_trainings_delivered" INT,
	 PRIMARY KEY ("ms_id")
);

CREATE TABLE "mentor_details" (
	"md_id" INT,
	"md_username" VARCHAR,
	"md_firstname" VARCHAR,
	"md_lastname" VARCHAR,
	"md_email" VARCHAR,
	"md_password" VARCHAR,
	"md_contact" VARCHAR,
	"md_linked_in_url" VARCHAR,
	"md_exp" FLOAT,
	"md_active" BIT,
	"md_image" VARCHAR,
	 PRIMARY KEY ("md_id")
);
