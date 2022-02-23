DROP DATABASE IF EXISTS "schema628";
CREATE DATABASE "schema628";
USE "schema628";
CREATE TABLE "user" (
	"id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "head_song" (
	"head_number" INTEGER,
	"id" TEXT,
	"title" TEXT,
	"artist" TEXT,
	"u_id" TEXT,
	"playlist" TEXT,
	 PRIMARY KEY ("head_number"),
	 CONSTRAINT "fkeycon_head_song_to_user" FOREIGN KEY ("u_id") REFERENCES "user" ("id")
);

CREATE TABLE "link_song" (
	"link_number" INTEGER,
	"id" TEXT,
	"title" TEXT,
	"artist" TEXT,
	"place" INTEGER,
	"h_id" INTEGER,
	"u_id" TEXT,
	"playlist" TEXT,
	 PRIMARY KEY ("link_number"),
	 CONSTRAINT "fkeycon_link_song_to_user" FOREIGN KEY ("u_id") REFERENCES "user" ("id"),
	 CONSTRAINT "head_key" FOREIGN KEY ("h_id") REFERENCES "head_song" ("head_number")
);
