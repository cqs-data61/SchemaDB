DROP DATABASE IF EXISTS "schema2366";
CREATE DATABASE "schema2366";
USE "schema2366";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"pass" VARCHAR,
	"date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quiz" (
	"id" SERIAL,
	"user_id" INT,
	"question" TEXT,
	"optiona" TEXT,
	"optionb" TEXT,
	"optionc" TEXT,
	"optiond" TEXT,
	"correctanswer" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "userprofile" (
	"user_id" INT,
	"userresult" NUMERIC,
	 CONSTRAINT "fk_user_name" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
