DROP DATABASE IF EXISTS "schema2131";
CREATE DATABASE "schema2131";
USE "schema2131";
CREATE TABLE "watchdog" (
	"wid" INT,
	"uid" INT,
	"type" VARCHAR,
	"message" LONGTEXT,
	"variables" LONGBLOB,
	"severity" TINYINT,
	"link" TEXT,
	"location" TEXT,
	"referer" TEXT,
	"hostname" VARCHAR,
	"timestamp" INT,
	 PRIMARY KEY ("wid")
);

CREATE TABLE "users_field_data" (
	"uid" INT,
	"langcode" VARCHAR,
	"preferred_langcode" VARCHAR,
	"preferred_admin_langcode" VARCHAR,
	"name" VARCHAR,
	"pass" VARCHAR,
	"mail" VARCHAR,
	"timezone" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	"access" INT,
	"login" INT,
	"init" VARCHAR,
	"default_langcode" TINYINT,
	 PRIMARY KEY ("uid","langcode")
);

CREATE TABLE "users_data" (
	"uid" INT,
	"module" VARCHAR,
	"name" VARCHAR,
	"value" LONGBLOB,
	"serialized" TINYINT,
	 PRIMARY KEY ("uid","module","name")
);

CREATE TABLE "users" (
	"uid" INT,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "user__user_picture" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"user_picture_target_id" INT,
	"user_picture_alt" VARCHAR,
	"user_picture_title" VARCHAR,
	"user_picture_width" INT,
	"user_picture_height" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "user__roles" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"roles_target_id" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "taxonomy_term_revision__parent" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"parent_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "taxonomy_term_revision" (
	"tid" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"revision_user" INT,
	"revision_created" INT,
	"revision_log_message" LONGTEXT,
	"revision_default" TINYINT,
	 PRIMARY KEY ("revision_id")
);

CREATE TABLE "taxonomy_term_field_revision" (
	"tid" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"status" TINYINT,
	"name" VARCHAR,
	"description__value" LONGTEXT,
	"description__format" VARCHAR,
	"changed" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("revision_id","langcode")
);

CREATE TABLE "taxonomy_term_field_data" (
	"tid" INT,
	"revision_id" INT,
	"vid" VARCHAR,
	"langcode" VARCHAR,
	"status" TINYINT,
	"name" VARCHAR,
	"description__value" LONGTEXT,
	"description__format" VARCHAR,
	"weight" INT,
	"changed" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("tid","langcode")
);

CREATE TABLE "taxonomy_term_data" (
	"tid" INT,
	"revision_id" INT,
	"vid" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("tid")
);

CREATE TABLE "taxonomy_term__parent" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"parent_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "taxonomy_index" (
	"nid" INT,
	"tid" INT,
	"status" INT,
	"sticky" TINYINT,
	"created" INT,
	 PRIMARY KEY ("nid","tid")
);

CREATE TABLE "shortcut_set_users" (
	"uid" INT,
	"set_name" VARCHAR,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "shortcut_field_data" (
	"id" INT,
	"shortcut_set" VARCHAR,
	"langcode" VARCHAR,
	"title" VARCHAR,
	"weight" INT,
	"link__uri" VARCHAR,
	"link__title" VARCHAR,
	"link__options" LONGBLOB,
	"default_langcode" TINYINT,
	 PRIMARY KEY ("id","langcode")
);

CREATE TABLE "shortcut" (
	"id" INT,
	"shortcut_set" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"uid" INT,
	"sid" VARCHAR,
	"hostname" VARCHAR,
	"timestamp" INT,
	"session" LONGBLOB,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "sequences" (
	"value" INT,
	 PRIMARY KEY ("value")
);

CREATE TABLE "semaphore" (
	"name" VARCHAR,
	"value" VARCHAR,
	"expire" DOUBLE,
	 PRIMARY KEY ("name")
);

CREATE TABLE "search_total" (
	"word" VARCHAR,
	"count" FLOAT,
	 PRIMARY KEY ("word")
);

CREATE TABLE "search_index" (
	"word" VARCHAR,
	"sid" INT,
	"langcode" VARCHAR,
	"type" VARCHAR,
	"score" FLOAT,
	 PRIMARY KEY ("word","sid","langcode","type")
);

CREATE TABLE "search_dataset" (
	"sid" INT,
	"langcode" VARCHAR,
	"type" VARCHAR,
	"data" LONGTEXT,
	"reindex" INT,
	 PRIMARY KEY ("sid","langcode","type")
);

CREATE TABLE "router" (
	"name" VARCHAR,
	"path" VARCHAR,
	"pattern_outline" VARCHAR,
	"fit" INT,
	"route" LONGBLOB,
	"number_parts" SMALLINT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "queue" (
	"item_id" INT,
	"name" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" INT,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "path_alias_revision" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"path" VARCHAR,
	"alias" VARCHAR,
	"status" TINYINT,
	"revision_default" TINYINT,
	 PRIMARY KEY ("revision_id")
);

CREATE TABLE "path_alias" (
	"id" INT,
	"revision_id" INT,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	"path" VARCHAR,
	"alias" VARCHAR,
	"status" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "node_revision__field_tags" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_tags_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_image" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_image_target_id" INT,
	"field_image_alt" VARCHAR,
	"field_image_title" VARCHAR,
	"field_image_width" INT,
	"field_image_height" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__comment" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"comment_status" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__body" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"body_value" LONGTEXT,
	"body_summary" LONGTEXT,
	"body_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision" (
	"nid" INT,
	"vid" INT,
	"langcode" VARCHAR,
	"revision_uid" INT,
	"revision_timestamp" INT,
	"revision_log" LONGTEXT,
	"revision_default" TINYINT,
	 PRIMARY KEY ("vid")
);

CREATE TABLE "node_field_revision" (
	"nid" INT,
	"vid" INT,
	"langcode" VARCHAR,
	"status" TINYINT,
	"uid" INT,
	"title" VARCHAR,
	"created" INT,
	"changed" INT,
	"promote" TINYINT,
	"sticky" TINYINT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("vid","langcode")
);

CREATE TABLE "node_field_data" (
	"nid" INT,
	"vid" INT,
	"type" VARCHAR,
	"langcode" VARCHAR,
	"status" TINYINT,
	"uid" INT,
	"title" VARCHAR,
	"created" INT,
	"changed" INT,
	"promote" TINYINT,
	"sticky" TINYINT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("nid","langcode")
);

CREATE TABLE "node_access" (
	"nid" INT,
	"langcode" VARCHAR,
	"fallback" TINYINT,
	"gid" INT,
	"realm" VARCHAR,
	"grant_view" TINYINT,
	"grant_update" TINYINT,
	"grant_delete" TINYINT,
	 PRIMARY KEY ("nid","gid","realm","langcode")
);

CREATE TABLE "node__field_tags" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_tags_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_image" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_image_target_id" INT,
	"field_image_alt" VARCHAR,
	"field_image_title" VARCHAR,
	"field_image_width" INT,
	"field_image_height" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__comment" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"comment_status" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__body" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"body_value" LONGTEXT,
	"body_summary" LONGTEXT,
	"body_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node" (
	"nid" INT,
	"vid" INT,
	"type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("nid")
);

CREATE TABLE "menu_tree" (
	"menu_name" VARCHAR,
	"mlid" INT,
	"id" VARCHAR,
	"parent" VARCHAR,
	"route_name" VARCHAR,
	"route_param_key" VARCHAR,
	"route_parameters" LONGBLOB,
	"url" VARCHAR,
	"title" LONGBLOB,
	"description" LONGBLOB,
	"class" TEXT,
	"options" LONGBLOB,
	"provider" VARCHAR,
	"enabled" SMALLINT,
	"discovered" SMALLINT,
	"expanded" SMALLINT,
	"weight" INT,
	"metadata" LONGBLOB,
	"has_children" SMALLINT,
	"depth" SMALLINT,
	"p1" INT,
	"p2" INT,
	"p3" INT,
	"p4" INT,
	"p5" INT,
	"p6" INT,
	"p7" INT,
	"p8" INT,
	"p9" INT,
	"form_class" VARCHAR,
	 PRIMARY KEY ("mlid")
);

CREATE TABLE "menu_link_content_revision" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"revision_user" INT,
	"revision_created" INT,
	"revision_log_message" LONGTEXT,
	"revision_default" TINYINT,
	 PRIMARY KEY ("revision_id")
);

CREATE TABLE "menu_link_content_field_revision" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"enabled" TINYINT,
	"title" VARCHAR,
	"description" VARCHAR,
	"link__uri" VARCHAR,
	"link__title" VARCHAR,
	"link__options" LONGBLOB,
	"external" TINYINT,
	"changed" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("revision_id","langcode")
);

CREATE TABLE "menu_link_content_data" (
	"id" INT,
	"revision_id" INT,
	"bundle" VARCHAR,
	"langcode" VARCHAR,
	"enabled" TINYINT,
	"title" VARCHAR,
	"description" VARCHAR,
	"menu_name" VARCHAR,
	"link__uri" VARCHAR,
	"link__title" VARCHAR,
	"link__options" LONGBLOB,
	"external" TINYINT,
	"rediscover" TINYINT,
	"weight" INT,
	"expanded" TINYINT,
	"parent" VARCHAR,
	"changed" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("id","langcode")
);

CREATE TABLE "menu_link_content" (
	"id" INT,
	"revision_id" INT,
	"bundle" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "key_value_expire" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"value" LONGBLOB,
	"expire" INT,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "key_value" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"value" LONGBLOB,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "history" (
	"uid" INT,
	"nid" INT,
	"timestamp" INT,
	 PRIMARY KEY ("uid","nid")
);

CREATE TABLE "file_usage" (
	"fid" INT,
	"module" VARCHAR,
	"type" VARCHAR,
	"id" VARCHAR,
	"count" INT,
	 PRIMARY KEY ("fid","type","id","module")
);

CREATE TABLE "file_managed" (
	"fid" INT,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	"uid" INT,
	"filename" VARCHAR,
	"uri" VARCHAR,
	"filemime" VARCHAR,
	"filesize" BIGINT,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("fid")
);

CREATE TABLE "config" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"data" LONGBLOB,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "comment_field_data" (
	"cid" INT,
	"comment_type" VARCHAR,
	"langcode" VARCHAR,
	"status" TINYINT,
	"uid" INT,
	"pid" INT,
	"entity_id" INT,
	"subject" VARCHAR,
	"name" VARCHAR,
	"mail" VARCHAR,
	"homepage" VARCHAR,
	"hostname" VARCHAR,
	"created" INT,
	"changed" INT,
	"thread" VARCHAR,
	"entity_type" VARCHAR,
	"field_name" VARCHAR,
	"default_langcode" TINYINT,
	 PRIMARY KEY ("cid","langcode")
);

CREATE TABLE "comment_entity_statistics" (
	"entity_id" INT,
	"entity_type" VARCHAR,
	"field_name" VARCHAR,
	"cid" INT,
	"last_comment_timestamp" INT,
	"last_comment_name" VARCHAR,
	"last_comment_uid" INT,
	"comment_count" INT,
	 PRIMARY KEY ("entity_id","entity_type","field_name")
);

CREATE TABLE "comment__comment_body" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"comment_body_value" LONGTEXT,
	"comment_body_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "comment" (
	"cid" INT,
	"comment_type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cachetags" (
	"tag" VARCHAR,
	"invalidations" INT,
	 PRIMARY KEY ("tag")
);

CREATE TABLE "cache_render" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_menu" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_entity" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_dynamic_page_cache" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_discovery" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_default" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_data" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_container" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_config" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_bootstrap" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "block_content_revision__body" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"body_value" LONGTEXT,
	"body_summary" LONGTEXT,
	"body_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "block_content_revision" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"revision_user" INT,
	"revision_created" INT,
	"revision_log" LONGTEXT,
	"revision_default" TINYINT,
	 PRIMARY KEY ("revision_id")
);

CREATE TABLE "block_content_field_revision" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"status" TINYINT,
	"info" VARCHAR,
	"changed" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("revision_id","langcode")
);

CREATE TABLE "block_content_field_data" (
	"id" INT,
	"revision_id" INT,
	"type" VARCHAR,
	"langcode" VARCHAR,
	"status" TINYINT,
	"info" VARCHAR,
	"changed" INT,
	"reusable" TINYINT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("id","langcode")
);

CREATE TABLE "block_content__body" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"body_value" LONGTEXT,
	"body_summary" LONGTEXT,
	"body_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "block_content" (
	"id" INT,
	"revision_id" INT,
	"type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "batch" (
	"bid" INT,
	"token" VARCHAR,
	"timestamp" INT,
	"batch" LONGBLOB,
	 PRIMARY KEY ("bid")
);
