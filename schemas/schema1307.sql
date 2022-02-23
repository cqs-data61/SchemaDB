DROP DATABASE IF EXISTS "schema1307";
CREATE DATABASE "schema1307";
USE "schema1307";
CREATE TABLE "users" (
	"id" SERIAL,
	"user_name" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"profile_img" TEXT,
	"password_digest" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"sport" TEXT,
	"difficulty" TEXT,
	"location" TEXT,
	"photo" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);
