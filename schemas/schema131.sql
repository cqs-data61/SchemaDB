DROP DATABASE IF EXISTS "schema131";
CREATE DATABASE "schema131";
USE "schema131";
CREATE TABLE "user_role" (
	"id" INT,
	"user_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"role_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "user" (
	"user_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);
