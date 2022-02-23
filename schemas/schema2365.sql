DROP DATABASE IF EXISTS "schema2365";
CREATE DATABASE "schema2365";
USE "schema2365";
CREATE TABLE "librarian" (
	"librarian_id" VARCHAR,
	"library_id" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("librarian_id")
);

CREATE TABLE "library" (
	"library_id" VARCHAR,
	"name" VARCHAR,
	"phone_number" VARCHAR,
	"postal_code" VARCHAR,
	"administrative_area" VARCHAR,
	"address_line" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("library_id")
);

CREATE TABLE "user" (
	"user_id" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"mail_address" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("user_id")
);
