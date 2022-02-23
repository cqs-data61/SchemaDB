DROP DATABASE IF EXISTS "schema566";
CREATE DATABASE "schema566";
USE "schema566";
CREATE TABLE "posts" (
	"id" SERIAL,
	"conversation_id" INT,
	"user_id" INT,
	"content" VARCHAR
);

CREATE TABLE "conversation_members" (
	"conversation_id" INT,
	"member_id" INT
);

CREATE TABLE "user_conversations" (
	"id" SERIAL,
	"user_id" INT,
	"conversation_id" INT
);

CREATE TABLE "user_friends" (
	"id" SERIAL,
	"user_id" INT,
	"friend_id" INT
);

CREATE TABLE "conversations" (
	"id" SERIAL,
	"name" VARCHAR,
	"user_id" INT
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR
);
