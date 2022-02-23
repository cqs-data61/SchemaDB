DROP DATABASE IF EXISTS "schema1331";
CREATE DATABASE "schema1331";
USE "schema1331";
CREATE TABLE "comp_track_data" (
	"id" INTEGER,
	"participant_id" INTEGER,
	"timestamp" TEXT,
	"buffeting_force" TEXT,
	"additional_force" TEXT,
	"total_force" TEXT,
	"user_input" TEXT,
	"target_position" TEXT,
	"displacement" TEXT,
	"pvt_event" TEXT,
	"pvt_rt" TEXT
);

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
