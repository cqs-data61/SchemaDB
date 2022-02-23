DROP DATABASE IF EXISTS "schema2301";
CREATE DATABASE "schema2301";
USE "schema2301";
CREATE TABLE "location" (
	"location_id" INT,
	"name" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("location_id")
);

CREATE TABLE "squirrel" (
	"squirrel_id" INT,
	"species" VARCHAR,
	"common_name" VARCHAR,
	"habitat" VARCHAR,
	"image_file_name" VARCHAR,
	 PRIMARY KEY ("squirrel_id")
);

CREATE TABLE "sighting" (
	"sighting_id" IDENTITY,
	"squirrel_id" INT,
	"spotter_name" VARCHAR,
	"location_id" INT,
	"count" INT,
	"spotted_at" TIMESTAMP,
	"temp" INT,
	 CONSTRAINT "fkeycon_sighting_to_squirrel" FOREIGN KEY ("squirrel_id") REFERENCES "squirrel" ("squirrel_id"),
	 CONSTRAINT "fkeycon_sighting_to_location" FOREIGN KEY ("location_id") REFERENCES "location" ("location_id")
);
