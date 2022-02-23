DROP DATABASE IF EXISTS "schema1205";
CREATE DATABASE "schema1205";
USE "schema1205";
CREATE TABLE "admin_user" (
	"id" BIGINT,
	"uname" VARCHAR,
	"password" VARCHAR,
	"auth_key" VARCHAR,
	"last_ip" VARCHAR,
	"is_online" CHAR,
	"domain_account" VARCHAR,
	"status" SMALLINT,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_role" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"des" VARCHAR,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_user_role" (
	"id" INT,
	"user_id" BIGINT,
	"role_id" INT,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "admin_user_role_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "admin_user" ("id"),
	 CONSTRAINT "admin_user_role_ibfk_2" FOREIGN KEY ("role_id") REFERENCES "admin_role" ("id")
);

CREATE TABLE "admin_message" (
	"id" INT,
	"msg" VARCHAR,
	"expiry_days" INT,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_module" (
	"id" INT,
	"code" VARCHAR,
	"display_label" VARCHAR,
	"has_lef" VARCHAR,
	"des" VARCHAR,
	"entry_url" VARCHAR,
	"display_order" INT,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_menu" (
	"id" INT,
	"code" VARCHAR,
	"menu_name" VARCHAR,
	"module_id" INT,
	"display_label" VARCHAR,
	"des" VARCHAR,
	"display_order" INT,
	"entry_right_name" VARCHAR,
	"entry_url" VARCHAR,
	"action" VARCHAR,
	"controller" VARCHAR,
	"has_lef" VARCHAR,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_module_id" FOREIGN KEY ("module_id") REFERENCES "admin_module" ("id")
);

CREATE TABLE "admin_right" (
	"id" INT,
	"menu_id" INT,
	"right_name" VARCHAR,
	"display_label" VARCHAR,
	"des" VARCHAR,
	"display_order" INT,
	"has_lef" VARCHAR,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_admin_right" FOREIGN KEY ("menu_id") REFERENCES "admin_menu" ("id")
);

CREATE TABLE "admin_role_right" (
	"id" INT,
	"role_id" INT,
	"right_id" INT,
	"full_path" VARCHAR,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "admin_role_right_ibfk_1" FOREIGN KEY ("right_id") REFERENCES "admin_right" ("id")
);

CREATE TABLE "admin_right_url" (
	"id" INT,
	"right_id" INT,
	"url" VARCHAR,
	"para_name" VARCHAR,
	"para_value" VARCHAR,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	"update_user" VARCHAR,
	"update_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_admin_right_url" FOREIGN KEY ("right_id") REFERENCES "admin_right" ("id")
);

CREATE TABLE "admin_log" (
	"id" BIGINT,
	"controller_id" VARCHAR,
	"action_id" VARCHAR,
	"url" VARCHAR,
	"module_name" VARCHAR,
	"func_name" VARCHAR,
	"right_name" VARCHAR,
	"client_ip" VARCHAR,
	"create_user" VARCHAR,
	"create_date" DATETIME,
	 PRIMARY KEY ("id")
);
