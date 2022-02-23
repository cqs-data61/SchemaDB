DROP DATABASE IF EXISTS "schema956";
CREATE DATABASE "schema956";
USE "schema956";
CREATE TABLE "sys_test" (
	"id" BIGINT,
	"code" VARCHAR,
	"description" VARCHAR,
	"active" TINYINT,
	"datetime" DATETIME,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_tag_relation" (
	"id" BIGINT,
	"tag_type_id" BIGINT,
	"tag_id" BIGINT,
	"target_type" VARCHAR,
	"target_entity_id" BIGINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_tag" (
	"id" BIGINT,
	"tag_type_id" BIGINT,
	"title" VARCHAR,
	"description" VARCHAR,
	"index_" INT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_tag_type" (
	"id" BIGINT,
	"code" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dictionary_relation" (
	"id" BIGINT,
	"dictionary_type_id" BIGINT,
	"dictionary_item_id" BIGINT,
	"target_type" VARCHAR,
	"target_entity_id" BIGINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dictionary_item" (
	"id" BIGINT,
	"dictionary_type_id" BIGINT,
	"index_" INT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dictionary_type" (
	"id" BIGINT,
	"code" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_catalog_relation" (
	"id" BIGINT,
	"ancestor_id" BIGINT,
	"entity_id" BIGINT,
	"relation_type" VARCHAR,
	"parent_ind" TINYINT,
	"path_" VARCHAR,
	"index_" INT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_catalog" (
	"id" BIGINT,
	"catalog_type_id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"root_ind" TINYINT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_catalog_type" (
	"id" BIGINT,
	"code" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_label" (
	"id" BIGINT,
	"code" VARCHAR,
	"description" VARCHAR,
	"zh_cn_label" TEXT,
	"zh_cn_source_ind" TINYINT,
	"zh_cn_final_ind" TINYINT,
	"zh_hk_label" TEXT,
	"zh_hk_source_ind" TINYINT,
	"zh_hk_final_ind" TINYINT,
	"en_us_label" TEXT,
	"en_us_source_ind" TINYINT,
	"en_us_final_ind" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_lang" (
	"id" BIGINT,
	"locale" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	"default_ind" TINYINT,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user_session" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"user_id" BIGINT,
	"session_id" VARCHAR,
	"host" VARCHAR,
	"device" VARCHAR,
	"client_id" VARCHAR,
	"client_version" VARCHAR,
	"platform" VARCHAR,
	"start_datetime" DATETIME,
	"last_access_datetime" DATETIME,
	"end_datetime" DATETIME,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_entity_relation" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"ancestor_id" BIGINT,
	"entity_id" BIGINT,
	"relation_type" VARCHAR,
	"parent_ind" TINYINT,
	"path_" VARCHAR,
	"index_" INT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user_role_relation" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"role_id" BIGINT,
	"user_id" BIGINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_role_authority_relation" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"role_id" BIGINT,
	"authority_id" BIGINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_tenant_authority_relation" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"authority_id" BIGINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_tenant_user" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"user_id" BIGINT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"entry_date" DATETIME,
	"resignation_date" DATETIME,
	"status" TINYINT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"email" VARCHAR,
	"mobile_country_code" VARCHAR,
	"mobile" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"id_card_type" VARCHAR,
	"id_card_no" VARCHAR,
	"sex" VARCHAR,
	"birthday" DATETIME,
	"description" VARCHAR,
	"status" TINYINT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_position" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"root_ind" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_department" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"root_ind" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_role" (
	"id" BIGINT,
	"tenant_id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	"status" TINYINT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_tenant" (
	"id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"status" TINYINT,
	"source" TINYINT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_authority" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	"type_" INT,
	"index_" INT,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_client" (
	"id" BIGINT,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"client_name" VARCHAR,
	"authorization_grant_types" VARCHAR,
	"client_authentication_methods" VARCHAR,
	"scopes" VARCHAR,
	"redirect_uris" VARCHAR,
	"description" VARCHAR,
	"active" TINYINT,
	"created_at" DATETIME,
	"created_by" BIGINT,
	"last_modified_at" DATETIME,
	"last_modified_by" BIGINT,
	"deleted_at" DATETIME,
	"deleted_by" BIGINT,
	 PRIMARY KEY ("id")
);
