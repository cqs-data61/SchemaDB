DROP DATABASE IF EXISTS "schema2195";
CREATE DATABASE "schema2195";
USE "schema2195";
CREATE TABLE "tour" (
	"tour_id" INT,
	"direction" VARCHAR,
	"date_tour" DATE,
	 PRIMARY KEY ("tour_id")
);

CREATE TABLE "client" (
	"client_id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"tour_id" INT,
	 PRIMARY KEY ("client_id"),
	 CONSTRAINT "fkeycon_client_to_tour" FOREIGN KEY ("tour_id") REFERENCES "tour" ("tour_id")
);
