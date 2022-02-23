DROP DATABASE IF EXISTS "schema795";
CREATE DATABASE "schema795";
USE "schema795";
CREATE TABLE "vinyls_browsing_history" (
	"id" SERIAL,
	"user_id" INTEGER,
	"unique_vinyl_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vinyls" (
	"id" SERIAL,
	"release" VARCHAR,
	"artist" VARCHAR,
	"full_name" VARCHAR,
	"genre" VARCHAR,
	"price" DOUBLE PRECISION,
	"currency" CHARACTER VARYING,
	"link_to_vinyl" VARCHAR,
	"link_to_image" VARCHAR,
	"shop_id" INTEGER,
	"unique_vinyl_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "confirmation_links" (
	"id" SERIAL,
	"user_id" INTEGER,
	"confirmation_link" VARCHAR,
	"date_and_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_posts" (
	"id" SERIAL,
	"user_id" INTEGER,
	"email" VARCHAR,
	"name" VARCHAR,
	"theme" VARCHAR,
	"message" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shops" (
	"id" SERIAL,
	"link_to_main_page" VARCHAR,
	"link_to_image" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "unique_vinyls" (
	"id" BIGINT,
	"release" VARCHAR,
	"artist" VARCHAR,
	"full_name" VARCHAR,
	"link_to_image" VARCHAR
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"salt" VARCHAR,
	"iterations" INTEGER,
	"password" VARCHAR,
	"status" BOOLEAN,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);
