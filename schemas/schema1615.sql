DROP DATABASE IF EXISTS "schema1615";
CREATE DATABASE "schema1615";
USE "schema1615";
CREATE TABLE "sys_category_record_mm" (
	"uid_local" INT,
	"uid_foreign" INT,
	"tablenames" VARCHAR,
	"fieldname" VARCHAR,
	"sorting" INT,
	"sorting_foreign" INT
);

CREATE TABLE "sys_category" (
	"title" TINYTEXT,
	"parent" INT,
	"items" INT
);

CREATE TABLE "sys_language" (
	"title" VARCHAR,
	"flag" VARCHAR,
	"language_isocode" VARCHAR
);

CREATE TABLE "sys_log" (
	"userid" INT,
	"action" TINYINT,
	"recuid" INT,
	"tablename" VARCHAR,
	"recpid" INT,
	"error" TINYINT,
	"details" TEXT,
	"type" TINYINT,
	"details_nr" TINYINT,
	"ip" VARCHAR,
	"log_data" TEXT,
	"event_pid" INT,
	"workspace" INT,
	"newid" VARCHAR,
	"request_id" VARCHAR,
	"time_micro" FLOAT,
	"component" VARCHAR,
	"level" TINYINT,
	"message" TEXT,
	"data" TEXT
);

CREATE TABLE "sys_refindex" (
	"hash" VARCHAR,
	"tablename" VARCHAR,
	"recuid" INT,
	"field" VARCHAR,
	"flexpointer" VARCHAR,
	"softref_key" VARCHAR,
	"softref_id" VARCHAR,
	"sorting" INT,
	"deleted" TINYINT,
	"workspace" INT,
	"ref_table" VARCHAR,
	"ref_uid" INT,
	"ref_string" VARCHAR,
	 PRIMARY KEY ("hash")
);

CREATE TABLE "sys_lockedrecords" (
	"uid" INT,
	"userid" INT,
	"tstamp" INT,
	"record_table" VARCHAR,
	"record_uid" INT,
	"record_pid" INT,
	"username" VARCHAR,
	"feuserid" INT,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "sys_history" (
	"uid" INT,
	"tstamp" INT,
	"actiontype" TINYINT,
	"usertype" VARCHAR,
	"userid" INT,
	"originaluserid" INT,
	"recuid" INT,
	"tablename" VARCHAR,
	"history_data" MEDIUMTEXT,
	"workspace" INT,
	"correlation_id" VARCHAR,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "sys_collection_entries" (
	"uid" INT,
	"uid_local" INT,
	"uid_foreign" INT,
	"tablenames" VARCHAR,
	"sorting" INT,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "sys_collection" (
	"title" TINYTEXT,
	"type" VARCHAR,
	"table_name" TINYTEXT,
	"items" INT
);

CREATE TABLE "sys_file_collection" (
	"title" TINYTEXT,
	"type" VARCHAR,
	"files" INT,
	"storage" INT,
	"folder" TEXT,
	"recursive" TINYINT,
	"category" INT
);

CREATE TABLE "sys_file_reference" (
	"uid_local" INT,
	"uid_foreign" INT,
	"tablenames" VARCHAR,
	"fieldname" VARCHAR,
	"sorting_foreign" INT,
	"table_local" VARCHAR,
	"title" TINYTEXT,
	"description" TEXT,
	"alternative" TEXT,
	"link" VARCHAR,
	"crop" VARCHAR,
	"autoplay" TINYINT
);

CREATE TABLE "sys_file_processedfile" (
	"uid" INT,
	"tstamp" INT,
	"crdate" INT,
	"storage" INT,
	"original" INT,
	"identifier" VARCHAR,
	"name" TINYTEXT,
	"processing_url" TEXT,
	"configuration" BLOB,
	"configurationsha1" CHAR,
	"originalfilesha1" CHAR,
	"task_type" VARCHAR,
	"checksum" CHAR,
	"width" INT,
	"height" INT,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "sys_file_metadata" (
	"file" INT,
	"title" TINYTEXT,
	"width" INT,
	"height" INT,
	"description" TEXT,
	"alternative" TEXT
);

CREATE TABLE "sys_file" (
	"last_indexed" INT,
	"missing" TINYINT,
	"storage" INT,
	"type" VARCHAR,
	"metadata" INT,
	"identifier" TEXT,
	"identifier_hash" CHAR,
	"folder_hash" CHAR,
	"extension" VARCHAR,
	"mime_type" VARCHAR,
	"name" TINYTEXT,
	"sha1" CHAR,
	"size" BIGINT,
	"creation_date" INT,
	"modification_date" INT
);

CREATE TABLE "sys_file_storage" (
	"name" VARCHAR,
	"driver" TINYTEXT,
	"configuration" TEXT,
	"is_default" TINYINT,
	"is_browsable" TINYINT,
	"is_public" TINYINT,
	"is_writable" TINYINT,
	"is_online" TINYINT,
	"auto_extract_metadata" TINYINT,
	"processingfolder" TINYTEXT
);

CREATE TABLE "sys_filemounts" (
	"title" VARCHAR,
	"path" VARCHAR,
	"base" INT,
	"read_only" TINYINT
);

CREATE TABLE "sys_news" (
	"title" VARCHAR,
	"content" MEDIUMTEXT
);

CREATE TABLE "sys_be_shortcuts" (
	"uid" INT,
	"userid" INT,
	"module_name" VARCHAR,
	"url" TEXT,
	"description" VARCHAR,
	"sorting" INT,
	"sc_group" TINYINT,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "sys_registry" (
	"uid" INT,
	"entry_namespace" VARCHAR,
	"entry_key" VARCHAR,
	"entry_value" MEDIUMBLOB,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "pages" (
	"perms_userid" INT,
	"perms_groupid" INT,
	"perms_user" TINYINT,
	"perms_group" TINYINT,
	"perms_everybody" TINYINT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"doktype" INT,
	"tsconfig" TEXT,
	"is_siteroot" TINYINT,
	"php_tree_stop" TINYINT,
	"url" VARCHAR,
	"shortcut" INT,
	"shortcut_mode" INT,
	"subtitle" VARCHAR,
	"layout" INT,
	"target" VARCHAR,
	"media" INT,
	"lastupdated" INT,
	"keywords" TEXT,
	"cache_timeout" INT,
	"cache_tags" VARCHAR,
	"newuntil" INT,
	"description" TEXT,
	"no_search" TINYINT,
	"sys_lastchanged" INT,
	"abstract" TEXT,
	"module" VARCHAR,
	"extendtosubpages" TINYINT,
	"author" VARCHAR,
	"author_email" VARCHAR,
	"nav_title" VARCHAR,
	"nav_hide" TINYINT,
	"content_from_pid" INT,
	"mount_pid" INT,
	"mount_pid_ol" TINYINT,
	"l18n_cfg" TINYINT,
	"fe_login_mode" TINYINT,
	"backend_layout" VARCHAR,
	"backend_layout_next_level" VARCHAR,
	"tsconfig_includes" TEXT,
	"legacy_overlay_uid" INT
);

CREATE TABLE "be_users" (
	"username" VARCHAR,
	"avatar" INT,
	"password" VARCHAR,
	"admin" TINYINT,
	"usergroup" VARCHAR,
	"lang" VARCHAR,
	"email" VARCHAR,
	"db_mountpoints" TEXT,
	"options" TINYINT,
	"realname" VARCHAR,
	"usermods" TEXT,
	"allowed_languages" VARCHAR,
	"uc" MEDIUMBLOB,
	"file_mountpoints" TEXT,
	"file_permissions" TEXT,
	"workspace_perms" TINYINT,
	"locktodomain" VARCHAR,
	"disableiplock" TINYINT,
	"tsconfig" TEXT,
	"lastlogin" INT,
	"createdbyaction" INT,
	"usergroup_cached_list" TEXT,
	"workspace_id" INT,
	"category_perms" TEXT
);

CREATE TABLE "be_sessions" (
	"ses_id" VARCHAR,
	"ses_iplock" VARCHAR,
	"ses_userid" INT,
	"ses_tstamp" INT,
	"ses_data" LONGBLOB,
	"ses_backuserid" INT,
	 PRIMARY KEY ("ses_id")
);

CREATE TABLE "be_groups" (
	"title" VARCHAR,
	"non_exclude_fields" TEXT,
	"explicit_allowdeny" TEXT,
	"allowed_languages" VARCHAR,
	"custom_options" TEXT,
	"db_mountpoints" TEXT,
	"pagetypes_select" TEXT,
	"tables_select" TEXT,
	"tables_modify" TEXT,
	"groupmods" TEXT,
	"availablewidgets" TEXT,
	"file_mountpoints" TEXT,
	"file_permissions" TEXT,
	"locktodomain" VARCHAR,
	"tsconfig" TEXT,
	"subgroup" TEXT,
	"workspace_perms" TINYINT,
	"category_perms" TEXT
);
