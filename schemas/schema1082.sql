DROP DATABASE IF EXISTS "schema1082";
CREATE DATABASE "schema1082";
USE "schema1082";
CREATE TABLE "guest" (
	"guest_id" BIGSERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email_address" VARCHAR,
	"address" VARCHAR,
	"country" VARCHAR,
	"state" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("guest_id")
);

CREATE TABLE "room" (
	"room_id" BIGSERIAL,
	"name" VARCHAR,
	"room_number" CHAR,
	"bed_info" CHAR,
	 PRIMARY KEY ("room_id")
);

CREATE TABLE "reservation" (
	"reservation_id" BIGSERIAL,
	"room_id" BIGINT,
	"guest_id" BIGINT,
	"res_date" DATE,
	 PRIMARY KEY ("reservation_id"),
	 CONSTRAINT "fkeycon_reservation_to_room" FOREIGN KEY ("room_id") REFERENCES "room" ("room_id"),
	 CONSTRAINT "fkeycon_reservation_to_guest" FOREIGN KEY ("guest_id") REFERENCES "guest" ("guest_id")
);
