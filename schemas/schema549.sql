DROP DATABASE IF EXISTS "schema549";
CREATE DATABASE "schema549";
USE "schema549";
CREATE TABLE "user" (
	"id" INT,
	"credit" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_roles" (
	"user_id" INT,
	"roles" INT,
	 CONSTRAINT "FK55itppkw3i07do3h7qoclqd4k" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "rider_info" (
	"id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location" (
	"id" INT,
	"lat" DOUBLE,
	"lng" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "driver_info" (
	"id" INT,
	"car_model" VARCHAR,
	"car_tag" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trip" (
	"id" INT,
	"pay_ment" INT,
	"status" INT,
	"driver_id" INT,
	"end_location_id" INT,
	"rider_id" INT,
	"start_location_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKsk6kcvu7ghs8y9fct2obokp8q" FOREIGN KEY ("end_location_id") REFERENCES "location" ("id"),
	 CONSTRAINT "FKhualmn1fgip0dsresdttm1hky" FOREIGN KEY ("rider_id") REFERENCES "rider_info" ("id"),
	 CONSTRAINT "FK5prb1v56d7o09bf5w1p1ro73o" FOREIGN KEY ("start_location_id") REFERENCES "location" ("id"),
	 CONSTRAINT "FKr24c951t3pqp09u49lxentd45" FOREIGN KEY ("driver_id") REFERENCES "driver_info" ("id")
);
