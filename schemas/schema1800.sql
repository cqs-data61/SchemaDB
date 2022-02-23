DROP DATABASE IF EXISTS "schema1800";
CREATE DATABASE "schema1800";
USE "schema1800";
CREATE TABLE "var_site" (
	"id" INTEGER,
	"varname" TEXT,
	"varvalue" TEXT,
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
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
