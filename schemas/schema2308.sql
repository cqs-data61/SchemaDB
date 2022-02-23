DROP DATABASE IF EXISTS "schema2308";
CREATE DATABASE "schema2308";
USE "schema2308";
CREATE TABLE "employee" (
	"id" INT,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "room" (
	"room_number" INT,
	"type" VARCHAR,
	"price" NUMERIC,
	"description" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("room_number")
);

CREATE TABLE "guest" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"payment_info" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservation" (
	"r_id" INT,
	"guest_id" INT,
	"adult" INT,
	"children" INT,
	"checkin" DATE,
	"checkout" DATE,
	"room_number" INT,
	"guest" VARCHAR,
	 PRIMARY KEY ("r_id"),
	 CONSTRAINT "fkeycon_reservation_to_room" FOREIGN KEY ("room_number") REFERENCES "room" ("room_number"),
	 CONSTRAINT "fkeycon_reservation_to_guest" FOREIGN KEY ("guest_id") REFERENCES "guest" ("id")
);
