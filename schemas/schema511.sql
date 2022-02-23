DROP DATABASE IF EXISTS "schema511";
CREATE DATABASE "schema511";
USE "schema511";
CREATE TABLE "scores" (
	"score_id" BINARY,
	"player_id" INT,
	"event_id" INT,
	"score" INT
);

CREATE TABLE "players" (
	"player_id" INT,
	"name" TEXT,
	"pic" TEXT
);

CREATE TABLE "events" (
	"event_id" INT,
	"event_name" TEXT
);
