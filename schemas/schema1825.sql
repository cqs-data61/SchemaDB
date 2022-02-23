DROP DATABASE IF EXISTS "schema1825";
CREATE DATABASE "schema1825";
USE "schema1825";
CREATE TABLE "schema_migrations" (
	"version" VARCHAR,
	 PRIMARY KEY ("version")
);

CREATE TABLE "populations" (
	"id" INT,
	"player_count" INT,
	"admin_count" INT,
	"time" DATETIME,
	"server" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "polls" (
	"id" INT,
	"type" VARCHAR,
	"start" DATETIME,
	"end" DATETIME,
	"question" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "poll_options" (
	"id" INT,
	"poll_id" INT,
	"text" VARCHAR,
	"min_value" INT,
	"max_value" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "players" (
	"id" INT,
	"ckey" VARCHAR,
	"registered" DATE,
	"first_seen" DATETIME,
	"last_seen" DATETIME,
	"ip" VARCHAR,
	"cid" VARCHAR,
	"rank" VARCHAR,
	"flags" INT,
	"byond_version" VARCHAR,
	"country" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "poll_votes" (
	"id" INT,
	"time" DATETIME,
	"poll_id" INT,
	"player_id" INT,
	"option_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_rails_826ebfbbb3" FOREIGN KEY ("option_id") REFERENCES "poll_options" ("id"),
	 CONSTRAINT "fk_rails_a3e5a3aede" FOREIGN KEY ("player_id") REFERENCES "players" ("id")
);

CREATE TABLE "poll_text_replies" (
	"id" INT,
	"time" DATETIME,
	"poll_id" INT,
	"player_id" INT,
	"text" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_rails_ffc8df499f" FOREIGN KEY ("player_id") REFERENCES "players" ("id")
);

CREATE TABLE "books" (
	"id" INT,
	"author" VARCHAR,
	"title" VARCHAR,
	"content" VARCHAR,
	"category" VARCHAR,
	"author_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bans" (
	"id" INT,
	"server" VARCHAR,
	"type" VARCHAR,
	"ip" VARCHAR,
	"cid" VARCHAR,
	"reason" TEXT,
	"job" VARCHAR,
	"duration" INT,
	"time" DATETIME,
	"target_id" INT,
	"banned_by_id" INT,
	"expiration_time" DATETIME,
	"unbanned" TINYINT,
	"unbanned_time" DATETIME,
	"unbanned_by_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ar_internal_metadata" (
	"key" VARCHAR,
	"value" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("key")
);
