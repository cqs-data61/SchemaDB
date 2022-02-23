DROP DATABASE IF EXISTS "schema1485";
CREATE DATABASE "schema1485";
USE "schema1485";
CREATE TABLE "tester_device" (
	"tester_id" BIGINT,
	"device_id" BIGINT
);

CREATE TABLE "tester" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"country" VARCHAR,
	"last_login" TIMESTAMP
);

CREATE TABLE "device" (
	"id" BIGINT,
	"description" VARCHAR
);

CREATE TABLE "bug" (
	"id" BIGINT,
	"device_id" BIGINT,
	"tester_id" BIGINT
);
