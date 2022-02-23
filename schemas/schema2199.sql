DROP DATABASE IF EXISTS "schema2199";
CREATE DATABASE "schema2199";
USE "schema2199";
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
	"first_name" VARCHAR,
	"last_name" VARCHAR,
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

CREATE TABLE "paragraphs_item_revision_field_data" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"parent_id" VARCHAR,
	"parent_type" VARCHAR,
	"parent_field_name" VARCHAR,
	"behavior_settings" LONGTEXT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("revision_id","langcode")
);

CREATE TABLE "paragraphs_item_revision" (
	"id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"revision_default" TINYINT,
	 PRIMARY KEY ("revision_id")
);

CREATE TABLE "paragraphs_item_field_data" (
	"id" INT,
	"revision_id" INT,
	"type" VARCHAR,
	"langcode" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"parent_id" VARCHAR,
	"parent_type" VARCHAR,
	"parent_field_name" VARCHAR,
	"behavior_settings" LONGTEXT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("id","langcode")
);

CREATE TABLE "paragraphs_item" (
	"id" INT,
	"revision_id" INT,
	"type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paragraph_revision__field_text" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_text_value" LONGTEXT,
	"field_text_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_target" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_target_uri" VARCHAR,
	"field_target_title" VARCHAR,
	"field_target_options" LONGBLOB,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_message_type" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_message_type_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_image_as_background" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_image_as_background_value" TINYINT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_image" (
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

CREATE TABLE "paragraph_revision__field_icon_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_icon_color_color" VARCHAR,
	"field_icon_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_icon_bg_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_icon_bg_color_color" VARCHAR,
	"field_icon_bg_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_icon" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_icon_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_grid_title" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_title_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_grid_layout" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_layout_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_grid_elements" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_elements_target_id" INT,
	"field_grid_elements_target_revision_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_grid_button" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_button_uri" VARCHAR,
	"field_grid_button_title" VARCHAR,
	"field_grid_button_options" LONGBLOB,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_description" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_description_value" LONGTEXT,
	"field_description_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_buttons" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_buttons_uri" VARCHAR,
	"field_buttons_title" VARCHAR,
	"field_buttons_options" LONGBLOB,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_border_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_border_color_color" VARCHAR,
	"field_border_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_block" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_block_plugin_id" VARCHAR,
	"field_block_settings" LONGBLOB,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_background_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_background_color_color" VARCHAR,
	"field_background_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_api_reference" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_reference_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph_revision__field_administrative_title" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_administrative_title_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_text" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_text_value" LONGTEXT,
	"field_text_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_target" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_target_uri" VARCHAR,
	"field_target_title" VARCHAR,
	"field_target_options" LONGBLOB,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_message_type" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_message_type_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_image_as_background" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_image_as_background_value" TINYINT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_image" (
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

CREATE TABLE "paragraph__field_icon_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_icon_color_color" VARCHAR,
	"field_icon_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_icon_bg_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_icon_bg_color_color" VARCHAR,
	"field_icon_bg_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_icon" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_icon_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_grid_title" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_title_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_grid_layout" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_layout_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_grid_elements" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_elements_target_id" INT,
	"field_grid_elements_target_revision_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_grid_button" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_grid_button_uri" VARCHAR,
	"field_grid_button_title" VARCHAR,
	"field_grid_button_options" LONGBLOB,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_description" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_description_value" LONGTEXT,
	"field_description_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_buttons" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_buttons_uri" VARCHAR,
	"field_buttons_title" VARCHAR,
	"field_buttons_options" LONGBLOB,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_border_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_border_color_color" VARCHAR,
	"field_border_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_block" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_block_plugin_id" VARCHAR,
	"field_block_settings" LONGBLOB,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_background_color" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_background_color_color" VARCHAR,
	"field_background_color_opacity" FLOAT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_api_reference" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_reference_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "paragraph__field_administrative_title" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_administrative_title_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "openid_connect_authmap" (
	"aid" INT,
	"uid" INT,
	"client_name" VARCHAR,
	"sub" VARCHAR,
	 PRIMARY KEY ("aid")
);

CREATE TABLE "node_revision__field_version" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_version_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_teaser_picture" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_teaser_picture_target_id" INT,
	"field_teaser_picture_alt" VARCHAR,
	"field_teaser_picture_title" VARCHAR,
	"field_teaser_picture_width" INT,
	"field_teaser_picture_height" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_source_file" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_source_file_target_id" INT,
	"field_source_file_display" TINYINT,
	"field_source_file_description" TEXT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_project_id" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_project_id_value" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_page_builder_elements" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_page_builder_elements_target_id" INT,
	"field_page_builder_elements_target_revision_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_latest_version" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_latest_version_value" TINYINT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_header" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_header_value" LONGTEXT,
	"field_header_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_faq_weight" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_faq_weight_value" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_faq_tags" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_faq_tags_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_faq_answer" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_faq_answer_value" LONGTEXT,
	"field_faq_answer_summary" LONGTEXT,
	"field_faq_answer_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_description" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_description_value" LONGTEXT,
	"field_description_summary" LONGTEXT,
	"field_description_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_blog_post_categories" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_blog_post_categories_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_reference" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_reference_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_ref" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_ref_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_product_icon" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_product_icon_target_id" INT,
	"field_api_product_icon_target_revision_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_product_category" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_product_category_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_product" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_product_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_name" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_name_target_id" INT,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_header_content" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_header_content_value" LONGTEXT,
	"field_api_header_content_format" VARCHAR,
	 PRIMARY KEY ("entity_id","revision_id","deleted","delta","langcode")
);

CREATE TABLE "node_revision__field_api_category" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_category_target_id" INT,
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

CREATE TABLE "node__field_version" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_version_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_teaser_picture" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_teaser_picture_target_id" INT,
	"field_teaser_picture_alt" VARCHAR,
	"field_teaser_picture_title" VARCHAR,
	"field_teaser_picture_width" INT,
	"field_teaser_picture_height" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_source_file" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_source_file_target_id" INT,
	"field_source_file_display" TINYINT,
	"field_source_file_description" TEXT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_project_id" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_project_id_value" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_page_builder_elements" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_page_builder_elements_target_id" INT,
	"field_page_builder_elements_target_revision_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_latest_version" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_latest_version_value" TINYINT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_header" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_header_value" LONGTEXT,
	"field_header_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_faq_weight" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_faq_weight_value" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_faq_tags" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_faq_tags_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_faq_answer" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_faq_answer_value" LONGTEXT,
	"field_faq_answer_summary" LONGTEXT,
	"field_faq_answer_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_description" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_description_value" LONGTEXT,
	"field_description_summary" LONGTEXT,
	"field_description_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_blog_post_categories" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_blog_post_categories_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_reference" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_reference_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_ref" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_ref_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_product_icon" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_product_icon_target_id" INT,
	"field_api_product_icon_target_revision_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_product_category" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_product_category_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_product" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_product_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_name" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_name_target_id" INT,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_header_content" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_header_content_value" LONGTEXT,
	"field_api_header_content_format" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "node__field_api_category" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"field_api_category_target_id" INT,
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

CREATE TABLE "header" (
	"id" INT,
	"uuid" VARCHAR,
	"admin_label" VARCHAR,
	"hbg_image__target_id" INT,
	"hbg_image__alt" VARCHAR,
	"hbg_image__title" VARCHAR,
	"hbg_image__width" INT,
	"hbg_image__height" INT,
	"created" INT,
	"changed" INT,
	"visibility" LONGBLOB,
	"weight" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "groups_field_data" (
	"id" INT,
	"type" VARCHAR,
	"langcode" VARCHAR,
	"uid" INT,
	"label" VARCHAR,
	"created" INT,
	"changed" INT,
	"default_langcode" TINYINT,
	 PRIMARY KEY ("id","langcode")
);

CREATE TABLE "groups" (
	"id" INT,
	"type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group_content_field_data" (
	"id" INT,
	"type" VARCHAR,
	"langcode" VARCHAR,
	"uid" INT,
	"gid" INT,
	"entity_id" INT,
	"label" VARCHAR,
	"created" INT,
	"changed" INT,
	"default_langcode" TINYINT,
	 PRIMARY KEY ("id","langcode")
);

CREATE TABLE "group_content__group_roles" (
	"bundle" VARCHAR,
	"deleted" TINYINT,
	"entity_id" INT,
	"revision_id" INT,
	"langcode" VARCHAR,
	"delta" INT,
	"group_roles_target_id" VARCHAR,
	 PRIMARY KEY ("entity_id","deleted","delta","langcode")
);

CREATE TABLE "group_content" (
	"id" INT,
	"type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flood" (
	"fid" INT,
	"event" VARCHAR,
	"identifier" VARCHAR,
	"timestamp" INT,
	"expiration" INT,
	 PRIMARY KEY ("fid")
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

CREATE TABLE "eu_cookie_compliance_basic_consent" (
	"cid" INT,
	"uid" INT,
	"timestamp" INT,
	"ip_address" VARCHAR,
	"consent_type" VARCHAR,
	"revision_id" INT,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "draggableviews_structure" (
	"dvid" INT,
	"view_name" VARCHAR,
	"view_display" VARCHAR,
	"args" VARCHAR,
	"entity_id" INT,
	"weight" INT,
	"parent" INT,
	 PRIMARY KEY ("dvid")
);

CREATE TABLE "dp_trigger_token" (
	"title" VARCHAR,
	"entity_type" VARCHAR,
	"entity_uuid" VARCHAR,
	"account" VARCHAR,
	"token" VARCHAR,
	 PRIMARY KEY ("token")
);

CREATE TABLE "crop_revision" (
	"cid" INT,
	"vid" INT,
	"langcode" VARCHAR,
	"revision_timestamp" INT,
	"revision_uid" INT,
	"revision_log" LONGTEXT,
	"revision_default" TINYINT,
	 PRIMARY KEY ("vid")
);

CREATE TABLE "crop_field_revision" (
	"cid" INT,
	"vid" INT,
	"langcode" VARCHAR,
	"entity_id" INT,
	"entity_type" VARCHAR,
	"uri" VARCHAR,
	"height" INT,
	"width" INT,
	"x" INT,
	"y" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("vid","langcode")
);

CREATE TABLE "crop_field_data" (
	"cid" INT,
	"vid" INT,
	"type" VARCHAR,
	"langcode" VARCHAR,
	"entity_id" INT,
	"entity_type" VARCHAR,
	"uri" VARCHAR,
	"height" INT,
	"width" INT,
	"x" INT,
	"y" INT,
	"default_langcode" TINYINT,
	"revision_translation_affected" TINYINT,
	 PRIMARY KEY ("cid","langcode")
);

CREATE TABLE "crop" (
	"cid" INT,
	"vid" INT,
	"type" VARCHAR,
	"uuid" VARCHAR,
	"langcode" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "config_snapshot" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"data" LONGBLOB,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "config_import" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"data" LONGBLOB,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "config_export" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"data" LONGBLOB,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "config" (
	"collection" VARCHAR,
	"name" VARCHAR,
	"data" LONGBLOB,
	 PRIMARY KEY ("collection","name")
);

CREATE TABLE "cachetags" (
	"tag" VARCHAR,
	"invalidations" INT,
	 PRIMARY KEY ("tag")
);

CREATE TABLE "cache_toolbar" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
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

CREATE TABLE "cache_page" (
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

CREATE TABLE "cache_guides" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_group_permission" (
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

CREATE TABLE "cache_apigee_edge_entity" (
	"cid" VARCHAR,
	"data" LONGBLOB,
	"expire" INT,
	"created" DECIMAL,
	"serialized" SMALLINT,
	"tags" LONGTEXT,
	"checksum" VARCHAR,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cache_apifiles" (
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

CREATE TABLE "apigee_edge_job" (
	"id" VARCHAR,
	"status" INT,
	"tag" VARCHAR,
	"job" BLOB,
	"created" INT,
	"updated" INT,
	 PRIMARY KEY ("id")
);
