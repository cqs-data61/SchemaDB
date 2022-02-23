DROP DATABASE IF EXISTS "schema1442";
CREATE DATABASE "schema1442";
USE "schema1442";
CREATE TABLE "issue" (
	"issue_id" INT,
	"issue_number" INT,
	"issue_name" VARCHAR,
	"volume_id" INT,
	"volume_name" VARCHAR,
	"cover_url" VARCHAR,
	 PRIMARY KEY ("issue_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"user_id" INT,
	"username" VARCHAR,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_collections" (
	"collection_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("collection_id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "collections" (
	"inventory_id" INT,
	"collection_id" INT,
	"issue_id" INT,
	 PRIMARY KEY ("inventory_id"),
	 CONSTRAINT "fk_collectionsissue" FOREIGN KEY ("issue_id") REFERENCES "issue" ("issue_id"),
	 CONSTRAINT "fk_collectionsid" FOREIGN KEY ("collection_id") REFERENCES "user_collections" ("collection_id")
);
