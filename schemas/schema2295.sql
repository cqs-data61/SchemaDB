DROP DATABASE IF EXISTS "schema2295";
CREATE DATABASE "schema2295";
USE "schema2295";
CREATE TABLE "scheduledates" (
	"scheduledate" DATE,
	 PRIMARY KEY ("scheduledate")
);

CREATE TABLE "meetingrooms" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"login" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"creatoruser_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "events_fk0" FOREIGN KEY ("creatoruser_id") REFERENCES "users" ("id")
);

CREATE TABLE "events_scheduledates" (
	"id" INTEGER,
	"scheduledate" DATE,
	"event_id" INTEGER,
	"starttime" TIMETZ,
	"endtime" TIMETZ,
	"meetingroom_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "events_scheduledates_fk2" FOREIGN KEY ("meetingroom_id") REFERENCES "meetingrooms" ("id"),
	 CONSTRAINT "events_scheduledates_fk0" FOREIGN KEY ("event_id") REFERENCES "events" ("id"),
	 CONSTRAINT "events_scheduledates_fk1" FOREIGN KEY ("scheduledate") REFERENCES "scheduledates" ("scheduledate")
);
