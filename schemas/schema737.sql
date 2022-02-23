DROP DATABASE IF EXISTS "schema737";
CREATE DATABASE "schema737";
USE "schema737";
CREATE TABLE "users" (
	"uid" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"pwd" VARCHAR,
	"slack_handle" VARCHAR,
	"reason_for_joining" VARCHAR,
	"country" VARCHAR,
	"region" VARCHAR,
	"city" VARCHAR,
	"post_code" INT,
	"linkedin" VARCHAR,
	"job_title" VARCHAR,
	"main_speciality" VARCHAR,
	"experience" VARCHAR,
	"last_company" VARCHAR,
	"num_employees" INT,
	"sector" VARCHAR,
	"user_type" VARCHAR,
	"current_team_id" INT,
	"date_created" DATE,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "equalithons" (
	"equalithon_id" SERIAL,
	"equalithon_name" VARCHAR,
	"startdate" DATE,
	"enddate" DATE,
	"non_profit" VARCHAR,
	"sponsor" VARCHAR,
	"descript" TEXT,
	"challenge1" INT,
	"challenge2" INT,
	"challenge3" INT,
	"userid" INT,
	 PRIMARY KEY ("equalithon_id"),
	 CONSTRAINT "fkeycon_equalithons_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("uid")
);

CREATE TABLE "challenges" (
	"challenge_id" SERIAL,
	"challenge_descript" TEXT,
	"equalithon_id" INT,
	 PRIMARY KEY ("challenge_id"),
	 CONSTRAINT "fkeycon_challenges_to_equalithons" FOREIGN KEY ("equalithon_id") REFERENCES "equalithons" ("equalithon_id")
);

CREATE TABLE "teams" (
	"team_id" SERIAL,
	"team_name" VARCHAR,
	"team_status" VARCHAR,
	"need" TEXT,
	"team_lead_id" INT,
	"equalithon_id" INT,
	"challenge_id" INT,
	 PRIMARY KEY ("team_id"),
	 CONSTRAINT "fkeycon_teams_to_challenges" FOREIGN KEY ("challenge_id") REFERENCES "challenges" ("challenge_id"),
	 CONSTRAINT "fkeycon_teams_to_equalithons" FOREIGN KEY ("equalithon_id") REFERENCES "equalithons" ("equalithon_id"),
	 CONSTRAINT "fkeycon_teams_to_users" FOREIGN KEY ("team_lead_id") REFERENCES "users" ("uid")
);

CREATE TABLE "user_equalithons" (
	"user_id" INT,
	"equalithon_id" INT,
	"team_id" INT,
	"current" BOOLEAN,
	 CONSTRAINT "fkeycon_user_equalithons_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("uid"),
	 CONSTRAINT "fkeycon_user_equalithons_to_equalithons" FOREIGN KEY ("equalithon_id") REFERENCES "equalithons" ("equalithon_id"),
	 CONSTRAINT "fkeycon_user_equalithons_to_teams" FOREIGN KEY ("team_id") REFERENCES "teams" ("team_id")
);
