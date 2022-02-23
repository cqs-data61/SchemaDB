DROP DATABASE IF EXISTS "schema1065";
CREATE DATABASE "schema1065";
USE "schema1065";
CREATE TABLE "movies" (
	"id" SERIAL,
	"title" VARCHAR,
	"overview" TEXT,
	"average_votes" FLOAT,
	"total_votes" INT,
	"image_url" VARCHAR,
	"popularity" FLOAT,
	"released_on" VARCHAR,
	"created_at" BIGINT,
	"search_query" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "restaurants" (
	"id" SERIAL,
	"name" VARCHAR,
	"image_url" VARCHAR,
	"price" VARCHAR,
	"rating" FLOAT,
	"url" VARCHAR,
	"created_at" BIGINT,
	"search_query" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "weathers" (
	"id" SERIAL,
	"forecast" VARCHAR,
	"time" VARCHAR,
	"created_at" BIGINT,
	"search_query" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locations" (
	"id" SERIAL,
	"search_query" VARCHAR,
	"formatted_query" VARCHAR,
	"latitude" NUMERIC,
	"longitude" NUMERIC,
	 PRIMARY KEY ("id")
);
