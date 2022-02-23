DROP DATABASE IF EXISTS "schema559";
CREATE DATABASE "schema559";
USE "schema559";
CREATE TABLE "rental_info" (
	"id" INT,
	"user_id" INT,
	"car_id" INT
);

CREATE TABLE "car" (
	"car_id" INT,
	"car_name" VARCHAR,
	"company" VARCHAR
);

CREATE TABLE "admin" (
	"admin_id" INT,
	"admin_name" VARCHAR
);

CREATE TABLE "user" (
	"user_id" INT,
	"user_name" VARCHAR
);
