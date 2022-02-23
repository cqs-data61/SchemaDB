DROP DATABASE IF EXISTS "schema858";
CREATE DATABASE "schema858";
USE "schema858";
CREATE TABLE "soul" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vibe" (
	"id" SERIAL,
	"soul_id" INT,
	"tldr" TEXT,
	"purpose" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vibe_soul" FOREIGN KEY ("soul_id") REFERENCES "soul" ("id")
);

CREATE TABLE "thought" (
	"id" SERIAL,
	"tldr" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "headspace" (
	"id" SERIAL,
	"thought_id" INT,
	"vibe_id" INT,
	"location" TEXT,
	"frame" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_headspace_thought" FOREIGN KEY ("thought_id") REFERENCES "thought" ("id"),
	 CONSTRAINT "fk_headspace_vibe" FOREIGN KEY ("vibe_id") REFERENCES "vibe" ("id")
);
