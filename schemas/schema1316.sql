DROP DATABASE IF EXISTS "schema1316";
CREATE DATABASE "schema1316";
USE "schema1316";
CREATE TABLE "tweets" (
	"email" VARCHAR,
	"tweets" VARCHAR,
	 PRIMARY KEY ("tweets")
);

CREATE TABLE "users" (
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" VARCHAR,
	"dob" DATE,
	"email" VARCHAR,
	"password" VARCHAR,
	"isloggedin" BOOLEAN,
	 PRIMARY KEY ("first_name")
);
