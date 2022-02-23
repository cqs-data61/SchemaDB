DROP DATABASE IF EXISTS "schema1681";
CREATE DATABASE "schema1681";
USE "schema1681";
CREATE TABLE "attachment" (
	"id" SERIAL,
	"link" CHARACTER VARYING,
	"type" CHARACTER VARYING,
	"post_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post_tag" (
	"post_id" BIGINT,
	"tag_id" BIGINT
);

CREATE TABLE "tag" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" SERIAL,
	"title" CHARACTER VARYING,
	"body" TEXT,
	"created_date" DATE,
	"is_static" BOOLEAN,
	"summary" CHARACTER VARYING,
	"is_activity" BOOLEAN,
	"user_id" BIGINT,
	"department_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"user_name" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"role" CHARACTER VARYING,
	"created_date" DATE,
	"updated_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "staff_subject" (
	"staff_id" BIGINT,
	"subject_id" BIGINT
);

CREATE TABLE "subject" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "staff_research" (
	"staff_id" BIGINT,
	"research_field_id" BIGINT
);

CREATE TABLE "research_field" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "staff" (
	"id" SERIAL,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"thumbnail_link" CHARACTER VARYING,
	"active" BOOLEAN,
	"cv_link" CHARACTER VARYING,
	"office_number" CHARACTER VARYING,
	"department_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "study_program_plan" (
	"id" SERIAL,
	"title" CHARACTER VARYING,
	"link" CHARACTER VARYING,
	"department_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "section" (
	"id" SERIAL,
	"title" CHARACTER VARYING,
	"body" CHARACTER VARYING,
	"rank" NUMERIC,
	"active" BOOLEAN,
	"department_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	"background_link" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "field" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	"value" CHARACTER VARYING,
	"link" CHARACTER VARYING,
	"icon" CHARACTER VARYING,
	"footer_section_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "footer_section" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collaboration_company" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	"slogan" CHARACTER VARYING,
	"link" CHARACTER VARYING,
	"thumbnail_link" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collaboration_university" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	"lat" NUMERIC,
	"long" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "publications" (
	"id" SERIAL,
	"title" CHARACTER VARYING,
	"author" CHARACTER VARYING,
	"publication_date" DATE,
	"link" CHARACTER VARYING,
	"type" CHARACTER VARYING,
	"thumbnail" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "policie" (
	"id" SERIAL,
	"title" CHARACTER VARYING,
	"link" CHARACTER VARYING,
	"created_date" DATE,
	"updated_date" DATE,
	 PRIMARY KEY ("id")
);
