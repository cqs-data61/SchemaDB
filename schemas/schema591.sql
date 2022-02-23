DROP DATABASE IF EXISTS "schema591";
CREATE DATABASE "schema591";
USE "schema591";
CREATE TABLE "user_roles" (
	"user_id" BIGINT,
	"role_id" BIGINT
);

CREATE TABLE "roles" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car_details" (
	"details_id" BIGINT,
	"car_id" BIGINT
);

CREATE TABLE "car" (
	"id" BIGSERIAL,
	"age" INTEGER,
	"body" VARCHAR,
	"brand" VARCHAR,
	"deleted" BOOLEAN,
	"drive_unit" VARCHAR,
	"engine_type" VARCHAR,
	"engine_volume" DOUBLE PRECISION,
	"generation" VARCHAR,
	"mile_age" INTEGER,
	"model" VARCHAR,
	"price" INTEGER,
	"transmission" VARCHAR,
	"dec_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "details" (
	"id" BIGSERIAL,
	"detail_name" VARCHAR,
	"detail_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "declaration" (
	"id" BIGSERIAL,
	"date" TIMESTAMP,
	"description" VARCHAR,
	"phone_number" VARCHAR,
	"place" VARCHAR,
	"vendor_name" VARCHAR,
	 PRIMARY KEY ("id")
);
