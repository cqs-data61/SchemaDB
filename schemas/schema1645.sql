DROP DATABASE IF EXISTS "schema1645";
CREATE DATABASE "schema1645";
USE "schema1645";
CREATE TABLE "venue" (
	"id" SERIAL,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"province" VARCHAR,
	"country_code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subcategory" (
	"id" INT,
	"desc" VARCHAR,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"desc" VARCHAR,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_type" (
	"id" INT,
	"desc" VARCHAR,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usertype" (
	"id" INT,
	"desc" VARCHAR,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"title" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"usertype" INT,
	"date_of_birth" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_usertype" FOREIGN KEY ("usertype") REFERENCES "usertype" ("id")
);

CREATE TABLE "events" (
	"id" SERIAL,
	"title" VARCHAR,
	"description" VARCHAR,
	"banner_image" VARCHAR,
	"start_date" TIMESTAMP,
	"end_date" TIMESTAMP,
	"venue" INT,
	"type" INT,
	"user_id" INT,
	"category" INT,
	"subcategory" INT,
	"status" VARCHAR,
	"image1" VARCHAR,
	"image2" VARCHAR,
	"image3" VARCHAR,
	"video1" VARCHAR,
	"video2" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_events_to_subcategory" FOREIGN KEY ("subcategory") REFERENCES "subcategory" ("id"),
	 CONSTRAINT "fkeycon_events_to_category" FOREIGN KEY ("category") REFERENCES "category" ("id"),
	 CONSTRAINT "fkeycon_events_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_events_to_venue" FOREIGN KEY ("venue") REFERENCES "venue" ("id"),
	 CONSTRAINT "fkeycon_events_to_event_type" FOREIGN KEY ("type") REFERENCES "event_type" ("id")
);
