DROP DATABASE IF EXISTS "schema1589";
CREATE DATABASE "schema1589";
USE "schema1589";
CREATE TABLE "crew_members" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"position" VARCHAR,
	"birthday" DATE,
	"citizenship" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "crews" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "crews_crew_members" (
	"crew_id" BIGINT,
	"crew_member_id" BIGINT,
	 PRIMARY KEY ("crew_id","crew_member_id"),
	 CONSTRAINT "fk_crews_crew_members" FOREIGN KEY ("crew_id") REFERENCES "crews" ("id"),
	 CONSTRAINT "fk_crew_members_crews" FOREIGN KEY ("crew_member_id") REFERENCES "crew_members" ("id")
);

CREATE TABLE "airplanes" (
	"id" SERIAL,
	"code_name" VARCHAR,
	"model" VARCHAR,
	"manufacture_date" DATE,
	"capacity" INT,
	"flight_range" INT,
	"crew_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "airplanes_crews_fk" FOREIGN KEY ("crew_id") REFERENCES "crews" ("id")
);
