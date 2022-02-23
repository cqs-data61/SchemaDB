DROP DATABASE IF EXISTS "schema808";
CREATE DATABASE "schema808";
USE "schema808";
CREATE TABLE "file" (
	"id" INT,
	"name" VARCHAR,
	"tags" VARCHAR,
	"path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_file" (
	"user_id" INT,
	"file_id" INT,
	 PRIMARY KEY ("user_id","file_id"),
	 CONSTRAINT "fkeycon_user_file_to_file" FOREIGN KEY ("file_id") REFERENCES "file" ("id"),
	 CONSTRAINT "fkeycon_user_file_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
