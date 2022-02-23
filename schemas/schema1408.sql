DROP DATABASE IF EXISTS "schema1408";
CREATE DATABASE "schema1408";
USE "schema1408";
CREATE TABLE "preference" (
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "quicklisp_download_stats" (
	"project_name" VARCHAR,
	"download_count" INTEGER
);

CREATE TABLE "repos_info" (
	"project_name" VARCHAR,
	"type" ENUM,
	"repos_id" TINYTEXT,
	"description" TEXT,
	"homepage_url" TINYTEXT,
	"watch_count" INTEGER,
	"forks_count" INTEGER,
	"stars_count" INTEGER,
	"created_at" INTEGER,
	"updated_at" INTEGER
);

CREATE TABLE "cliki_project_category" (
	"project_name" VARCHAR,
	"category" VARCHAR
);

CREATE TABLE "cliki" (
	"project_name" VARCHAR,
	"body" TEXT,
	"updated_at" INTEGER
);

CREATE TABLE "project" (
	"id" BIGINT,
	"ql_dist_version" CHAR,
	"name" VARCHAR,
	"release_version" CHAR,
	"homepage_url" TINYTEXT,
	"repos_url" TINYTEXT,
	"archive_url" TINYTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system" (
	"id" BIGINT,
	"project_id" BIGINT,
	"name" VARCHAR,
	"version" VARCHAR,
	"description" TEXT,
	"long_description" TEXT,
	"homepage_url" TINYTEXT,
	"license" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_system_to_project" FOREIGN KEY ("project_id") REFERENCES "project" ("id")
);

CREATE TABLE "system_extracted_info" (
	"system_id" BIGINT,
	"packages" LONGTEXT,
	"failed" TINYINT,
	"error_log" TEXT,
	 CONSTRAINT "fkeycon_system_extracted_info_to_system" FOREIGN KEY ("system_id") REFERENCES "system" ("id")
);

CREATE TABLE "system_dependencies" (
	"id" BIGINT,
	"system_id" BIGINT,
	"depends_system_id" BIGINT,
	"is_for_defsystem" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_system_dependencies_to_system" FOREIGN KEY ("depends_system_id") REFERENCES "system" ("id")
);

CREATE TABLE "system_author" (
	"id" BIGINT,
	"system_id" BIGINT,
	"author_name" VARCHAR,
	"type" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_system_author_to_system" FOREIGN KEY ("system_id") REFERENCES "system" ("id")
);

CREATE TABLE "project_readme" (
	"project_id" BIGINT,
	"filename" TINYTEXT,
	"raw" TEXT,
	"converted" TEXT,
	 CONSTRAINT "fkeycon_project_readme_to_project" FOREIGN KEY ("project_id") REFERENCES "project" ("id")
);
