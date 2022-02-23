DROP DATABASE IF EXISTS "schema2116";
CREATE DATABASE "schema2116";
USE "schema2116";
CREATE TABLE "reports" (
	"id" INT,
	"_date" DATE,
	"event_time" TIME,
	"topic" VARCHAR,
	"length_of_meeting" TIME,
	"member_attended" TEXT,
	"guest_attended" TEXT,
	"group_name_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "guests" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" VARCHAR,
	"ischild" BOOLEAN,
	"group_name_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "member" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"ischild" BOOLEAN,
	"group_name_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "grupo" (
	"id" INT,
	"group_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"password" BINARY,
	"role" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id")
);
