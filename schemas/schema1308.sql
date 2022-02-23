DROP DATABASE IF EXISTS "schema1308";
CREATE DATABASE "schema1308";
USE "schema1308";
CREATE TABLE "auth_user_role" (
	"id" BIGINT,
	"role_id" BIGINT,
	"user_id" BIGINT,
	"creator_id" BIGINT,
	"signature" VARCHAR,
	"gmt_create" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_proxy" (
	"id" BIGINT,
	"user_a_id" BIGINT,
	"user_b_id" BIGINT,
	"begin_date" DATETIME,
	"end_date" DATETIME,
	"gmt_create" DATETIME,
	"signature" VARCHAR,
	"valid" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user" (
	"id" BIGINT,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"mobile" VARCHAR,
	"mobile_verified" TINYINT,
	"email" VARCHAR,
	"email_verified" TINYINT,
	"name" VARCHAR,
	"avatar" VARCHAR,
	"last_login_time" DATETIME,
	"last_login_ip" VARCHAR,
	"open_id" VARCHAR,
	"state" TINYINT,
	"depart_id" BIGINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	"signature" VARCHAR,
	"creator_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_role_privilege" (
	"id" BIGINT,
	"role_id" BIGINT,
	"privilege_id" BIGINT,
	"creator_id" BIGINT,
	"gmt_create" DATETIME,
	"signature" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_role" (
	"id" BIGINT,
	"name" VARCHAR,
	"creator_id" BIGINT,
	"descr" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_privilege" (
	"id" BIGINT,
	"name" VARCHAR,
	"url" VARCHAR,
	"request_type" TINYINT,
	"signature" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_new_user" (
	"id" BIGINT,
	"user_name" VARCHAR,
	"mobile" VARCHAR,
	"email" VARCHAR,
	"name" VARCHAR,
	"avatar" VARCHAR,
	"open_id" VARCHAR,
	"depart_id" BIGINT,
	"gmt_create" DATETIME,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
