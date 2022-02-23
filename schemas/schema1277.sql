DROP DATABASE IF EXISTS "schema1277";
CREATE DATABASE "schema1277";
USE "schema1277";
CREATE TABLE "message" (
	"message_id" INTEGER,
	"author_id" INTEGER,
	"text" STRING,
	"pub_date" INTEGER,
	 PRIMARY KEY ("message_id")
);

CREATE TABLE "follower" (
	"who_id" INTEGER,
	"whom_id" INTEGER
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"username" STRING,
	"email" STRING,
	"pw_hash" STRING,
	 PRIMARY KEY ("user_id")
);
