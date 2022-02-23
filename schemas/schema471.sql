DROP DATABASE IF EXISTS "schema471";
CREATE DATABASE "schema471";
USE "schema471";
CREATE TABLE "registration" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email_address" VARCHAR,
	"phone_number" VARCHAR,
	"gender" VARCHAR,
	"street" TEXT,
	"city" VARCHAR,
	"country" VARCHAR,
	"zipcode" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event" (
	"id" INT,
	"name" VARCHAR,
	"location" TEXT,
	"event_date" DATE,
	"time" VARCHAR,
	"is_published" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "registration_event" (
	"id" INT,
	"registration_id" INT,
	"event_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_registration_event_registration1" FOREIGN KEY ("registration_id") REFERENCES "registration" ("id"),
	 CONSTRAINT "fk_registration_event_event1" FOREIGN KEY ("event_id") REFERENCES "event" ("id")
);
