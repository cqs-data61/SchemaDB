DROP DATABASE IF EXISTS "schema2005";
CREATE DATABASE "schema2005";
USE "schema2005";
CREATE TABLE "all_cities" (
	"city" VARCHAR,
	 PRIMARY KEY ("city")
);

CREATE TABLE "nhl" (
	"team" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"revenue" INT,
	"population" INT,
	"income" INT,
	"points_for" INT,
	"points_against" INT,
	"wins" INT,
	"games" INT,
	"wins_per" DEC,
	 CONSTRAINT "fk_nhl_City" FOREIGN KEY ("city") REFERENCES "all_cities" ("city")
);

CREATE TABLE "nfl" (
	"team" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"revenue" INT,
	"population" INT,
	"income" INT,
	"points_for" INT,
	"points_against" INT,
	"wins" INT,
	"games" INT,
	"wins_per" DEC,
	 CONSTRAINT "fk_nfl_City" FOREIGN KEY ("city") REFERENCES "all_cities" ("city")
);

CREATE TABLE "nba" (
	"team" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"revenue" INT,
	"population" INT,
	"income" INT,
	"points_for" INT,
	"points_against" INT,
	"wins" INT,
	"games" INT,
	"wins_per" DEC,
	 CONSTRAINT "fk_nba_City" FOREIGN KEY ("city") REFERENCES "all_cities" ("city")
);

CREATE TABLE "mls" (
	"team" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"revenue" INT,
	"population" INT,
	"income" INT,
	"points_for" INT,
	"points_against" INT,
	"wins" INT,
	"games" INT,
	"wins_per" DEC,
	 CONSTRAINT "fk_mls_City" FOREIGN KEY ("city") REFERENCES "all_cities" ("city")
);

CREATE TABLE "mlb" (
	"team" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"revenue" INT,
	"population" INT,
	"income" INT,
	"points_for" INT,
	"points_against" INT,
	"wins" INT,
	"games" INT,
	"wins_per" DEC,
	 CONSTRAINT "fk_mlb_City" FOREIGN KEY ("city") REFERENCES "all_cities" ("city")
);
