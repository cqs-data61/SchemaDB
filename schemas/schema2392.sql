DROP DATABASE IF EXISTS "schema2392";
CREATE DATABASE "schema2392";
USE "schema2392";
CREATE TABLE "sub_list" (
	"id" INT,
	"id_sub" INT,
	"id_list" INT,
	"dt_add" DATETIME,
	"dt_uns" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sub" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"is_disabled" TINYINT,
	"hash" VARCHAR,
	"hash_parent" VARCHAR,
	"ip" VARCHAR,
	"dt_add" DATETIME,
	"dt_uns" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "send_list" (
	"id" INT,
	"id_sub" INT,
	"id_email" INT,
	"dt_sent" DATETIME,
	"status" VARCHAR,
	"send_count" INT,
	"mnd_id" VARCHAR,
	"mnd_ts" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedule" (
	"id" INT,
	"id_list" INT,
	"id_email" INT,
	"id_email_prev" INT,
	"delay_days" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project" (
	"id" INT,
	"name" VARCHAR,
	"domain" VARCHAR,
	"url" VARCHAR,
	"email" VARCHAR,
	"mnd_key" VARCHAR,
	"mnd_cb" VARCHAR,
	"is_disabled" TINYINT,
	"dt_add" DATETIME,
	"dt_mod" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mail_list" (
	"id" INT,
	"id_project" INT,
	"name" VARCHAR,
	"url" VARCHAR,
	"from_name" VARCHAR,
	"email" VARCHAR,
	"dt_add" DATETIME,
	"dt_upd" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "email" (
	"id" INT,
	"title" VARCHAR,
	"filename_text" VARCHAR,
	"filename_html" VARCHAR,
	"hash" VARCHAR,
	"dt_add" DATETIME,
	"dt_upd" DATETIME,
	 PRIMARY KEY ("id")
);
