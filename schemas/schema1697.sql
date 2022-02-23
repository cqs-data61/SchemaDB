DROP DATABASE IF EXISTS "schema1697";
CREATE DATABASE "schema1697";
USE "schema1697";
CREATE TABLE "page" (
	"id_page" INTEGER,
	"url" VARCHAR,
	"created_at" TEXT,
	"is_checked" TEXT,
	"num_errors" INTEGER,
	"powered_by" VARCHAR,
	 PRIMARY KEY ("id_page")
);

CREATE TABLE "error" (
	"id_error" INTEGER,
	"page_id" INTEGER,
	"message" TEXT,
	 PRIMARY KEY ("id_error"),
	 CONSTRAINT "fkeycon_error_to_page" FOREIGN KEY ("page_id") REFERENCES "page" ("id_page")
);
