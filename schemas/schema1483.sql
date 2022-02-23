DROP DATABASE IF EXISTS "schema1483";
CREATE DATABASE "schema1483";
USE "schema1483";
CREATE TABLE "wb_user_tokens" (
	"id" INT,
	"user_id" INT,
	"user_agent" VARCHAR,
	"token" VARCHAR,
	"created" INT,
	"expires" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_user_pending" (
	"id" INT,
	"type" VARCHAR,
	"user_id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"valid_until" VARCHAR,
	"reference" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_users" (
	"id" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" CHAR,
	"logins" INT,
	"last_login" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_templates" (
	"id" INT,
	"active" TINYINT,
	"name" VARCHAR,
	"standardlayout" VARCHAR,
	"description" VARCHAR,
	"folder" VARCHAR,
	"folder_css" VARCHAR,
	"folder_js" VARCHAR,
	"folder_views" VARCHAR,
	"folder_images" VARCHAR,
	"folder_preview" VARCHAR,
	"previewimage_filename" VARCHAR,
	"previewimage_description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_system_settings" (
	"id" INT,
	"fieldname" VARCHAR,
	"content" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_structure_column_mappings" (
	"id" INT,
	"structure_id" INT,
	"column" TINYINT,
	"module_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_structure_options" (
	"id" INT,
	"structure_id" INT,
	"file_id" INT,
	"backgrounddescription" VARCHAR,
	"headline1" VARCHAR,
	"headline2" VARCHAR,
	"headline3" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_structures" (
	"id" INT,
	"active" VARCHAR,
	"position" TINYINT,
	"title" VARCHAR,
	"description" VARCHAR,
	"layout_id" INT,
	"user_id" INT,
	"language_id" INT,
	"mainnavigation" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_roles_users" (
	"user_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("user_id","role_id")
);

CREATE TABLE "wb_roles" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_modules" (
	"id" INT,
	"template_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"view" VARCHAR,
	"allowarticles" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_loadfiles" (
	"id" INT,
	"template_id" INT,
	"filename" VARCHAR,
	"type" VARCHAR,
	"custom_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_layouts" (
	"id" INT,
	"template_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"view" VARCHAR,
	"columns" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_languages" (
	"id" INT,
	"name" VARCHAR,
	"shortform" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_files" (
	"id" INT,
	"active" TINYINT,
	"user_id" INT,
	"filename" VARCHAR,
	"type" VARCHAR,
	"description" VARCHAR,
	"creationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wb_articles" (
	"id" INT,
	"position" INT,
	"structure_column_mapping_id" INT,
	"language_id" INT,
	"active" TINYINT,
	"user_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"backgroundcolor" VARCHAR,
	"teaser" TEXT,
	"content" TEXT,
	 PRIMARY KEY ("id")
);
