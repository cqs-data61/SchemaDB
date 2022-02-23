DROP DATABASE IF EXISTS "schema2325";
CREATE DATABASE "schema2325";
USE "schema2325";
CREATE TABLE "states" (
	"user_id" INTEGER,
	"file_id" TEXT,
	"last_activity_time" INTEGER,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "history" (
	"user_id" INTEGER,
	"file_id" TEXT,
	"words" TEXT,
	"sendings_tally" INTEGER,
	"last_used_time" INTEGER,
	 PRIMARY KEY ("user_id","file_id","words")
);
