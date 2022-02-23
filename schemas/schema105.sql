DROP DATABASE IF EXISTS "schema105";
CREATE DATABASE "schema105";
USE "schema105";
CREATE TABLE "subscriptions" (
	"username" VARCHAR,
	"product_id" INTEGER,
	 PRIMARY KEY ("username","product_id")
);

CREATE TABLE "products" (
	"id" SERIAL,
	"title" TEXT,
	"price" INTEGER,
	"description" TEXT,
	"image_url" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admins" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"image_url" TEXT,
	"is_approved" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"has_paid" BOOLEAN,
	"image_url" TEXT,
	 PRIMARY KEY ("username")
);
