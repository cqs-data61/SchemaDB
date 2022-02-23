DROP DATABASE IF EXISTS "schema454";
CREATE DATABASE "schema454";
USE "schema454";
CREATE TABLE "reviews" (
	"id" SERIAL,
	"review_text" TEXT,
	"user_id" INTEGER,
	"mallet_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mallets" (
	"id" SERIAL,
	"brand_id" INTEGER,
	"model_number" VARCHAR,
	"name" TEXT,
	"shaft" TEXT,
	"msrp" NUMERIC,
	"img" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" TEXT,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brands" (
	"id" SERIAL,
	"brand_name" TEXT,
	 PRIMARY KEY ("id")
);
