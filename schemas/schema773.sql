DROP DATABASE IF EXISTS "schema773";
CREATE DATABASE "schema773";
USE "schema773";
CREATE TABLE "machine_type" (
	"id" INTEGER,
	"type_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "machine" (
	"id" INTEGER,
	"machine_id" VARCHAR,
	"machine_type_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "machine_fk" FOREIGN KEY ("machine_type_id") REFERENCES "machine_type" ("id")
);

CREATE TABLE "error_definition" (
	"code" INTEGER,
	"detail" VARCHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "error" (
	"id" BIGINT,
	"error_id" VARCHAR,
	"error_code" INTEGER,
	"time_stamp" DATETIME,
	"machine_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "error_fk_1" FOREIGN KEY ("machine_id") REFERENCES "machine" ("id"),
	 CONSTRAINT "error_fk" FOREIGN KEY ("error_code") REFERENCES "error_definition" ("code")
);
