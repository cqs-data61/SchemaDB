DROP DATABASE IF EXISTS "schema316";
CREATE DATABASE "schema316";
USE "schema316";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	"image" TEXT,
	"mimetype" TEXT,
	"view" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"body" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
