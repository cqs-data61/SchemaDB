DROP DATABASE IF EXISTS "schema1653";
CREATE DATABASE "schema1653";
USE "schema1653";
CREATE TABLE "rooms" (
	"room_id" INT,
	"room_name" VARCHAR,
	"room_createdat" DATETIME,
	 PRIMARY KEY ("room_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"user_createdat" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "messages" (
	"message_id" INT,
	"msg_txt" VARCHAR,
	"msg_createdat" DATETIME,
	"user_id" INT,
	"room_id" INT,
	 PRIMARY KEY ("message_id"),
	 CONSTRAINT "fkeycon_messages_to_rooms" FOREIGN KEY ("room_id") REFERENCES "rooms" ("room_id"),
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);
