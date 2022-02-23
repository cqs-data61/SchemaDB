DROP DATABASE IF EXISTS "schema1502";
CREATE DATABASE "schema1502";
USE "schema1502";
CREATE TABLE "chapter" (
	"id" BIGINT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"url" VARCHAR,
	"book_url" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "book" (
	"id" BIGINT,
	"name" VARCHAR,
	"author" VARCHAR,
	"introduction" VARCHAR,
	"picture" VARCHAR,
	"url" VARCHAR,
	"category_code" VARCHAR,
	"category_name" VARCHAR,
	"new_chapter_url" VARCHAR,
	"new_chapter_title" VARCHAR,
	"is_finished" TINYINT,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "sms" (
	"id" BIGINT,
	"code" VARCHAR,
	"mobile" VARCHAR,
	"token" VARCHAR,
	"result" VARCHAR,
	"err_co" VARCHAR,
	"err_msg" VARCHAR,
	"expire_time" DATETIME,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "dictionary_medi" (
	"id" BIGINT,
	"source_id" BIGINT,
	"dictionary_code" VARCHAR,
	"type" VARCHAR
);

CREATE TABLE "article" (
	"id" BIGINT,
	"title" VARCHAR,
	"tags" VARCHAR,
	"content" LONGTEXT,
	"create_username" VARCHAR,
	"create_fullname" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "attachment" (
	"id" BIGINT,
	"source_id" BIGINT,
	"name" VARCHAR,
	"path" VARCHAR,
	"type" VARCHAR,
	"create_username" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "token" (
	"id" BIGINT,
	"code" VARCHAR,
	"type" VARCHAR,
	"user_id" BIGINT,
	"expire_time" DATETIME,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "content" (
	"id" BIGINT,
	"title" VARCHAR,
	"template" VARCHAR,
	"body" LONGTEXT,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "dictionary" (
	"id" BIGINT,
	"code" VARCHAR,
	"value" VARCHAR,
	"type" VARCHAR,
	"sort" INT,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "role_menu" (
	"role_code" VARCHAR,
	"menu_code" VARCHAR,
	 PRIMARY KEY ("role_code","menu_code")
);

CREATE TABLE "user_role" (
	"username" VARCHAR,
	"role_code" VARCHAR,
	 PRIMARY KEY ("username","role_code")
);

CREATE TABLE "menu" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"pcode" VARCHAR,
	"url" VARCHAR,
	"sort" INT,
	"icon" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "role" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "user_profile" (
	"id" BIGINT,
	"username" VARCHAR,
	"medium_avatar" VARCHAR,
	"large_avatar" VARCHAR,
	"sex" TINYINT,
	"phone" VARCHAR,
	"qq" VARCHAR,
	"weixin" VARCHAR,
	"id_card" VARCHAR,
	"web_site" VARCHAR,
	"address" VARCHAR,
	"remarks" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);

CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"email" VARCHAR,
	"mobile" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"fullname" VARCHAR,
	"small_avatar" VARCHAR,
	"is_deleted" TINYINT,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP
);
