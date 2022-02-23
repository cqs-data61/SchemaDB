DROP DATABASE IF EXISTS "schema1682";
CREATE DATABASE "schema1682";
USE "schema1682";
CREATE TABLE "hero_mission" (
	"hero_id" INT,
	"mission_id" INT
);

CREATE TABLE "mission" (
	"id" INT,
	"name" VARCHAR,
	"created" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"hero_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"renewat" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hero" (
	"id" INT,
	"full_name" VARCHAR,
	"team_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "team" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
