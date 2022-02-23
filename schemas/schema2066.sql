DROP DATABASE IF EXISTS "schema2066";
CREATE DATABASE "schema2066";
USE "schema2066";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"age" INT,
	"sex" VARCHAR,
	"email" VARCHAR,
	"location" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chatrooms" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"id_user" INT,
	"createdat" DATE,
	"body" VARCHAR,
	"id_chatroom" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("id_user") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_messages_to_chatrooms" FOREIGN KEY ("id_chatroom") REFERENCES "chatrooms" ("id")
);
