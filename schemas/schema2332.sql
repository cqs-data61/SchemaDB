DROP DATABASE IF EXISTS "schema2332";
CREATE DATABASE "schema2332";
USE "schema2332";
CREATE TABLE "resources" (
	"id" VARCHAR,
	"metal" INTEGER,
	"hydrate" INTEGER,
	"ether" INTEGER,
	"antimatter" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "buildings" (
	"id" VARCHAR,
	"building_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "technologies" (
	"id" VARCHAR,
	"technology_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "field" (
	"id" VARCHAR,
	"pos_x" INTEGER,
	"pos_y" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "planets" (
	"id" VARCHAR,
	"field_id" VARCHAR,
	"name" VARCHAR,
	"resources_id" VARCHAR,
	"is_colonized" BOOLEAN,
	"buildings_id" VARCHAR,
	"last_visit" DATE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_fields" FOREIGN KEY ("field_id") REFERENCES "field" ("id"),
	 CONSTRAINT "fk_buildings" FOREIGN KEY ("buildings_id") REFERENCES "buildings" ("id")
);

CREATE TABLE "statistics" (
	"id" VARCHAR,
	"attack" INTEGER,
	"defence" INTEGER,
	"radius" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "player" (
	"id" VARCHAR,
	"name" VARCHAR,
	"field_id" VARCHAR,
	"statistics_id" VARCHAR,
	"technologies_id" VARCHAR,
	"planet_id" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_fields" FOREIGN KEY ("field_id") REFERENCES "field" ("id"),
	 CONSTRAINT "fk_statistics" FOREIGN KEY ("statistics_id") REFERENCES "statistics" ("id"),
	 CONSTRAINT "fk_technologies" FOREIGN KEY ("technologies_id") REFERENCES "technologies" ("id"),
	 CONSTRAINT "fk_planets" FOREIGN KEY ("planet_id") REFERENCES "planets" ("id")
);
