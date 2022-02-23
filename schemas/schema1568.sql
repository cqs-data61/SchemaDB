DROP DATABASE IF EXISTS "schema1568";
CREATE DATABASE "schema1568";
USE "schema1568";
CREATE TABLE "user" (
	"id" INT,
	"account" VARCHAR,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"birthday" TIMESTAMP,
	"sex" TINYINT,
	"military_service" TINYINT,
	"military_date" TIMESTAMP,
	"address" VARCHAR,
	"special_identity" VARCHAR,
	"introduction" VARCHAR,
	"bio_eng" VARCHAR,
	"bio_chn" VARCHAR,
	"profile_img_path" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "template" (
	"id" INT,
	"name" VARCHAR,
	"basic_info_limit" INT,
	"education_limit" INT,
	"experience_limit" INT,
	"skill_limit" INT,
	"license_limit" INT,
	"language_limit" INT,
	"feature_limit" INT,
	"link_limit" INT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "skill" (
	"id" INT,
	"uid" INT,
	"skill_name" VARCHAR,
	"skill_desc" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "resume" (
	"id" INT,
	"uid" INT,
	"template_id" INT,
	"resume_name" VARCHAR,
	"basic_info_columns" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "rel_resume_skill" (
	"rid" INT,
	"skill_id" INT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("rid","skill_id")
);

CREATE TABLE "rel_resume_license" (
	"rid" INT,
	"license_id" INT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("rid","license_id")
);

CREATE TABLE "rel_resume_lang" (
	"rid" INT,
	"language_id" INT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("rid","language_id")
);

CREATE TABLE "rel_resume_exp" (
	"rid" INT,
	"exp_id" INT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("rid","exp_id")
);

CREATE TABLE "rel_resume_edu" (
	"rid" INT,
	"edu_id" INT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("rid","edu_id")
);

CREATE TABLE "link" (
	"id" INT,
	"uid" INT,
	"platform" VARCHAR,
	"url" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "license" (
	"id" INT,
	"uid" INT,
	"name" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "language" (
	"id" INT,
	"uid" INT,
	"language" VARCHAR,
	"listening" VARCHAR,
	"speaking" VARCHAR,
	"reading" VARCHAR,
	"writing" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "feature" (
	"id" INT,
	"uid" INT,
	"content" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "experience" (
	"id" INT,
	"uid" INT,
	"company_name" VARCHAR,
	"position" VARCHAR,
	"start_date" TIMESTAMP,
	"end_date" TIMESTAMP,
	"experience_desc" VARCHAR,
	"ability" VARCHAR,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);

CREATE TABLE "education" (
	"id" INT,
	"uid" INT,
	"school_name" VARCHAR,
	"level" VARCHAR,
	"major" VARCHAR,
	"second_major" VARCHAR,
	"status" VARCHAR,
	"start_date" TIMESTAMP,
	"end_date" TIMESTAMP,
	"country" VARCHAR,
	"gpa" FLOAT,
	"cr_user" VARCHAR,
	"cr_datetime" TIMESTAMP,
	"up_user" VARCHAR,
	"up_datetime" TIMESTAMP,
	 PRIMARY KEY ("id","uid")
);
