DROP DATABASE IF EXISTS "schema1391";
CREATE DATABASE "schema1391";
USE "schema1391";
CREATE TABLE "calendar_users" (
	"id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR
);

CREATE TABLE "events" (
	"id" BIGINT,
	"when" TIMESTAMP,
	"summary" VARCHAR,
	"description" VARCHAR,
	"owner" BIGINT,
	"attendee" BIGINT,
	 CONSTRAINT "fkeycon_events_to_calendar_users" FOREIGN KEY ("attendee") REFERENCES "calendar_users" ("id")
);
