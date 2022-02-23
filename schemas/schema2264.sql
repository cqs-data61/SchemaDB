DROP DATABASE IF EXISTS "schema2264";
CREATE DATABASE "schema2264";
USE "schema2264";
CREATE TABLE "users" (
	"id" INTEGER,
	"discordid" TEXT,
	"username" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "anime" (
	"id" INTEGER,
	"anilistid" TEXT,
	"timer" INTEGER,
	"title" TEXT,
	"cover" TEXT,
	"color" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_anime" (
	"user_id" INTEGER,
	"anime_id" INTEGER,
	 PRIMARY KEY ("user_id","anime_id"),
	 CONSTRAINT "fkeycon_users_anime_to_anime" FOREIGN KEY ("anime_id") REFERENCES "anime" ("id")
);
