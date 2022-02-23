DROP DATABASE IF EXISTS "schema1851";
CREATE DATABASE "schema1851";
USE "schema1851";
CREATE TABLE "usr" (
	"user_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"password" VARCHAR,
	"role_name" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "meeting_room" (
	"room_id" SERIAL,
	"room_name" VARCHAR,
	 PRIMARY KEY ("room_id")
);

CREATE TABLE "reservable_room" (
	"reserved_date" DATE,
	"room_id" INT4,
	 PRIMARY KEY ("reserved_date","room_id"),
	 CONSTRAINT "fk_room_id" FOREIGN KEY ("user_id") REFERENCES "usr" ("user_id")
);

CREATE TABLE "reservation" (
	"reservation_id" SERIAL,
	"end_time" TIME,
	"start_time" TIME,
	"reserved_date" DATE,
	"room_id" INT4,
	"user_id" VARCHAR,
	 PRIMARY KEY ("reservation_id"),
	 CONSTRAINT "fk_reserved_date_room_id" FOREIGN KEY ("reserved_date","room_id") REFERENCES "reservable_room" ("reserved_date","room_id"),
	 CONSTRAINT "fk_room_id" FOREIGN KEY ("user_id") REFERENCES "usr" ("user_id")
);
