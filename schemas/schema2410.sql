DROP DATABASE IF EXISTS "schema2410";
CREATE DATABASE "schema2410";
USE "schema2410";
CREATE TABLE "coin_webgroup_names" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_webgroup_access" (
	"id" INT,
	"webgroup" INT,
	"documentgroup" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_web_users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"cachepwd" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_web_user_settings" (
	"webuser" INT,
	"setting_name" VARCHAR,
	"setting_value" TEXT,
	 PRIMARY KEY ("webuser","setting_name")
);

CREATE TABLE "coin_web_user_attributes" (
	"id" INT,
	"internalkey" INT,
	"fullname" VARCHAR,
	"role" INT,
	"email" VARCHAR,
	"phone" VARCHAR,
	"mobilephone" VARCHAR,
	"blocked" INT,
	"blockeduntil" INT,
	"blockedafter" INT,
	"logincount" INT,
	"lastlogin" INT,
	"thislogin" INT,
	"failedlogincount" INT,
	"sessionid" VARCHAR,
	"dob" INT,
	"gender" INT,
	"country" VARCHAR,
	"street" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"fax" VARCHAR,
	"photo" VARCHAR,
	"comment" TEXT,
	"createdon" INT,
	"editedon" INT,
	"verified" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_web_groups" (
	"id" INT,
	"webgroup" INT,
	"webuser" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_user_settings" (
	"user" INT,
	"setting_name" VARCHAR,
	"setting_value" TEXT,
	 PRIMARY KEY ("user","setting_name")
);

CREATE TABLE "coin_user_roles" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"frames" INT,
	"home" INT,
	"view_document" INT,
	"new_document" INT,
	"save_document" INT,
	"publish_document" INT,
	"delete_document" INT,
	"empty_trash" INT,
	"action_ok" INT,
	"logout" INT,
	"help" INT,
	"messages" INT,
	"new_user" INT,
	"edit_user" INT,
	"logs" INT,
	"edit_parser" INT,
	"save_parser" INT,
	"edit_template" INT,
	"settings" INT,
	"credits" INT,
	"new_template" INT,
	"save_template" INT,
	"delete_template" INT,
	"edit_snippet" INT,
	"new_snippet" INT,
	"save_snippet" INT,
	"delete_snippet" INT,
	"edit_chunk" INT,
	"new_chunk" INT,
	"save_chunk" INT,
	"delete_chunk" INT,
	"empty_cache" INT,
	"edit_document" INT,
	"change_password" INT,
	"error_dialog" INT,
	"about" INT,
	"category_manager" INT,
	"file_manager" INT,
	"assets_files" INT,
	"assets_images" INT,
	"save_user" INT,
	"delete_user" INT,
	"save_password" INT,
	"edit_role" INT,
	"save_role" INT,
	"delete_role" INT,
	"new_role" INT,
	"access_permissions" INT,
	"bk_manager" INT,
	"new_plugin" INT,
	"edit_plugin" INT,
	"save_plugin" INT,
	"delete_plugin" INT,
	"new_module" INT,
	"edit_module" INT,
	"save_module" INT,
	"delete_module" INT,
	"exec_module" INT,
	"view_eventlog" INT,
	"delete_eventlog" INT,
	"new_web_user" INT,
	"edit_web_user" INT,
	"save_web_user" INT,
	"delete_web_user" INT,
	"web_access_permissions" INT,
	"view_unpublished" INT,
	"import_static" INT,
	"export_static" INT,
	"remove_locks" INT,
	"display_locks" INT,
	"change_resourcetype" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_user_messages" (
	"id" INT,
	"type" VARCHAR,
	"subject" VARCHAR,
	"message" TEXT,
	"sender" INT,
	"recipient" INT,
	"private" TINYINT,
	"postdate" INT,
	"messageread" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_user_attributes" (
	"id" INT,
	"internalkey" INT,
	"fullname" VARCHAR,
	"role" INT,
	"email" VARCHAR,
	"phone" VARCHAR,
	"mobilephone" VARCHAR,
	"blocked" INT,
	"blockeduntil" INT,
	"blockedafter" INT,
	"logincount" INT,
	"lastlogin" INT,
	"thislogin" INT,
	"failedlogincount" INT,
	"sessionid" VARCHAR,
	"dob" INT,
	"gender" INT,
	"country" VARCHAR,
	"street" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"fax" VARCHAR,
	"photo" VARCHAR,
	"comment" TEXT,
	"createdon" INT,
	"editedon" INT,
	"verified" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_system_settings" (
	"setting_name" VARCHAR,
	"setting_value" TEXT,
	 PRIMARY KEY ("setting_name")
);

CREATE TABLE "coin_system_eventnames" (
	"id" INT,
	"name" VARCHAR,
	"service" TINYINT,
	"groupname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_tmplvars" (
	"id" INT,
	"type" VARCHAR,
	"name" VARCHAR,
	"caption" VARCHAR,
	"description" VARCHAR,
	"editor_type" INT,
	"category" INT,
	"locked" TINYINT,
	"elements" TEXT,
	"rank" INT,
	"display" VARCHAR,
	"display_params" TEXT,
	"default_text" TEXT,
	"createdon" INT,
	"editedon" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_tmplvar_templates" (
	"tmplvarid" INT,
	"templateid" INT,
	"rank" INT,
	 PRIMARY KEY ("tmplvarid","templateid")
);

CREATE TABLE "coin_site_tmplvar_contentvalues" (
	"id" INT,
	"tmplvarid" INT,
	"contentid" INT,
	"value" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_tmplvar_access" (
	"id" INT,
	"tmplvarid" INT,
	"documentgroup" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_templates" (
	"id" INT,
	"templatename" VARCHAR,
	"templatealias" VARCHAR,
	"description" VARCHAR,
	"editor_type" INT,
	"category" INT,
	"icon" VARCHAR,
	"template_type" INT,
	"content" MEDIUMTEXT,
	"locked" TINYINT,
	"selectable" TINYINT,
	"createdon" INT,
	"editedon" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_snippets" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"editor_type" INT,
	"category" INT,
	"cache_type" TINYINT,
	"snippet" MEDIUMTEXT,
	"locked" TINYINT,
	"properties" TEXT,
	"moduleguid" VARCHAR,
	"createdon" INT,
	"editedon" INT,
	"disabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_plugins" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"editor_type" INT,
	"category" INT,
	"cache_type" TINYINT,
	"plugincode" MEDIUMTEXT,
	"locked" TINYINT,
	"properties" TEXT,
	"disabled" TINYINT,
	"moduleguid" VARCHAR,
	"createdon" INT,
	"editedon" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_plugin_events" (
	"pluginid" INT,
	"evtid" INT,
	"priority" INT,
	 PRIMARY KEY ("pluginid","evtid")
);

CREATE TABLE "coin_site_modules" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"editor_type" INT,
	"disabled" TINYINT,
	"category" INT,
	"wrap" TINYINT,
	"locked" TINYINT,
	"icon" VARCHAR,
	"enable_resource" TINYINT,
	"resourcefile" VARCHAR,
	"createdon" INT,
	"editedon" INT,
	"guid" VARCHAR,
	"enable_sharedparams" TINYINT,
	"properties" TEXT,
	"modulecode" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_module_depobj" (
	"id" INT,
	"module" INT,
	"resource" INT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_module_access" (
	"id" INT,
	"module" INT,
	"usergroup" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_htmlsnippets" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"editor_type" INT,
	"editor_name" VARCHAR,
	"category" INT,
	"cache_type" TINYINT,
	"snippet" MEDIUMTEXT,
	"locked" TINYINT,
	"createdon" INT,
	"editedon" INT,
	"disabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_site_content" (
	"id" INT,
	"type" VARCHAR,
	"contenttype" VARCHAR,
	"pagetitle" VARCHAR,
	"longtitle" VARCHAR,
	"description" VARCHAR,
	"alias" VARCHAR,
	"link_attributes" VARCHAR,
	"published" INT,
	"pub_date" INT,
	"unpub_date" INT,
	"parent" INT,
	"isfolder" INT,
	"introtext" TEXT,
	"content" MEDIUMTEXT,
	"richtext" TINYINT,
	"template" INT,
	"menuindex" INT,
	"searchable" INT,
	"cacheable" INT,
	"createdby" INT,
	"createdon" INT,
	"editedby" INT,
	"editedon" INT,
	"deleted" INT,
	"deletedon" INT,
	"deletedby" INT,
	"publishedon" INT,
	"publishedby" INT,
	"menutitle" VARCHAR,
	"donthit" TINYINT,
	"privateweb" TINYINT,
	"privatemgr" TINYINT,
	"content_dispo" TINYINT,
	"hidemenu" TINYINT,
	"alias_visible" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_membergroup_names" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_membergroup_access" (
	"id" INT,
	"membergroup" INT,
	"documentgroup" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_member_groups" (
	"id" INT,
	"user_group" INT,
	"member" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_manager_users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_manager_log" (
	"id" INT,
	"timestamp" INT,
	"internalkey" INT,
	"username" VARCHAR,
	"action" INT,
	"itemid" VARCHAR,
	"itemname" VARCHAR,
	"message" VARCHAR,
	"ip" VARCHAR,
	"useragent" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_lexicon" (
	"id" INT,
	"name" VARCHAR,
	"ru" VARCHAR,
	"en" VARCHAR,
	"sp" VARCHAR,
	"ch" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_event_log" (
	"id" INT,
	"eventid" INT,
	"createdon" INT,
	"type" TINYINT,
	"user" INT,
	"usertype" TINYINT,
	"source" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_documentgroup_names" (
	"id" INT,
	"name" VARCHAR,
	"private_memgroup" TINYINT,
	"private_webgroup" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_document_groups" (
	"id" INT,
	"document_group" INT,
	"document" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_categories" (
	"id" INT,
	"category" VARCHAR,
	"rank" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coin_active_users" (
	"sid" VARCHAR,
	"internalkey" INT,
	"username" VARCHAR,
	"lasthit" INT,
	"action" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("sid","username")
);

CREATE TABLE "coin_active_user_sessions" (
	"sid" VARCHAR,
	"internalkey" INT,
	"lasthit" INT,
	"ip" VARCHAR,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "coin_active_user_locks" (
	"id" INT,
	"sid" VARCHAR,
	"internalkey" INT,
	"elementtype" INT,
	"elementid" INT,
	"lasthit" INT,
	 PRIMARY KEY ("id")
);
