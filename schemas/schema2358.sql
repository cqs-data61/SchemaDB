DROP DATABASE IF EXISTS "schema2358";
CREATE DATABASE "schema2358";
USE "schema2358";
CREATE TABLE "repos" (
	"id" INTEGER,
	"name" TEXT,
	"path" TEXT,
	"cache_logs" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notes" (
	"id" INTEGER,
	"repo_id" INTEGER,
	"changelist_name" TEXT,
	"path_name" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_notes_to_repos" FOREIGN KEY ("repo_id") REFERENCES "repos" ("id")
);

CREATE TABLE "logs" (
	"id" INTEGER,
	"repo_id" INTEGER,
	"revision" INTEGER,
	"log_entry" BLOB,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_logs_to_repos" FOREIGN KEY ("repo_id") REFERENCES "repos" ("id")
);
