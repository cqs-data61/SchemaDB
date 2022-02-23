DROP DATABASE IF EXISTS "schema346";
CREATE DATABASE "schema346";
USE "schema346";
CREATE TABLE "team" (
	"id" INTEGER,
	"name" VARCHAR,
	"active" BOOLEAN,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "team_member" (
	"id" INTEGER,
	"name" VARCHAR,
	"role" VARCHAR,
	"email" VARCHAR,
	"team_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_team_member_to_team" FOREIGN KEY ("team_id") REFERENCES "team" ("id")
);
