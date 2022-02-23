DROP DATABASE IF EXISTS "schema1958";
CREATE DATABASE "schema1958";
USE "schema1958";
CREATE TABLE "sys_menu" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"parent_ids" VARCHAR,
	"name" VARCHAR,
	"href" VARCHAR,
	"target" VARCHAR,
	"icon" VARCHAR,
	"sort" INT,
	"is_show" CHAR,
	"permission" VARCHAR,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"del_flag" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_mdict" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"parent_ids" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"sort" INT,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"del_flag" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_log" (
	"id" BIGINT,
	"type" CHAR,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"remote_addr" VARCHAR,
	"user_agent" VARCHAR,
	"request_uri" VARCHAR,
	"method" VARCHAR,
	"params" TEXT,
	"exception" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dict" (
	"id" BIGINT,
	"label" VARCHAR,
	"value" VARCHAR,
	"type" VARCHAR,
	"description" VARCHAR,
	"sort" INT,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"del_flag" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_area" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"parent_ids" VARCHAR,
	"code" VARCHAR,
	"name" VARCHAR,
	"type" CHAR,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"del_flag" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_office" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"parent_ids" VARCHAR,
	"area_id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"type" CHAR,
	"grade" CHAR,
	"address" VARCHAR,
	"zip_code" VARCHAR,
	"master" VARCHAR,
	"phone" VARCHAR,
	"fax" VARCHAR,
	"email" VARCHAR,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"del_flag" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKE024AC6E544B06BF" FOREIGN KEY ("area_id") REFERENCES "sys_area" ("id")
);

CREATE TABLE "sys_user" (
	"id" BIGINT,
	"company_id" BIGINT,
	"office_id" BIGINT,
	"login_name" VARCHAR,
	"password" VARCHAR,
	"no" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"mobile" VARCHAR,
	"user_type" CHAR,
	"login_ip" VARCHAR,
	"login_date" DATETIME,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"pid" BIGINT,
	"del_flag" CHAR,
	"sign" VARCHAR,
	"balance_type" INT,
	"classificationd" VARCHAR,
	"company_address" VARCHAR,
	"compay" VARCHAR,
	"cp_type" INT,
	"description" VARCHAR,
	"discp_id" VARCHAR,
	"im" VARCHAR,
	"is_report" INT,
	"is_split" INT,
	"msg_type" VARCHAR,
	"parent_id" VARCHAR,
	"send_area" VARCHAR,
	"user_area" VARCHAR,
	"white_cnt" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK74A81DFD4D32F1F" FOREIGN KEY ("office_id") REFERENCES "sys_office" ("id"),
	 CONSTRAINT "FK74A81DFDA47CC66A" FOREIGN KEY ("create_by") REFERENCES "sys_user" ("id"),
	 CONSTRAINT "FK74A81DFDCA3FF7D" FOREIGN KEY ("update_by") REFERENCES "sys_user" ("id"),
	 CONSTRAINT "FK74A81DFD585DCDBE" FOREIGN KEY ("company_id") REFERENCES "sys_office" ("id")
);

CREATE TABLE "sys_role" (
	"id" BIGINT,
	"office_id" BIGINT,
	"name" VARCHAR,
	"enname" VARCHAR,
	"role_type" VARCHAR,
	"data_scope" CHAR,
	"create_by" BIGINT,
	"create_date" DATETIME,
	"update_by" BIGINT,
	"update_date" DATETIME,
	"remarks" VARCHAR,
	"del_flag" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK74A6B2A84D32F1F" FOREIGN KEY ("office_id") REFERENCES "sys_office" ("id")
);

CREATE TABLE "sys_user_role" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "FK660C5178D2E2921F" FOREIGN KEY ("role_id") REFERENCES "sys_role" ("id"),
	 CONSTRAINT "FK660C5178780D55FF" FOREIGN KEY ("user_id") REFERENCES "sys_user" ("id")
);

CREATE TABLE "sys_role_office" (
	"role_id" BIGINT,
	"office_id" BIGINT,
	 PRIMARY KEY ("role_id","office_id"),
	 CONSTRAINT "FK4639BC33D2E2921F" FOREIGN KEY ("role_id") REFERENCES "sys_role" ("id"),
	 CONSTRAINT "FK4639BC334D32F1F" FOREIGN KEY ("office_id") REFERENCES "sys_office" ("id")
);

CREATE TABLE "sys_role_menu" (
	"role_id" BIGINT,
	"menu_id" BIGINT,
	 PRIMARY KEY ("role_id","menu_id"),
	 CONSTRAINT "FK65D48496D2E2921F" FOREIGN KEY ("role_id") REFERENCES "sys_role" ("id"),
	 CONSTRAINT "FK65D48496B973FD7F" FOREIGN KEY ("menu_id") REFERENCES "sys_menu" ("id")
);
