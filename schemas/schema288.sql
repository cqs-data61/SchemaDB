DROP DATABASE IF EXISTS "schema288";
CREATE DATABASE "schema288";
USE "schema288";
CREATE TABLE "t_user" (
	"name" VARCHAR,
	"create_time" DATETIME,
	"modify_time" DATETIME,
	"account_type" INT,
	"person_code" VARCHAR,
	"person_name" VARCHAR,
	"tenant_id" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_tenant" (
	"id" INT,
	"tenant_name" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"status" INT,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"instance_id" VARCHAR,
	"instance_name" VARCHAR,
	"app_id" VARCHAR,
	"region" VARCHAR,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_sync_log" (
	"id" INT,
	"type" VARCHAR,
	"update_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_person" (
	"code" VARCHAR,
	"name" VARCHAR,
	"valid" INT,
	"modify_time" DATETIME,
	"user" LONGTEXT,
	"gender" LONGTEXT,
	"status" LONGTEXT,
	"main_position" LONGTEXT,
	"positions" LONGTEXT,
	"companies" LONGTEXT,
	"departments" LONGTEXT,
	"entry_date" DATETIME,
	"title" VARCHAR,
	"education" VARCHAR,
	"qualification" VARCHAR,
	"major" VARCHAR,
	"id_number" VARCHAR,
	"tenant_id" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_message_history" (
	"id" INT,
	"type" VARCHAR,
	"context" LONGTEXT,
	"action" VARCHAR,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_department" (
	"code" VARCHAR,
	"parent_code" VARCHAR,
	"name" VARCHAR,
	"valid" INT,
	"modify_time" DATETIME,
	"description" VARCHAR,
	"full_path" VARCHAR,
	"lay_no" INT,
	"sort" INT,
	"dept_type" LONGTEXT,
	"company" LONGTEXT,
	"managers" LONGTEXT,
	"positions" LONGTEXT,
	"tenant_id" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_company" (
	"code" VARCHAR,
	"parent_code" VARCHAR,
	"full_name" VARCHAR,
	"short_name" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"full_path" VARCHAR,
	"lay_no" INT,
	"sort" INT,
	"valid" INT,
	"modify_time" DATETIME,
	"tenant_id" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);
