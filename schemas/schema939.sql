DROP DATABASE IF EXISTS "schema939";
CREATE DATABASE "schema939";
USE "schema939";
CREATE TABLE "orders" (
	"order_id" BIGSERIAL,
	"user_id" BIGINT,
	"check_in_date" TIMESTAMP,
	"check_out_date" TIMESTAMP,
	"service_level_id" BIGINT,
	"room_id" BIGINT,
	"order_time" TIMESTAMP
);

CREATE TABLE "hotel_rooms" (
	"room_id" BIGSERIAL,
	"number_of_places" INTEGER,
	"service_level" BIGINT,
	"price" BIGINT,
	 PRIMARY KEY ("room_id")
);

CREATE TABLE "service_levels" (
	"level_id" BIGSERIAL,
	"class_type" CHAR
);

CREATE TABLE "users" (
	"user_id" BIGSERIAL,
	"role_id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "roles" (
	"role_id" BIGSERIAL,
	"role_name" VARCHAR,
	 PRIMARY KEY ("role_id")
);
