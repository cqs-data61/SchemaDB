DROP DATABASE IF EXISTS "schema977";
CREATE DATABASE "schema977";
USE "schema977";
CREATE TABLE "voters" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "parties" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidates" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"party_id" INTEGER,
	"industry_connected" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_party" FOREIGN KEY ("party_id") REFERENCES "parties" ("id")
);

CREATE TABLE "votes" (
	"id" INTEGER,
	"voter_id" INTEGER,
	"candidate_id" INTEGER,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_voter" FOREIGN KEY ("voter_id") REFERENCES "voters" ("id"),
	 CONSTRAINT "fk_candidate" FOREIGN KEY ("candidate_id") REFERENCES "candidates" ("id")
);
