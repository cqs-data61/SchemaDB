DROP DATABASE IF EXISTS "schema720";
CREATE DATABASE "schema720";
USE "schema720";
CREATE TABLE "admin_user_group_menu_relation" (
	"group_id" INT,
	"menu_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_role_menu_relation" (
	"role_id" INT,
	"menu_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_user_menu_relation" (
	"user_id" INT,
	"menu_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_organization_menu_relation" (
	"org_id" INT,
	"menu_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_user_group_resource_action_relation" (
	"group_id" INT,
	"action_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_role_resource_action_relation" (
	"role_id" INT,
	"action_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_user_resource_action_relation" (
	"user_id" INT,
	"action_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_organization_resource_action_relation" (
	"org_id" INT,
	"action_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_user_group_role_relation" (
	"group_id" INT,
	"role_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_user_role_relation" (
	"user_id" INT,
	"role_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_organization_role_relation" (
	"org_id" INT,
	"role_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_user_group_user_relation" (
	"group_id" INT,
	"user_id" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR
);

CREATE TABLE "admin_menu" (
	"id" INT,
	"pid" INT,
	"parent_ids" VARCHAR,
	"menu_name" VARCHAR,
	"menu_code" VARCHAR,
	"menu_icon" VARCHAR,
	"menu_route" VARCHAR,
	"menu_level" INT,
	"menu_no" INT,
	"is_directory" TINYINT,
	"is_hidden" TINYINT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_resource_action" (
	"id" INT,
	"resource_id" INT,
	"action_name" VARCHAR,
	"action_path" VARCHAR,
	"action_desc" VARCHAR,
	"action_no" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_resource" (
	"id" INT,
	"category_id" INT,
	"resource_name" VARCHAR,
	"resource_path" VARCHAR,
	"resource_desc" VARCHAR,
	"resource_no" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_resource_category" (
	"id" INT,
	"category_name" VARCHAR,
	"server_name" VARCHAR,
	"category_no" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_user_group" (
	"id" INT,
	"group_name" VARCHAR,
	"group_desc" VARCHAR,
	"group_no" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_role" (
	"id" INT,
	"role_name" VARCHAR,
	"role_code" VARCHAR,
	"role_desc" VARCHAR,
	"status" INT,
	"role_no" INT,
	"user_count" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_user" (
	"id" INT,
	"org_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"avatar" VARCHAR,
	"signature" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"gender" INT,
	"birthday" DATE,
	"status" INT,
	"user_no" INT,
	"last_login_time" DATETIME,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_organization" (
	"id" INT,
	"pid" INT,
	"org_name" VARCHAR,
	"org_code" VARCHAR,
	"org_code_link" VARCHAR,
	"org_type" INT,
	"version" INT,
	"deleted" TINYINT,
	"creator_id" INT,
	"create_time" DATETIME,
	"last_modifier_id" INT,
	"last_modify_time" DATETIME,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("id")
);
