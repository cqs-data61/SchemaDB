DROP DATABASE IF EXISTS "schema92";
CREATE DATABASE "schema92";
USE "schema92";
CREATE TABLE "vendor" (
	"internal_id" BIGINT,
	"vendor_id" VARCHAR,
	"vendor_name" VARCHAR,
	 PRIMARY KEY ("internal_id")
);

CREATE TABLE "user" (
	"internal_id" BIGINT,
	"user_id" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"admin" TINYINT,
	 PRIMARY KEY ("internal_id")
);
