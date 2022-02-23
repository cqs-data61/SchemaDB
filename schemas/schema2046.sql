DROP DATABASE IF EXISTS "schema2046";
CREATE DATABASE "schema2046";
USE "schema2046";
CREATE TABLE "languages" (
	"id" INTEGER,
	"language" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pilots" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pilot_languages" (
	"pilot_id" INTEGER,
	"language_id" INTEGER,
	 PRIMARY KEY ("pilot_id","language_id"),
	 CONSTRAINT "pilot_language_pilots_fkey" FOREIGN KEY ("pilot_id") REFERENCES "pilots" ("id"),
	 CONSTRAINT "pilot_language_languages_fkey" FOREIGN KEY ("language_id") REFERENCES "languages" ("id")
);

CREATE TABLE "jets" (
	"id" INTEGER,
	"pilot_id" INTEGER,
	"age" INTEGER,
	"name" TEXT,
	"color" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "jet_pilots_fkey" FOREIGN KEY ("pilot_id") REFERENCES "pilots" ("id")
);
