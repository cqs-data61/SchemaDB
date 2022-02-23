DROP DATABASE IF EXISTS "schema1984";
CREATE DATABASE "schema1984";
USE "schema1984";
CREATE TABLE "itemsbydateaccessioned" (
	"items_by_date_accessioned_id" INTEGER,
	"item_id" INTEGER,
	"date_accessioned" VARCHAR,
	 PRIMARY KEY ("items_by_date_accessioned_id")
);

CREATE TABLE "itemsbydate" (
	"items_by_date_id" INTEGER,
	"item_id" INTEGER,
	"date_issued" VARCHAR,
	 PRIMARY KEY ("items_by_date_id")
);

CREATE TABLE "itemsbytitle" (
	"items_by_title_id" INTEGER,
	"item_id" INTEGER,
	"title" VARCHAR,
	"sort_title" VARCHAR,
	 PRIMARY KEY ("items_by_title_id")
);

CREATE TABLE "itemsbyauthor" (
	"items_by_author_id" INTEGER,
	"item_id" INTEGER,
	"author" VARCHAR,
	"sort_author" VARCHAR,
	 PRIMARY KEY ("items_by_author_id")
);

CREATE TABLE "communities2item" (
	"id" INTEGER,
	"community_id" INTEGER,
	"item_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "historystate" (
	"history_state_id" INTEGER,
	"object_id" VARCHAR,
	 PRIMARY KEY ("history_state_id")
);

CREATE TABLE "history" (
	"history_id" INTEGER,
	"creation_date" TIMESTAMP,
	"checksum" VARCHAR,
	 PRIMARY KEY ("history_id")
);

CREATE TABLE "subscription" (
	"subscription_id" INTEGER,
	"eperson_id" INTEGER,
	"collection_id" INTEGER,
	 PRIMARY KEY ("subscription_id")
);

CREATE TABLE "registrationdata" (
	"registrationdata_id" INTEGER,
	"email" VARCHAR,
	"token" VARCHAR,
	"expires" TIMESTAMP,
	 PRIMARY KEY ("registrationdata_id")
);

CREATE TABLE "tasklistitem" (
	"tasklist_id" INTEGER,
	"eperson_id" INTEGER,
	"workflow_id" INTEGER,
	 PRIMARY KEY ("tasklist_id")
);

CREATE TABLE "workflowitem" (
	"workflow_id" INTEGER,
	"item_id" INTEGER,
	"collection_id" INTEGER,
	"state" INTEGER,
	"owner" INTEGER,
	"multiple_titles" NUMBER,
	"published_before" NUMBER,
	"multiple_files" NUMBER,
	 PRIMARY KEY ("workflow_id")
);

CREATE TABLE "workspaceitem" (
	"workspace_item_id" INTEGER,
	"item_id" INTEGER,
	"collection_id" INTEGER,
	"multiple_titles" NUMBER,
	"published_before" NUMBER,
	"multiple_files" NUMBER,
	"stage_reached" INTEGER,
	 PRIMARY KEY ("workspace_item_id")
);

CREATE TABLE "handle" (
	"handle_id" INTEGER,
	"handle" VARCHAR,
	"resource_type_id" INTEGER,
	"resource_id" INTEGER,
	 PRIMARY KEY ("handle_id")
);

CREATE TABLE "epersongroup2eperson" (
	"id" INTEGER,
	"eperson_group_id" INTEGER,
	"eperson_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "resourcepolicy" (
	"policy_id" INTEGER,
	"resource_type_id" INTEGER,
	"resource_id" INTEGER,
	"action_id" INTEGER,
	"eperson_id" INTEGER,
	"epersongroup_id" INTEGER,
	"start_date" DATE,
	"end_date" DATE,
	 PRIMARY KEY ("policy_id")
);

CREATE TABLE "collection2item" (
	"id" INTEGER,
	"collection_id" INTEGER,
	"item_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "community2collection" (
	"id" INTEGER,
	"community_id" INTEGER,
	"collection_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "community2community" (
	"id" INTEGER,
	"parent_comm_id" INTEGER,
	"child_comm_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collection" (
	"collection_id" INTEGER,
	"name" VARCHAR,
	"short_description" VARCHAR,
	"introductory_text" VARCHAR,
	"logo_bitstream_id" INTEGER,
	"template_item_id" INTEGER,
	"provenance_description" VARCHAR,
	"license" VARCHAR,
	"copyright_text" VARCHAR,
	"side_bar_text" VARCHAR,
	"workflow_step_1" INTEGER,
	"workflow_step_2" INTEGER,
	"workflow_step_3" INTEGER,
	 PRIMARY KEY ("collection_id")
);

CREATE TABLE "community" (
	"community_id" INTEGER,
	"name" VARCHAR,
	"short_description" VARCHAR,
	"introductory_text" VARCHAR,
	"logo_bitstream_id" INTEGER,
	"copyright_text" VARCHAR,
	"side_bar_text" VARCHAR,
	 PRIMARY KEY ("community_id")
);

CREATE TABLE "dcvalue" (
	"dc_value_id" INTEGER,
	"item_id" INTEGER,
	"dc_type_id" INTEGER,
	"text_value" VARCHAR,
	"text_lang" VARCHAR,
	"place" INTEGER,
	"source_id" INTEGER,
	 PRIMARY KEY ("dc_value_id")
);

CREATE TABLE "dctyperegistry" (
	"dc_type_id" INTEGER,
	"element" VARCHAR,
	"qualifier" VARCHAR,
	"scope_note" VARCHAR,
	 PRIMARY KEY ("dc_type_id")
);

CREATE TABLE "bundle2bitstream" (
	"id" INTEGER,
	"bundle_id" INTEGER,
	"bitstream_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item2bundle" (
	"id" INTEGER,
	"item_id" INTEGER,
	"bundle_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bundle" (
	"bundle_id" INTEGER,
	"mets_bitstream_id" INTEGER,
	"name" VARCHAR,
	"primary_bitstream_id" INTEGER,
	 PRIMARY KEY ("primary_bitstream_id")
);

CREATE TABLE "item" (
	"item_id" INTEGER,
	"submitter_id" INTEGER,
	"in_archive" NUMBER,
	"withdrawn" NUMBER,
	"last_modified" TIMESTAMP,
	"owning_collection" INTEGER,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "epersongroup" (
	"eperson_group_id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("eperson_group_id")
);

CREATE TABLE "eperson" (
	"eperson_id" INTEGER,
	"email" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"can_log_in" NUMBER,
	"require_certificate" NUMBER,
	"self_registered" NUMBER,
	"last_active" TIMESTAMP,
	"sub_frequency" INTEGER,
	"phone" VARCHAR,
	 PRIMARY KEY ("eperson_id")
);

CREATE TABLE "bitstream" (
	"bitstream_id" INTEGER,
	"bitstream_format_id" INTEGER,
	"name" VARCHAR,
	"size_bytes" INTEGER,
	"checksum" VARCHAR,
	"checksum_algorithm" VARCHAR,
	"description" VARCHAR,
	"user_format_description" VARCHAR,
	"source" VARCHAR,
	"internal_id" VARCHAR,
	"deleted" NUMBER,
	"store_number" INTEGER,
	"sequence_id" INTEGER,
	 PRIMARY KEY ("bitstream_id")
);

CREATE TABLE "fileextension" (
	"file_extension_id" INTEGER,
	"bitstream_format_id" INTEGER,
	"extension" VARCHAR,
	 PRIMARY KEY ("file_extension_id")
);

CREATE TABLE "bitstreamformatregistry" (
	"bitstream_format_id" INTEGER,
	"mimetype" VARCHAR,
	"short_description" VARCHAR,
	"description" VARCHAR,
	"support_level" INTEGER,
	"internal" NUMBER,
	 PRIMARY KEY ("bitstream_format_id")
);
