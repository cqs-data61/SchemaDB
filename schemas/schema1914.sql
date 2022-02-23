DROP DATABASE IF EXISTS "schema1914";
CREATE DATABASE "schema1914";
USE "schema1914";
CREATE TABLE "contacts" (
	"id" INT,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"name" VARCHAR,
	"gender" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partners" (
	"id" INT,
	"enterprise_name" VARCHAR,
	"address" VARCHAR,
	"contact_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_partners_to_contacts" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("id")
);

CREATE TABLE "competitions" (
	"id" INT,
	"comp_name" VARCHAR,
	"venue" VARCHAR,
	"start_date_time" TIMESTAMP,
	"end_date_time" TIMESTAMP,
	"comp_year" INT,
	"max_men" INT,
	"max_women" INT,
	"partner_id" INT,
	"contact_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_competitions_to_partners" FOREIGN KEY ("partner_id") REFERENCES "partners" ("id"),
	 CONSTRAINT "fkeycon_competitions_to_contacts" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("id")
);

CREATE TABLE "events" (
	"id" INT,
	"event_name" VARCHAR,
	"main_score_type" ENUM,
	"time_capped_type" ENUM,
	"tie_breaker_type" ENUM,
	"gender" CHAR,
	"comp_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_events_to_competitions" FOREIGN KEY ("comp_id") REFERENCES "competitions" ("id")
);

CREATE TABLE "athletes" (
	"id" INT,
	"name" VARCHAR,
	"date_of_birth" DATE,
	"gender" CHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "results" (
	"athlete_id" INT,
	"event_id" INT,
	"main_score" INT,
	"time_capped_score" INT,
	"tie_breaker_score" INT,
	 PRIMARY KEY ("athlete_id","event_id"),
	 CONSTRAINT "fkeycon_results_to_athletes" FOREIGN KEY ("athlete_id") REFERENCES "athletes" ("id"),
	 CONSTRAINT "fkeycon_results_to_events" FOREIGN KEY ("event_id") REFERENCES "events" ("id")
);

CREATE TABLE "register" (
	"comp_id" INT,
	"athlete_id" INT,
	 PRIMARY KEY ("comp_id","athlete_id"),
	 CONSTRAINT "fkeycon_register_to_athletes" FOREIGN KEY ("athlete_id") REFERENCES "athletes" ("id"),
	 CONSTRAINT "fkeycon_register_to_competitions" FOREIGN KEY ("comp_id") REFERENCES "competitions" ("id")
);
