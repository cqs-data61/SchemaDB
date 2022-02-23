DROP DATABASE IF EXISTS "schema913";
CREATE DATABASE "schema913";
USE "schema913";
CREATE TABLE "user" (
	"id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cells" (
	"id" INTEGER,
	"user_key" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_cells_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
