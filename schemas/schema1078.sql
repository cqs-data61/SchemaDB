DROP DATABASE IF EXISTS "schema1078";
CREATE DATABASE "schema1078";
USE "schema1078";
CREATE TABLE "metasync_history" (
	"installation_key" VARCHAR,
	"sync_date" DATETIME,
	"result" ENUM,
	"details" TEXT,
	 PRIMARY KEY ("installation_key","sync_date")
);

CREATE TABLE "crawl_history" (
	"dataset_key" VARCHAR,
	"attempt" INTEGER,
	"target_url" TEXT,
	"endpoint_type" ENUM,
	"started_crawling" DATETIME,
	"finished_crawling" DATETIME,
	"finish_reason" ENUM,
	"pages_crawled" INTEGER,
	"pages_fragmented_successful" INTEGER,
	"pages_fragmented_error" INTEGER,
	"fragments_emitted" INTEGER,
	"fragments_received" INTEGER,
	"raw_occurrences_persisted_new" INTEGER,
	"raw_occurrences_persisted_updated" INTEGER,
	"raw_occurrences_persisted_unchanged" INTEGER,
	"raw_occurrences_persisted_error" INTEGER,
	"fragments_processed" INTEGER,
	"verbatim_occurrences_persisted_successful" INTEGER,
	"verbatim_occurrences_persisted_error" INTEGER,
	"interpreted_occurrences_persisted_successful" INTEGER,
	"interpreted_occurrences_persisted_error" INTEGER,
	 PRIMARY KEY ("dataset_key","attempt")
);

CREATE TABLE "dataset_occurrence_download" (
	"download_key" VARCHAR,
	"dataset_key" VARCHAR,
	"number_records" INTEGER,
	 PRIMARY KEY ("download_key","dataset_key")
);

CREATE TABLE "occurrence_download" (
	"key" VARCHAR,
	"filter" TEXT,
	"status" ENUM,
	"download_link" TEXT,
	"notification_addresses" TEXT,
	"created_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "metadata" (
	"key" SERIAL,
	"dataset_key" VARCHAR,
	"type" ENUM,
	"content" BYTEA,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "dataset_network" (
	"dataset_key" VARCHAR,
	"network_key" VARCHAR,
	 PRIMARY KEY ("dataset_key","network_key")
);

CREATE TABLE "endpoint_machine_tag" (
	"endpoint_key" INTEGER,
	"machine_tag_key" INTEGER,
	 PRIMARY KEY ("endpoint_key","machine_tag_key")
);

CREATE TABLE "network_comment" (
	"network_key" VARCHAR,
	"comment_key" INTEGER,
	 PRIMARY KEY ("network_key","comment_key")
);

CREATE TABLE "dataset_comment" (
	"dataset_key" VARCHAR,
	"comment_key" INTEGER,
	 PRIMARY KEY ("dataset_key","comment_key")
);

CREATE TABLE "installation_comment" (
	"installation_key" VARCHAR,
	"comment_key" INTEGER,
	 PRIMARY KEY ("installation_key","comment_key")
);

CREATE TABLE "organization_comment" (
	"organization_key" VARCHAR,
	"comment_key" INTEGER,
	 PRIMARY KEY ("organization_key","comment_key")
);

CREATE TABLE "node_comment" (
	"node_key" VARCHAR,
	"comment_key" INTEGER,
	 PRIMARY KEY ("node_key","comment_key")
);

CREATE TABLE "comment" (
	"key" SERIAL,
	"content" TEXT,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "installation_identifier" (
	"installation_key" VARCHAR,
	"identifier_key" INTEGER,
	 PRIMARY KEY ("installation_key","identifier_key")
);

CREATE TABLE "network_identifier" (
	"network_key" VARCHAR,
	"identifier_key" INTEGER,
	 PRIMARY KEY ("network_key","identifier_key")
);

CREATE TABLE "node_identifier" (
	"node_key" VARCHAR,
	"identifier_key" INTEGER,
	 PRIMARY KEY ("node_key","identifier_key")
);

CREATE TABLE "dataset_identifier" (
	"dataset_key" VARCHAR,
	"identifier_key" INTEGER,
	 PRIMARY KEY ("dataset_key","identifier_key")
);

CREATE TABLE "organization_identifier" (
	"organization_key" VARCHAR,
	"identifier_key" INTEGER,
	 PRIMARY KEY ("organization_key","identifier_key")
);

CREATE TABLE "identifier" (
	"key" SERIAL,
	"type" ENUM,
	"identifier" TEXT,
	"created_by" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "network_endpoint" (
	"network_key" VARCHAR,
	"endpoint_key" INTEGER,
	 PRIMARY KEY ("network_key","endpoint_key")
);

CREATE TABLE "dataset_endpoint" (
	"dataset_key" VARCHAR,
	"endpoint_key" INTEGER,
	 PRIMARY KEY ("dataset_key","endpoint_key")
);

CREATE TABLE "installation_endpoint" (
	"installation_key" VARCHAR,
	"endpoint_key" INTEGER,
	 PRIMARY KEY ("installation_key","endpoint_key")
);

CREATE TABLE "organization_endpoint" (
	"organization_key" VARCHAR,
	"endpoint_key" INTEGER,
	 PRIMARY KEY ("organization_key","endpoint_key")
);

CREATE TABLE "node_endpoint" (
	"node_key" VARCHAR,
	"endpoint_key" INTEGER,
	 PRIMARY KEY ("node_key","endpoint_key")
);

CREATE TABLE "endpoint" (
	"key" SERIAL,
	"type" ENUM,
	"url" TEXT,
	"description" TEXT,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "network_contact" (
	"network_key" VARCHAR,
	"contact_key" INTEGER,
	"type" ENUM,
	"is_primary" BOOLEAN,
	 PRIMARY KEY ("network_key","contact_key")
);

CREATE TABLE "dataset_contact" (
	"dataset_key" VARCHAR,
	"contact_key" INTEGER,
	"type" ENUM,
	"is_primary" BOOLEAN,
	 PRIMARY KEY ("dataset_key","contact_key")
);

CREATE TABLE "installation_contact" (
	"installation_key" VARCHAR,
	"contact_key" INTEGER,
	"type" ENUM,
	"is_primary" BOOLEAN,
	 PRIMARY KEY ("installation_key","contact_key")
);

CREATE TABLE "organization_contact" (
	"organization_key" VARCHAR,
	"contact_key" INTEGER,
	"type" ENUM,
	"is_primary" BOOLEAN,
	 PRIMARY KEY ("organization_key","contact_key")
);

CREATE TABLE "node_contact" (
	"node_key" VARCHAR,
	"contact_key" INTEGER,
	"type" ENUM,
	"is_primary" BOOLEAN,
	 PRIMARY KEY ("node_key","contact_key")
);

CREATE TABLE "contact" (
	"key" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"description" TEXT,
	"position" TEXT,
	"email" VARCHAR,
	"phone" TEXT,
	"organization" TEXT,
	"address" TEXT,
	"city" TEXT,
	"province" TEXT,
	"country" CHAR,
	"postal_code" TEXT,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "network_machine_tag" (
	"network_key" VARCHAR,
	"machine_tag_key" INTEGER,
	 PRIMARY KEY ("network_key","machine_tag_key")
);

CREATE TABLE "dataset_machine_tag" (
	"dataset_key" VARCHAR,
	"machine_tag_key" INTEGER,
	 PRIMARY KEY ("dataset_key","machine_tag_key")
);

CREATE TABLE "installation_machine_tag" (
	"installation_key" VARCHAR,
	"machine_tag_key" INTEGER,
	 PRIMARY KEY ("installation_key","machine_tag_key")
);

CREATE TABLE "organization_machine_tag" (
	"organization_key" VARCHAR,
	"machine_tag_key" INTEGER,
	 PRIMARY KEY ("organization_key","machine_tag_key")
);

CREATE TABLE "node_machine_tag" (
	"node_key" VARCHAR,
	"machine_tag_key" INTEGER,
	 PRIMARY KEY ("node_key","machine_tag_key")
);

CREATE TABLE "machine_tag" (
	"key" SERIAL,
	"namespace" VARCHAR,
	"name" VARCHAR,
	"value" VARCHAR,
	"created_by" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "network_tag" (
	"network_key" VARCHAR,
	"tag_key" INTEGER,
	 PRIMARY KEY ("network_key","tag_key")
);

CREATE TABLE "dataset_tag" (
	"dataset_key" VARCHAR,
	"tag_key" INTEGER,
	 PRIMARY KEY ("dataset_key","tag_key")
);

CREATE TABLE "installation_tag" (
	"installation_key" VARCHAR,
	"tag_key" INTEGER,
	 PRIMARY KEY ("installation_key","tag_key")
);

CREATE TABLE "organization_tag" (
	"organization_key" VARCHAR,
	"tag_key" INTEGER,
	 PRIMARY KEY ("organization_key","tag_key")
);

CREATE TABLE "node_tag" (
	"node_key" VARCHAR,
	"tag_key" INTEGER,
	 PRIMARY KEY ("node_key","tag_key")
);

CREATE TABLE "tag" (
	"key" SERIAL,
	"value" TEXT,
	"created_by" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "network" (
	"key" VARCHAR,
	"title" VARCHAR,
	"description" TEXT,
	"language" CHAR,
	"email" VARCHAR,
	"phone" TEXT,
	"homepage" TEXT,
	"logo_url" TEXT,
	"address" TEXT,
	"city" TEXT,
	"province" TEXT,
	"country" CHAR,
	"postal_code" TEXT,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"deleted" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "dataset" (
	"key" VARCHAR,
	"parent_dataset_key" VARCHAR,
	"duplicate_of_dataset_key" VARCHAR,
	"installation_key" VARCHAR,
	"owning_organization_key" VARCHAR,
	"external" BOOLEAN,
	"type" ENUM,
	"sub_type" ENUM,
	"title" VARCHAR,
	"alias" VARCHAR,
	"abbreviation" VARCHAR,
	"description" TEXT,
	"language" CHAR,
	"homepage" TEXT,
	"logo_url" TEXT,
	"citation" TEXT,
	"citation_identifier" VARCHAR,
	"rights" TEXT,
	"locked_for_auto_update" BOOLEAN,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"deleted" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "installation" (
	"key" VARCHAR,
	"organization_key" VARCHAR,
	"password" VARCHAR,
	"type" ENUM,
	"title" VARCHAR,
	"description" TEXT,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"disabled" BOOLEAN,
	"created" DATETIME,
	"modified" DATETIME,
	"deleted" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "organization" (
	"key" VARCHAR,
	"endorsing_node_key" VARCHAR,
	"endorsement_approved" BOOLEAN,
	"password" VARCHAR,
	"title" VARCHAR,
	"abbreviation" VARCHAR,
	"description" TEXT,
	"language" CHAR,
	"email" VARCHAR,
	"phone" TEXT,
	"homepage" TEXT,
	"logo_url" TEXT,
	"address" TEXT,
	"city" TEXT,
	"province" TEXT,
	"country" CHAR,
	"postal_code" TEXT,
	"latitude" NUMERIC,
	"longitude" NUMERIC,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"deleted" DATETIME,
	 PRIMARY KEY ("key")
);

CREATE TABLE "node" (
	"key" VARCHAR,
	"type" ENUM,
	"participation_status" ENUM,
	"gbif_region" ENUM,
	"continent" ENUM,
	"title" VARCHAR,
	"country" CHAR,
	"created_by" VARCHAR,
	"modified_by" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"deleted" DATETIME,
	 PRIMARY KEY ("key")
);
