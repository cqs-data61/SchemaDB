DROP DATABASE IF EXISTS "schema2229";
CREATE DATABASE "schema2229";
USE "schema2229";
CREATE TABLE "book_stats" (
	"id" INT,
	"isbn" VARCHAR,
	"email" VARCHAR,
	"status" VARCHAR,
	"request_date" DATE,
	"issue_date" DATE,
	"return_date" DATE
);

CREATE TABLE "book" (
	"bname" VARCHAR,
	"author" VARCHAR,
	"genre" VARCHAR,
	"isbn" VARCHAR,
	"pages" VARCHAR,
	"publisher" VARCHAR,
	"quantity" INT,
	 PRIMARY KEY ("isbn")
);

CREATE TABLE "user" (
	"name" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"pwd" VARCHAR,
	"role" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("email")
);
