DROP DATABASE IF EXISTS "schema789";
CREATE DATABASE "schema789";
USE "schema789";
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
	"reserved_date" TIMESTAMP,
	"room_id" INT4,
	 PRIMARY KEY ("reserved_date","room_id"),
	 CONSTRAINT "fk_f4wnx2qj0d59s9tl1q5800fw7" FOREIGN KEY ("room_id") REFERENCES "meeting_room" ("room_id")
);

CREATE TABLE "reservation" (
	"reservation_id" SERIAL,
	"end_time" TIME,
	"start_time" TIME,
	"reserved_date" TIMESTAMP,
	"room_id" INT4,
	"user_id" VARCHAR,
	 PRIMARY KEY ("reservation_id"),
	 CONSTRAINT "fk_recqnfjcp370rygd9hjjxjtg" FOREIGN KEY ("user_id") REFERENCES "usr" ("user_id"),
	 CONSTRAINT "fk_p1k4iriqd4eo1cpnv79uvni9g" FOREIGN KEY ("reserved_date","room_id") REFERENCES "reservable_room" ("reserved_date","room_id")
);
