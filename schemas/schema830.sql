DROP DATABASE IF EXISTS "schema830";
CREATE DATABASE "schema830";
USE "schema830";
CREATE TABLE "unpolice" (
	"id" INT,
	"lat" VARCHAR,
	"lng" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "university" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "tv" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "technology" (
	"id" VARCHAR,
	"name" VARCHAR,
	"address" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "school3" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "school2" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "school" (
	"id" VARCHAR,
	"name" VARCHAR,
	"address" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "osaka_rank" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "news" (
	"id" INT,
	"name" VARCHAR,
	"description" LONGTEXT
);

CREATE TABLE "crime" (
	"id" INT,
	"lat" VARCHAR,
	"lng" VARCHAR,
	"description" LONGTEXT
);
