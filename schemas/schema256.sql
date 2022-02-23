DROP DATABASE IF EXISTS "schema256";
CREATE DATABASE "schema256";
USE "schema256";
CREATE TABLE "document" (
	"data_storage" INT,
	"description" TEXT,
	"importance" VARCHAR,
	"version" INT,
	"old_version" INT,
	 PRIMARY KEY ("data_storage")
);

CREATE TABLE "data_storage" (
	"id" INT,
	"parent_id" INT,
	"name" VARCHAR,
	"creation_date" DATE,
	"link_on_disk" TEXT,
	"author" VARCHAR,
	"folder" BOOLEAN
);

CREATE TABLE "user" (
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("email")
);

CREATE TABLE "permissions" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "importance" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "role" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);
