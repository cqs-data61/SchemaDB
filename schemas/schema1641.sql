DROP DATABASE IF EXISTS "schema1641";
CREATE DATABASE "schema1641";
USE "schema1641";
CREATE TABLE "auth_rule" (
	"name" VARCHAR,
	"data" BYTEA,
	"created_at" INTEGER,
	"updated_at" INTEGER,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item" (
	"name" VARCHAR,
	"type" SMALLINT,
	"description" VARCHAR,
	"rule_name" VARCHAR,
	"data" BYTEA,
	"updated_at" INTEGER,
	 PRIMARY KEY ("name"),
	 CONSTRAINT "fkeycon_auth_item_to_auth_rule" FOREIGN KEY ("rule_name") REFERENCES "auth_rule" ("name")
);

CREATE TABLE "auth_assignment" (
	"item_name" VARCHAR,
	"user_id" VARCHAR,
	"created_at" INTEGER,
	 PRIMARY KEY ("item_name","user_id"),
	 CONSTRAINT "fkeycon_auth_assignment_to_auth_item" FOREIGN KEY ("item_name") REFERENCES "auth_item" ("name")
);

CREATE TABLE "auth_item_child" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child"),
	 CONSTRAINT "fkeycon_auth_item_child_to_auth_item" FOREIGN KEY ("child") REFERENCES "auth_item" ("name")
);
