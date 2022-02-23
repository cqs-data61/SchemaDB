DROP DATABASE IF EXISTS "schema551";
CREATE DATABASE "schema551";
USE "schema551";
CREATE TABLE "captcha_codes" (
	"id" BIGINT,
	"code" VARCHAR,
	"secret_code" VARCHAR,
	"time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag2post" (
	"post_id" BIGINT,
	"tag_id" BIGINT,
	 PRIMARY KEY ("post_id","tag_id")
);

CREATE TABLE "tags" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post_votes" (
	"id" BIGINT,
	"user_id" BIGINT,
	"post_id" BIGINT,
	"time" DATETIME,
	"value" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post_comments" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"post_id" BIGINT,
	"user_id" BIGINT,
	"time" DATETIME,
	"text" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" BIGINT,
	"is_active" BIT,
	"moderation_status" ENUM,
	"moderator_id" BIGINT,
	"user_id" BIGINT,
	"time" DATETIME,
	"title" VARCHAR,
	"text" TEXT,
	"announce" VARCHAR,
	"view_count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_roles" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("user_id","role_id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"is_moderator" BIT,
	"reg_time" DATETIME,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"code" VARCHAR,
	"photo" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "global_settings" (
	"id" BIGINT,
	"code" ENUM,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);
