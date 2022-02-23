DROP DATABASE IF EXISTS "schema2132";
CREATE DATABASE "schema2132";
USE "schema2132";
CREATE TABLE "order_line_items" (
	"id" SERIAL,
	"bubbletea_id" INTEGER,
	"order_id" INTEGER,
	"quantity" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" SERIAL,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	"completed_at" TIMESTAMP,
	"status" VARCHAR,
	"eta" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bubbleteas" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"cost" INTEGER,
	"image_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"phone_number" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);
