DROP DATABASE IF EXISTS "schema430";
CREATE DATABASE "schema430";
USE "schema430";
CREATE TABLE "user" (
	"id" INT8,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"active_status" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies" (
	"id" INT8,
	"name" VARCHAR,
	"running_time_hour" FLOAT4,
	"language" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "theater" (
	"id" INT8,
	"name" VARCHAR,
	"contact_number" VARCHAR,
	"address" VARCHAR,
	"pin_code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "branch" (
	"id" INT8,
	"name" VARCHAR,
	"theater_id" INT8,
	"contact_number" VARCHAR,
	"address" VARCHAR,
	"pin_code" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "branch_fk" FOREIGN KEY ("id") REFERENCES "theater" ("id")
);

CREATE TABLE "screens" (
	"id" INT8,
	"id" INT8,
	"name" VARCHAR,
	"name" VARCHAR,
	"branch_id" INT8,
	"capacity" INT8,
	"size" VARCHAR,
	"status" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "screens_fk" FOREIGN KEY ("branch_id") REFERENCES "branch" ("id")
);

CREATE TABLE "show" (
	"id" INT8,
	"movie_id" INT8,
	"screens_id" INT8,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "movie_show_fk_1" FOREIGN KEY ("movie_id") REFERENCES "movies" ("id"),
	 CONSTRAINT "movie_show_fk" FOREIGN KEY ("screens_id") REFERENCES "screens" ("id")
);

CREATE TABLE "seat" (
	"id" INT8,
	"number" INT4,
	"screens_id" INT8,
	"row" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_screens_seats_screens" FOREIGN KEY ("screens_id") REFERENCES "screens" ("id")
);

CREATE TABLE "shows_seat" (
	"id" INT8,
	"show_id" INT8,
	"price" NUMERIC,
	"seat_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_show_seat_id" FOREIGN KEY ("seat_id") REFERENCES "seat" ("id"),
	 CONSTRAINT "fk_seat_show" FOREIGN KEY ("show_id") REFERENCES "show" ("id")
);

CREATE TABLE "booked_seat" (
	"id" INT8,
	"user_id" INT8,
	"show_seat_id" INT8,
	"booked_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_reserved_seats_seat" FOREIGN KEY ("show_seat_id") REFERENCES "shows_seat" ("id"),
	 CONSTRAINT "reserved_seats_fk" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "blocked_seat" (
	"id" INT8,
	"user_id" INT8,
	"show_seat_id" INT8,
	"blocked_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_blocked_seats_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fk_blocked_seats_seat" FOREIGN KEY ("show_seat_id") REFERENCES "shows_seat" ("id")
);
