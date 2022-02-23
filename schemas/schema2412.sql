DROP DATABASE IF EXISTS "schema2412";
CREATE DATABASE "schema2412";
USE "schema2412";
CREATE TABLE "records" (
	"id" SERIAL,
	"team_record" VARCHAR,
	"team_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teams" (
	"id" SERIAL,
	"team_name" TEXT,
	 PRIMARY KEY ("id")
);
