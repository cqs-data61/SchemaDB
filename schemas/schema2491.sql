DROP DATABASE IF EXISTS "schema2491";
CREATE DATABASE "schema2491";
USE "schema2491";
CREATE TABLE "exercise" (
	"id" TEXT,
	"equipment_id" TEXT,
	"reps3" TEXT,
	"reps5" TEXT,
	"reps6" TEXT,
	"reps7" TEXT,
	"reps8" TEXT,
	"reps10" TEXT,
	"reps12" TEXT,
	"reps15" TEXT,
	"reps13" TEXT,
	"reps21" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "equipment" (
	"id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "week_food" (
	"week_id" INTEGER,
	"food_id" TEXT
);

CREATE TABLE "week" (
	"id" INTEGER,
	"total_calories" INTEGER,
	"total_protein" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "food" (
	"id" TEXT,
	"calories" INTEGER,
	"protein" INTEGER,
	 PRIMARY KEY ("id")
);
