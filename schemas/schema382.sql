DROP DATABASE IF EXISTS "schema382";
CREATE DATABASE "schema382";
USE "schema382";
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
