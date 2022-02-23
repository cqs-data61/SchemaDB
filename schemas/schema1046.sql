DROP DATABASE IF EXISTS "schema1046";
CREATE DATABASE "schema1046";
USE "schema1046";
CREATE TABLE "users" (
	"user_id" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "locations" (
	"location_id" SERIAL,
	"location_name" VARCHAR,
	"latitude" VARCHAR,
	"longitude" VARCHAR,
	"description" VARCHAR,
	"city" VARCHAR,
	"photo" VARCHAR,
	"visit_during" VARCHAR,
	"added_by" VARCHAR,
	 PRIMARY KEY ("location_id"),
	 CONSTRAINT "fkeycon_locations_to_users" FOREIGN KEY ("added_by") REFERENCES "users" ("user_id")
);

CREATE TABLE "ratings" (
	"location_id" INTEGER,
	"user_id" VARCHAR,
	"liked" BOOLEAN,
	 PRIMARY KEY ("user_id","location_id"),
	 CONSTRAINT "fkeycon_ratings_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_ratings_to_locations" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id")
);
