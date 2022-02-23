DROP DATABASE IF EXISTS "schema1544";
CREATE DATABASE "schema1544";
USE "schema1544";
CREATE TABLE "droid" (
	"id" INTEGER,
	"name" TEXT,
	"birth_year" TEXT,
	"height" INTEGER,
	"mass" FLOAT,
	"model" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wookie" (
	"id" INTEGER,
	"name" TEXT,
	"birth_year" TEXT,
	"height" INTEGER,
	"mass" FLOAT,
	"hair_color" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brain_teaser" (
	"id" INTEGER,
	"name" TEXT,
	"difficulty" TEXT,
	"shoplink" TEXT,
	 PRIMARY KEY ("id")
);
