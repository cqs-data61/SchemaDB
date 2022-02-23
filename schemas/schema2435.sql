DROP DATABASE IF EXISTS "schema2435";
CREATE DATABASE "schema2435";
USE "schema2435";
CREATE TABLE "updateinfo" (
	"vav_name" VARCHAR,
	"update_time" DATETIME,
	 PRIMARY KEY ("vav_name")
);

CREATE TABLE "alert" (
	"id" INT,
	"time" DATETIME,
	"vav_name" VARCHAR,
	 PRIMARY KEY ("id")
);
