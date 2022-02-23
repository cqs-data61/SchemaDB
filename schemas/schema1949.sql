DROP DATABASE IF EXISTS "schema1949";
CREATE DATABASE "schema1949";
USE "schema1949";
CREATE TABLE "results" (
	"athlete_id" VARCHAR,
	"comp_name" VARCHAR,
	"event_name" VARCHAR,
	"time" TIME,
	"reps" INT,
	"weight" INT,
	"tiebreaker1success" BOOLEAN,
	"tiebreaker2success" BOOLEAN,
	 PRIMARY KEY ("athlete_id","comp_name","event_name")
);

CREATE TABLE "contacts" (
	"email" VARCHAR,
	"name" VARCHAR,
	"phone" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("email")
);

CREATE TABLE "partners" (
	"name" VARCHAR,
	"address" VARCHAR,
	"contact_email" VARCHAR,
	 PRIMARY KEY ("name"),
	 CONSTRAINT "fkeycon_partners_to_contacts" FOREIGN KEY ("contact_email") REFERENCES "contacts" ("email")
);

CREATE TABLE "competitions" (
	"comp_name" VARCHAR,
	"venue" VARCHAR,
	"startdate" DATE,
	"starttime" TIME,
	"duration" TIME,
	"max_athletes" INT,
	"events" INT,
	"partner_name" VARCHAR,
	"contact_email" VARCHAR,
	 PRIMARY KEY ("comp_name")
);

CREATE TABLE "events" (
	"event_name" VARCHAR,
	"comp_name" VARCHAR,
	"scoring_type" VARCHAR,
	 PRIMARY KEY ("event_name"),
	 CONSTRAINT "fkeycon_events_to_competitions" FOREIGN KEY ("comp_name") REFERENCES "competitions" ("comp_name")
);

CREATE TABLE "migrations" (
	"mig_id" VARCHAR,
	"migrated_at" TIME,
	 PRIMARY KEY ("mig_id")
);

CREATE TABLE "athletes" (
	"id" VARCHAR,
	"athlname" VARCHAR,
	"dob" DATE,
	"gender" VARCHAR,
	"nationality" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "registrations" (
	"id" VARCHAR,
	"comp_name" VARCHAR,
	 PRIMARY KEY ("id","comp_name"),
	 CONSTRAINT "fkeycon_registrations_to_competitions" FOREIGN KEY ("comp_name") REFERENCES "competitions" ("comp_name"),
	 CONSTRAINT "fkeycon_registrations_to_athletes" FOREIGN KEY ("id") REFERENCES "athletes" ("id")
);
