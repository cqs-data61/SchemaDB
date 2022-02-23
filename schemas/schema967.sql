DROP DATABASE IF EXISTS "schema967";
CREATE DATABASE "schema967";
USE "schema967";
CREATE TABLE "chatroom" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INTEGER,
	"message" VARCHAR,
	"username" VARCHAR,
	"createdat" TIMESTAMP,
	"chatroomid" INTEGER,
	 PRIMARY KEY ("id")
);
