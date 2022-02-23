DROP DATABASE IF EXISTS "schema2069";
CREATE DATABASE "schema2069";
USE "schema2069";
CREATE TABLE "account" (
	"id" BIGINT,
	"firstname" CHARACTER VARYING,
	"lastname" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"created" TIMESTAMP,
	"last_request" TIMESTAMP,
	"version" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "property" (
	"id" BIGINT,
	"rooms_nr" INTEGER,
	"square" NUMERIC,
	"description" TEXT,
	"lon" NUMERIC,
	"lat" NUMERIC,
	"address" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"edited_at" TIMESTAMP,
	"author" BIGINT,
	"version" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lnk_account_id_property_author_lnk" FOREIGN KEY ("author") REFERENCES "account" ("id")
);

CREATE TABLE "image" (
	"id" BIGINT,
	"property_id" BIGINT,
	"original_name" CHARACTER VARYING,
	"original_path" CHARACTER VARYING,
	"medium_path" CHARACTER VARYING,
	"small_path" CHARACTER VARYING,
	"uploaded_at" TIMESTAMP,
	"img_order" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lnk_property_id_image_property_id_lnk" FOREIGN KEY ("property_id") REFERENCES "property" ("id")
);
