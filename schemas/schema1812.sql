DROP DATABASE IF EXISTS "schema1812";
CREATE DATABASE "schema1812";
USE "schema1812";
CREATE TABLE "operation" (
	"id" INT,
	"item_id" INT,
	"client_id" INT,
	"start_at" DATE,
	"finish_at" DATE,
	"returned_at" DATE,
	"user_id" INT,
	"receptor_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item" (
	"id" INT,
	"code" VARCHAR,
	"status_id" INT,
	"book_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" INT,
	"isbn" VARCHAR,
	"title" VARCHAR,
	"subtitle" VARCHAR,
	"description" VARCHAR,
	"file" VARCHAR,
	"image" VARCHAR,
	"year" INT,
	"n_pag" INT,
	"author_id" INT,
	"editorial_id" INT,
	"category_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "status" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "editorial" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "client" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	"phone" VARCHAR,
	"is_active" BOOLEAN,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"is_active" BOOLEAN,
	"is_admin" BOOLEAN,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
