DROP DATABASE IF EXISTS "schema489";
CREATE DATABASE "schema489";
USE "schema489";
CREATE TABLE "room" (
	"roomid" INT,
	"name" VARCHAR
);

CREATE TABLE "user" (
	"userid" INT,
	"name" VARCHAR
);

CREATE TABLE "messages" (
	"messagesid" INT,
	"text" VARCHAR,
	"user" INT,
	"room" INT,
	 CONSTRAINT "fkeycon_messages_to_room" FOREIGN KEY ("room") REFERENCES "room" ("roomid"),
	 CONSTRAINT "fkeycon_messages_to_user" FOREIGN KEY ("user") REFERENCES "user" ("userid")
);
