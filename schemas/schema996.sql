DROP DATABASE IF EXISTS "schema996";
CREATE DATABASE "schema996";
USE "schema996";
CREATE TABLE "reservation" (
	"reservation_id" BIGINT,
	"room_id" BIGINT,
	"guest_id" BIGINT,
	"res_date" DATE,
	 PRIMARY KEY ("reservation_id")
);

CREATE TABLE "guest" (
	"guest_id" BIGINT,
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
	"room_id" BIGINT,
	"name" VARCHAR,
	"room_number" CHAR,
	"bed_info" CHAR,
	 PRIMARY KEY ("room_id")
);
