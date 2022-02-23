DROP DATABASE IF EXISTS "schema1433";
CREATE DATABASE "schema1433";
USE "schema1433";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"msg" VARCHAR,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
