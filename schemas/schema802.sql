DROP DATABASE IF EXISTS "schema802";
CREATE DATABASE "schema802";
USE "schema802";
CREATE TABLE "userservice" (
	"user_id" INT,
	"service_id" INT
);

CREATE TABLE "service" (
	"service_id" INT,
	"service_name" VARCHAR
);

CREATE TABLE "user" (
	"user_id" INT,
	"user_name" VARCHAR,
	"birthdate" DATE,
	"password" VARCHAR
);
