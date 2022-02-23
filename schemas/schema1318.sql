DROP DATABASE IF EXISTS "schema1318";
CREATE DATABASE "schema1318";
USE "schema1318";
CREATE TABLE "trails" (
	"id" SERIAL,
	"name" VARCHAR,
	"location" VARCHAR,
	"length" FLOAT,
	"stars" FLOAT,
	"star_votes" FLOAT,
	"summary" TEXT,
	"trail_url" VARCHAR,
	"conditions" VARCHAR,
	"condition_date" VARCHAR,
	"condition_time" VARCHAR,
	"created_at" BIGINT,
	"search_query" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "meetups" (
	"id" SERIAL,
	"link" VARCHAR,
	"name" VARCHAR,
	"creation_date" VARCHAR,
	"host" VARCHAR,
	"created_at" BIGINT,
	"search_query" VARCHAR,
	 PRIMARY KEY ("id")
);

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
