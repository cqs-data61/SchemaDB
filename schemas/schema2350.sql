DROP DATABASE IF EXISTS "schema2350";
CREATE DATABASE "schema2350";
USE "schema2350";
CREATE TABLE "lin_user_group" (
	"id" INT,
	"user_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" INT,
	"title" VARCHAR,
	"author" VARCHAR,
	"summary" VARCHAR,
	"image" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_user_identity" (
	"id" INT,
	"user_id" INT,
	"identity_type" VARCHAR,
	"identifier" VARCHAR,
	"credential" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_user" (
	"id" INT,
	"username" VARCHAR,
	"nickname" VARCHAR,
	"avatar" VARCHAR,
	"email" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_group_permission" (
	"id" INT,
	"group_id" INT,
	"permission_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_group" (
	"id" INT,
	"name" VARCHAR,
	"info" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_permission" (
	"id" INT,
	"name" VARCHAR,
	"module" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_log" (
	"id" INT,
	"message" VARCHAR,
	"user_id" INT,
	"username" VARCHAR,
	"status_code" INT,
	"method" VARCHAR,
	"path" VARCHAR,
	"permission" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lin_file" (
	"id" INT,
	"path" VARCHAR,
	"type" VARCHAR,
	"name" VARCHAR,
	"extension" VARCHAR,
	"size" INT,
	"md5" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"delete_time" DATETIME,
	 PRIMARY KEY ("id")
);
