DROP DATABASE IF EXISTS "schema2010";
CREATE DATABASE "schema2010";
USE "schema2010";
CREATE TABLE "slots" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "types" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"level" INT,
	"slot" INT,
	"type" INT,
	"consumable" BOOLEAN,
	"usable_by" CLASSES,
	"strength" INT,
	"intelligence" INT,
	"agility" INT,
	"defense" INT,
	"wisdom" INT,
	"luck" INT,
	"can_sell" BOOLEAN,
	"sell_price" INT,
	"icon" VARCHAR,
	"created_on" TIMESTAMP,
	 PRIMARY KEY ("name"),
	 CONSTRAINT "fk_type" FOREIGN KEY ("type") REFERENCES "types" ("id"),
	 CONSTRAINT "fk_slot" FOREIGN KEY ("slot") REFERENCES "slots" ("id")
);

CREATE TABLE "history" (
	"id" VARCHAR,
	"player" VARCHAR,
	"experience" INT,
	"created_on" TIMESTAMP,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("player","created_on")
);

CREATE TABLE "players" (
	"id" VARCHAR,
	"username" VARCHAR,
	"online" BOOLEAN,
	"experience" INT,
	"rank" INT,
	"created_on" TIMESTAMP,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("username")
);

CREATE TABLE "leaderboards" (
	"id" VARCHAR,
	"player" VARCHAR,
	"total_experience" INT,
	"daily_experience" INT,
	"weekly_experience" INT,
	"monthly_experience" INT,
	"created_on" TIMESTAMP,
	"last_modified" TIMESTAMP,
	 CONSTRAINT "fk_player" FOREIGN KEY ("player") REFERENCES "players" ("username")
);
