DROP DATABASE IF EXISTS "schema586";
CREATE DATABASE "schema586";
USE "schema586";
CREATE TABLE "outcome_display_detail" (
	"id" SERIAL,
	"column_name" VARCHAR,
	"title" VARCHAR,
	"element_type_plugin_code" VARCHAR,
	"is_text_column" BOOLEAN,
	"parameters" LONGTEXT,
	"outcome_display_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "outcome_display_table" (
	"id" SERIAL,
	"column_name" VARCHAR,
	"is_text_column" BOOLEAN,
	"title" VARCHAR,
	"outcome_display_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "outcome_display" (
	"id" SERIAL,
	"table_name" VARCHAR,
	"plural_table_name" VARCHAR,
	"title" VARCHAR,
	"code" VARCHAR,
	"detail_column_name" VARCHAR,
	 PRIMARY KEY ("id")
);
