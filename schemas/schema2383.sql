DROP DATABASE IF EXISTS "schema2383";
CREATE DATABASE "schema2383";
USE "schema2383";
CREATE TABLE "blocks" (
	"id" INTEGER,
	"message_id" INTEGER,
	"user_id" INTEGER,
	"message_type" TEXT,
	"created_at" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pages" (
	"id" INTEGER,
	"block_id" INTEGER,
	"handler" TEXT,
	"command_defs" TEXT,
	"created_at" INTEGER,
	"updated_at" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_pages_to_blocks" FOREIGN KEY ("block_id") REFERENCES "blocks" ("id")
);
