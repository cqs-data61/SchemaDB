DROP DATABASE IF EXISTS "schema645";
CREATE DATABASE "schema645";
USE "schema645";
CREATE TABLE "users" (
	"id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"user_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"note" VARCHAR,
	"role_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_roles" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 CONSTRAINT "FKj6m8fwv7oqv74fcehir1a9ffy" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "FK2o0jvgh89lemvvo17cbqvdxaa" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);

CREATE TABLE "ebooks" (
	"book_id" BIGINT,
	"book_category_id" BIGINT,
	"book_cover_img" VARCHAR,
	"book_intro" VARCHAR,
	"book_name" VARCHAR,
	"book_sell_status" VARCHAR,
	"book_uri" VARCHAR,
	"create_time" DATETIME,
	"original_price" FLOAT,
	"selling_price" FLOAT,
	"tag" VARCHAR,
	"update_time" DATETIME,
	"author" VARCHAR,
	"starts" FLOAT,
	 PRIMARY KEY ("book_id")
);
