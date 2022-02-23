DROP DATABASE IF EXISTS "schema2507";
CREATE DATABASE "schema2507";
USE "schema2507";
CREATE TABLE "release_system" (
	"id" VARCHAR,
	"release_id" VARCHAR,
	"name" TEXT,
	"system_file_name" TEXT,
	"required_systems" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "release" (
	"id" VARCHAR,
	"project_name" TEXT,
	"archive_url" TEXT,
	"archive_size" INTEGER,
	"archive_content_sha1" VARCHAR,
	"prefix" TEXT,
	"systems_metadata_url" TEXT,
	"readme_url" TEXT,
	"upstream_url" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "readme_file" (
	"id" VARCHAR,
	"readme_id" VARCHAR,
	"filename" TEXT,
	"content" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "readme" (
	"id" VARCHAR,
	"name" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "metadata_defsystem_depends_on" (
	"id" VARCHAR,
	"system_metadata_id" VARCHAR,
	"name" TEXT,
	"version" TEXT,
	"feature" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "metadata_depends_on" (
	"id" VARCHAR,
	"system_metadata_id" VARCHAR,
	"name" TEXT,
	"version" TEXT,
	"feature" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "metadata_weakly_depends_on" (
	"id" VARCHAR,
	"system_metadata_id" VARCHAR,
	"name" TEXT,
	"version" TEXT,
	"feature" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "abstract_metadata_depends_on" (
	"id" VARCHAR,
	"system_metadata_id" VARCHAR,
	"name" TEXT,
	"version" TEXT,
	"feature" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system" (
	"id" VARCHAR,
	"name" TEXT,
	"system_file_name" TEXT,
	"required_systems" TEXT,
	"metadata_id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system_metadata" (
	"id" VARCHAR,
	"name" TEXT,
	"long_name" TEXT,
	"version" TEXT,
	"description" TEXT,
	"long_description" TEXT,
	"author" TEXT,
	"maintainer" TEXT,
	"mailto" TEXT,
	"license" TEXT,
	"homepage" TEXT,
	"bug_tracker" TEXT,
	"source_control" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
