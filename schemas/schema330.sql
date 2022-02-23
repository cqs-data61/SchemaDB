DROP DATABASE IF EXISTS "schema330";
CREATE DATABASE "schema330";
USE "schema330";
CREATE TABLE "myusers" (
	"user_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"birth_date" DATE
);

CREATE TABLE "timetable" (
	"timetableid" INT,
	"stationid" INT,
	"departuretime" TIMESTAMP,
	 PRIMARY KEY ("timetableid")
);

CREATE TABLE "station" (
	"stationid" INT,
	"name" VARCHAR
);

CREATE TABLE "train" (
	"train_id" INT,
	"train_number" INT,
	"availableseats" INT
);

CREATE TABLE "ticket" (
	"ticketid" INT,
	"train_id" INT,
	"user_id" INT,
	 CONSTRAINT "items_ibfk_2" FOREIGN KEY ("train_id") REFERENCES "train" ("train_id")
);

CREATE TABLE "timetable_item" (
	"timetable_id" INT,
	"train_id" INT,
	"stationid" INT,
	"departuretime" TIMESTAMP,
	 PRIMARY KEY ("timetable_id"),
	 CONSTRAINT "items_ibfk_1" FOREIGN KEY ("train_id") REFERENCES "train" ("train_id")
);
