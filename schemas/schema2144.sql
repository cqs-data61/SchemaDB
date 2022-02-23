DROP DATABASE IF EXISTS "schema2144";
CREATE DATABASE "schema2144";
USE "schema2144";
CREATE TABLE "trials" (
	"id" INTEGER,
	"participant_id" INTEGER,
	"block_num" INTEGER,
	"trial_num" INTEGER
);

CREATE TABLE "participants" (
	"id" INTEGER,
	"userhash" TEXT,
	"gender" TEXT,
	"age" INTEGER,
	"handedness" TEXT,
	"created" TEXT
);
