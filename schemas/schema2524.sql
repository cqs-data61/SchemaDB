DROP DATABASE IF EXISTS "schema2524";
CREATE DATABASE "schema2524";
USE "schema2524";
CREATE TABLE "full_tag_paths" (
);

CREATE TABLE "tags" (
	"id" INTEGER,
	"tag" TEXT,
	"parent_id" TEXT,
	 PRIMARY KEY ("tag","parent_id"),
	 CONSTRAINT "fkeycon_tags_to_tags" FOREIGN KEY ("parent_id") REFERENCES "tags" ("id")
);

CREATE TABLE "notes" (
	"id" INTEGER,
	"title" TEXT,
	"metadata" TEXT,
	"body" TEXT,
	"mod_time" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note_tags" (
	"note_id" INTEGER,
	"tag_id" INTEGER,
	 CONSTRAINT "fkeycon_note_tags_to_tags" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id"),
	 CONSTRAINT "fkeycon_note_tags_to_notes" FOREIGN KEY ("note_id") REFERENCES "notes" ("id")
);

CREATE TABLE "note_links" (
	"id" INTERGER,
	"parent_note_id" INTEGER,
	"child_note_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_note_links_to_notes" FOREIGN KEY ("child_note_id") REFERENCES "notes" ("id")
);
