DROP DATABASE IF EXISTS "schema271";
CREATE DATABASE "schema271";
USE "schema271";
CREATE TABLE "favorites" (
	"id" SERIAL,
	"favorite_user_id" INTEGER,
	"favorite_restaurant_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" SERIAL,
	"category" TEXT,
	"category_restaurant_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"title" TEXT,
	"content" TEXT,
	"stars" INTEGER,
	"writer" TEXT,
	"user_id" INTEGER,
	"restaurant_id" INTEGER,
	"sent_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "restaurants" (
	"id" SERIAL,
	"name" TEXT,
	"location" TEXT,
	"website" TEXT,
	"info" TEXT,
	"user_id" INTEGER,
	"added_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"email" TEXT,
	"password" TEXT,
	"picture" BYTEA,
	"admin" BOOL,
	 PRIMARY KEY ("id")
);
