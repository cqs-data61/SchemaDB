DROP DATABASE IF EXISTS "schema130";
CREATE DATABASE "schema130";
USE "schema130";
CREATE TABLE "fuel_users" (
	"id" INT,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"language" VARCHAR,
	"reset_key" VARCHAR,
	"salt" VARCHAR,
	"super_admin" ENUM,
	"active" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_tags" (
	"id" INT,
	"name" VARCHAR,
	"category_id" INT,
	"slug" VARCHAR,
	"description" TEXT,
	"context" VARCHAR,
	"language" VARCHAR,
	"precedence" INT,
	"published" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_site_variables" (
	"id" INT,
	"name" VARCHAR,
	"value" TEXT,
	"scope" VARCHAR,
	"active" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_settings" (
	"id" BIGINT,
	"module" VARCHAR,
	"key" VARCHAR,
	"value" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_relationships" (
	"id" BIGINT,
	"candidate_table" VARCHAR,
	"candidate_key" INT,
	"foreign_table" VARCHAR,
	"foreign_key" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_permissions" (
	"id" INT,
	"description" VARCHAR,
	"name" VARCHAR,
	"active" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_pages" (
	"id" INT,
	"location" VARCHAR,
	"layout" VARCHAR,
	"published" ENUM,
	"cache" ENUM,
	"date_added" DATETIME,
	"last_modified" TIMESTAMP,
	"last_modified_by" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_page_variables" (
	"id" INT,
	"page_id" INT,
	"name" VARCHAR,
	"scope" VARCHAR,
	"value" LONGTEXT,
	"type" ENUM,
	"language" VARCHAR,
	"active" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_navigation_groups" (
	"id" INT,
	"name" VARCHAR,
	"published" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_navigation" (
	"id" INT,
	"location" VARCHAR,
	"group_id" INT,
	"nav_key" VARCHAR,
	"label" VARCHAR,
	"parent_id" INT,
	"precedence" INT,
	"attributes" VARCHAR,
	"selected" VARCHAR,
	"hidden" ENUM,
	"language" VARCHAR,
	"published" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_logs" (
	"id" INT,
	"entry_date" DATETIME,
	"user_id" INT,
	"message" TEXT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_categories" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"context" VARCHAR,
	"language" VARCHAR,
	"precedence" INT,
	"parent_id" INT,
	"published" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_blocks" (
	"id" SMALLINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"view" TEXT,
	"language" VARCHAR,
	"published" ENUM,
	"date_added" DATETIME,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fuel_archives" (
	"id" INT,
	"ref_id" INT,
	"table_name" VARCHAR,
	"data" TEXT,
	"version" SMALLINT,
	"version_timestamp" TIMESTAMP,
	"archived_user_id" INT,
	 PRIMARY KEY ("id")
);
