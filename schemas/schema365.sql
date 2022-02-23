DROP DATABASE IF EXISTS "schema365";
CREATE DATABASE "schema365";
USE "schema365";
CREATE TABLE "employee" (
	"employee_id" CHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"position" VARCHAR,
	 PRIMARY KEY ("employee_id")
);

CREATE TABLE "room" (
	"room_id" BIGSERIAL,
	"name" VARCHAR,
	"room_number" CHAR,
	"bed_info" CHAR,
	 PRIMARY KEY ("room_id")
);
