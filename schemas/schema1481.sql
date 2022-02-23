DROP DATABASE IF EXISTS "schema1481";
CREATE DATABASE "schema1481";
USE "schema1481";
CREATE TABLE "member" (
	"id" BIGINT,
	"nickname" VARCHAR,
	"github_user_name" VARCHAR,
	"role" VARCHAR,
	"github_id" BIGINT,
	"image_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mission" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" BIGINT,
	"member_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"title" VARCHAR,
	"content" TEXT,
	"mission_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post_tag" (
	"id" BIGINT,
	"post_id" BIGINT,
	"tag_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tag_id" FOREIGN KEY ("tag_id") REFERENCES "tag" ("id"),
	 CONSTRAINT "post_id" FOREIGN KEY ("post_id") REFERENCES "post" ("id")
);
