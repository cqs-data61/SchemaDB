DROP DATABASE IF EXISTS "schema1293";
CREATE DATABASE "schema1293";
USE "schema1293";
CREATE TABLE "reply" (
	"id" INTEGER,
	"author_id" INTEGER,
	"post_id" INTEGER,
	"created" TIMESTAMP,
	"body" TEXT,
	"foreign" KEY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"body" TEXT,
	"anonym" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
