DROP DATABASE IF EXISTS "schema1126";
CREATE DATABASE "schema1126";
USE "schema1126";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vote" (
	"user_id" INTEGER,
	"package_id" INTEGER,
	 CONSTRAINT "fkeycon_vote_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "package" (
	"id" INTEGER,
	"user_id" INTEGER,
	"link" TEXT,
	"title" VARCHAR,
	"tagline" VARCHAR,
	"topics" TEXT,
	"active" INTEGER,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_package_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
