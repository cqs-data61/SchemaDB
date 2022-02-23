DROP DATABASE IF EXISTS "schema1203";
CREATE DATABASE "schema1203";
USE "schema1203";
CREATE TABLE "users_to_roles" (
	"userroles_id" INT,
	"users_id" INT
);

CREATE TABLE "users" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"birth_date" DATE,
	"pesel" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "userroles" (
	"id" INT,
	"type" VARCHAR
);

CREATE TABLE "rentalstatuscodes" (
	"rent_status" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "rentals" (
	"id" INT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"total_cost" DECIMAL,
	"rentalstatus" VARCHAR,
	"car_id" INT,
	"user_id" INT,
	"password" VARCHAR
);

CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);

CREATE TABLE "carstatus" (
	"car_status" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "cars" (
	"id" INT,
	"brand" VARCHAR,
	"model" VARCHAR,
	"price" VARCHAR,
	"status" VARCHAR
);

CREATE TABLE "cardetails" (
	"car_id" INT,
	"type" VARCHAR,
	"year" INT,
	"fuel_type" VARCHAR,
	"power" VARCHAR,
	"gearbox" VARCHAR,
	"color" VARCHAR,
	"photo" VARCHAR,
	"description" VARCHAR,
	"doors_number" INT
);
