DROP DATABASE IF EXISTS "schema623";
CREATE DATABASE "schema623";
USE "schema623";
CREATE TABLE "user_role" (
	"user_id" BIGINT,
	"role_id" BIGINT
);

CREATE TABLE "user_group" (
	"user_id" BIGINT,
	"group_id" BIGINT
);

CREATE TABLE "user" (
	"id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"name" VARCHAR,
	"remark" VARCHAR,
	"enable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_permission" (
	"role_id" BIGINT,
	"permission_id" BIGINT
);

CREATE TABLE "role_menu" (
	"role_id" BIGINT,
	"menu_id" BIGINT
);

CREATE TABLE "role" (
	"id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"name" VARCHAR,
	"remark" VARCHAR,
	"enable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission" (
	"id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"name" VARCHAR,
	"remark" VARCHAR,
	"enable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menu" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"name" VARCHAR,
	"order" INT,
	"type" VARCHAR,
	"icon" VARCHAR,
	"component" VARCHAR,
	"enable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "login_state" (
	"auth_token" VARCHAR,
	"user_id" BIGINT,
	"expire" DATETIME,
	"roles" VARCHAR,
	"permissions" VARCHAR,
	"group_list" VARCHAR,
	 PRIMARY KEY ("auth_token")
);

CREATE TABLE "group" (
	"id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	"parent_id" BIGINT,
	"order" INT,
	"name" VARCHAR,
	"remark" VARCHAR,
	"enable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auto_inc_id" (
	"table_name" VARCHAR,
	"id_value" BIGINT
);
