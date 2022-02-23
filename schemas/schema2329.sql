DROP DATABASE IF EXISTS "schema2329";
CREATE DATABASE "schema2329";
USE "schema2329";
CREATE TABLE "bulletin" (
	"bulletin_id" INT,
	"category" VARCHAR,
	"title" VARCHAR,
	"content" TEXT,
	"publish_date" DATETIME,
	"expiry" DATETIME,
	"publish_flag" TINYINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("bulletin_id")
);

CREATE TABLE "skill" (
	"skill_id" INT,
	"skill" VARCHAR,
	"category" TINYINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("skill_id")
);

CREATE TABLE "employee_skill" (
	"employee_id" INT,
	"skill_id" INT,
	"level" TINYINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("employee_id","skill_id")
);

CREATE TABLE "employee" (
	"employee_id" INT,
	"employee_name" VARCHAR,
	"gender" TINYINT,
	"address" VARCHAR,
	"tel" VARCHAR,
	"mail" VARCHAR,
	"login_id" VARCHAR,
	"password" VARCHAR,
	"authority" TINYINT,
	"delete_flag" TINYINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("employee_id")
);

CREATE TABLE "book" (
	"book_id" INT,
	"title" VARCHAR,
	"price" INT,
	"summary" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("book_id")
);
