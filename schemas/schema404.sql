DROP DATABASE IF EXISTS "schema404";
CREATE DATABASE "schema404";
USE "schema404";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR
);

CREATE TABLE "credentials" (
	"id" INT,
	"url" VARCHAR,
	"username" VARCHAR,
	"key" VARCHAR,
	"password" VARCHAR,
	"user_id" INT,
	 CONSTRAINT "fkeycon_credentials_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "files" (
	"id" INT,
	"name" VARCHAR,
	"content_type" VARCHAR,
	"size" VARCHAR,
	"user_id" INT,
	"data" BLOB,
	 CONSTRAINT "fkeycon_files_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "notes" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"user_id" INT,
	 CONSTRAINT "fkeycon_notes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
