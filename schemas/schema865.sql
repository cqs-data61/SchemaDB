DROP DATABASE IF EXISTS "schema865";
CREATE DATABASE "schema865";
USE "schema865";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"email" VARCHAR,
	"status" VARCHAR,
	"createtime" TIMESTAMP,
	"updatetime" TIMESTAMP,
	"super" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migration" (
	"version" VARCHAR,
	"apply_time" INT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "auth_rule" (
	"name" VARCHAR,
	"data" BLOB,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item" (
	"name" VARCHAR,
	"type" SMALLINT,
	"description" TEXT,
	"rule_name" VARCHAR,
	"data" BLOB,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item_child" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child"),
	 CONSTRAINT "auth_item_child_ibfk_2" FOREIGN KEY ("child") REFERENCES "auth_item" ("name"),
	 CONSTRAINT "auth_item_child_ibfk_1" FOREIGN KEY ("parent") REFERENCES "auth_item" ("name")
);

CREATE TABLE "auth_assignment" (
	"item_name" VARCHAR,
	"user_id" VARCHAR,
	"created_at" INT,
	 PRIMARY KEY ("item_name","user_id")
);
