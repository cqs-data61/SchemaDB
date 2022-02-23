DROP DATABASE IF EXISTS "schema1169";
CREATE DATABASE "schema1169";
USE "schema1169";
CREATE TABLE "users" (
	"id" VARCHAR,
	"ip" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "songs" (
	"list_order" INT,
	"playlist" VARCHAR,
	"ext_id" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "playlists" (
	"playlist" VARCHAR,
	"user_id" VARCHAR,
	"from_plid" VARCHAR,
	 PRIMARY KEY ("playlist")
);

CREATE TABLE "actions" (
	"user_id" VARCHAR,
	"action_type" VARCHAR,
	"action_details" VARCHAR,
	"date" VARCHAR
);
