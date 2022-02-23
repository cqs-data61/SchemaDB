DROP DATABASE IF EXISTS "schema280";
CREATE DATABASE "schema280";
USE "schema280";
CREATE TABLE "account" (
	"id" INT,
	"joined" TIMESTAMP,
	"status" VARCHAR,
	"prem_start" TIMESTAMP,
	"prem_end" TIMESTAMP
);

CREATE TABLE "person" (
	"account_id" INT,
	"email" VARCHAR,
	"sex" VARCHAR,
	"birth" TIMESTAMP,
	"name" VARCHAR,
	"surname" VARCHAR,
	"phone" VARCHAR,
	"country_id" INT,
	"city_id" INT
);

CREATE TABLE "likes" (
	"liker_id" INT,
	"likee_id" INT,
	"ts" TIMESTAMP
);

CREATE TABLE "interest" (
	"account_id" INT,
	"name" VARCHAR
);

CREATE TABLE "country" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "city" (
	"id" INT,
	"name" VARCHAR
);
