DROP DATABASE IF EXISTS "schema2480";
CREATE DATABASE "schema2480";
USE "schema2480";
CREATE TABLE "token" (
	"key" VARCHAR,
	"auth_user" BIGINT,
	"foreign" KEY,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("key")
);

CREATE TABLE "auth_user" (
	"id" SERIAL,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "query" (
	"id" SERIAL,
	"query" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag" (
	"id" SERIAL,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "text_data" (
	"source" VARCHAR,
	"id" VARCHAR,
	"content" TEXT,
	"intention" TEXT,
	"created_at" TIMESTAMP,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("source","id")
);

CREATE TABLE "already_labeled" (
	"query" BIGINT,
	"source" VARCHAR,
	"id" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("query","source","id"),
	 CONSTRAINT "fkeycon_already_labeled_to_text_data" FOREIGN KEY ("source","id") REFERENCES "text_data" ("source","id"),
	 CONSTRAINT "fkeycon_already_labeled_to_query" FOREIGN KEY ("query") REFERENCES "query" ("id")
);

CREATE TABLE "label" (
	"tag" BIGINT,
	"source" VARCHAR,
	"id" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("tag","source","id"),
	 CONSTRAINT "fkeycon_label_to_tag" FOREIGN KEY ("tag") REFERENCES "tag" ("id"),
	 CONSTRAINT "fkeycon_label_to_text_data" FOREIGN KEY ("source","id") REFERENCES "text_data" ("source","id")
);
