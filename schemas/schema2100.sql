DROP DATABASE IF EXISTS "schema2100";
CREATE DATABASE "schema2100";
USE "schema2100";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"message" VARCHAR,
	"roomname" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
