DROP DATABASE IF EXISTS "schema638";
CREATE DATABASE "schema638";
USE "schema638";
CREATE TABLE "nodes" (
	"id" INTEGER,
	"content" TEXT,
	"created" DATETIME,
	"edited" DATETIME,
	"viewed" DATETIME,
	"archived" BOOLEAN,
	"priority" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"node" INTEGER,
	"tag" TEXT,
	 PRIMARY KEY ("node","tag"),
	 CONSTRAINT "fk_node" FOREIGN KEY ("node") REFERENCES "nodes" ("id")
);
