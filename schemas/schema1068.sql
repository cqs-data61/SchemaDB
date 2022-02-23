DROP DATABASE IF EXISTS "schema1068";
CREATE DATABASE "schema1068";
USE "schema1068";
CREATE TABLE "videos" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"name" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"email_verified_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "albums" (
	"id" BIGINT,
	"album_name" VARCHAR,
	"album_thumb" VARCHAR,
	"description" TEXT,
	"user_id" BIGINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"name" VARCHAR,
	"description" TEXT,
	"album_id" BIGINT,
	"img_path" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "photos_album_id_foreign" FOREIGN KEY ("album_id") REFERENCES "albums" ("id")
);

CREATE TABLE "album_category" (
	"id" INT,
	"album_id" INT,
	"category_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "album_categories" (
	"id" BIGINT,
	"category_name" VARCHAR,
	"user_id" BIGINT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
