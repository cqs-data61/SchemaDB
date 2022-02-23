DROP DATABASE IF EXISTS "schema315";
CREATE DATABASE "schema315";
USE "schema315";
CREATE TABLE "mirror_maker" (
	"mm_name" VARCHAR,
	"source_cluster" VARCHAR,
	"target_cluster" VARCHAR,
	"last_mod" TIMESTAMP,
	"status" VARCHAR,
	"topics" TEXT,
	 PRIMARY KEY ("mm_name")
);

CREATE TABLE "topic" (
	"last_mod" TIMESTAMP,
	"fqtn" VARCHAR,
	"topic_name" VARCHAR,
	"topic_description" VARCHAR,
	"tnx_enabled" VARCHAR,
	"owner" VARCHAR,
	"status" VARCHAR,
	"format_uuid" VARCHAR,
	"replication_case" INT,
	"global_mr_u_r_l" VARCHAR,
	"partition_count" VARCHAR,
	"replication_count" VARCHAR,
	"publisher_role" VARCHAR,
	"subscriber_role" VARCHAR,
	 PRIMARY KEY ("fqtn")
);

CREATE TABLE "feed" (
	"suspended" BOOLEAN,
	"subscribe_u_r_l" VARCHAR,
	"feed_id" VARCHAR,
	"feed_name" VARCHAR,
	"feed_version" VARCHAR,
	"feed_description" VARCHAR,
	"owner" VARCHAR,
	"aspr_classification" VARCHAR,
	"publish_u_r_l" VARCHAR,
	"log_u_r_l" VARCHAR,
	"status" VARCHAR,
	"last_mod" TIMESTAMP,
	"format_uuid" VARCHAR,
	 PRIMARY KEY ("feed_id")
);

CREATE TABLE "mr_cluster" (
	"last_mod" TIMESTAMP,
	"dcae_location_name" VARCHAR,
	"fqdn" VARCHAR,
	"topic_protocol" VARCHAR,
	"topic_port" VARCHAR,
	"status" VARCHAR,
	"replication_group" VARCHAR,
	 PRIMARY KEY ("dcae_location_name")
);

CREATE TABLE "mr_client" (
	"dcae_location_name" VARCHAR,
	"fqtn" VARCHAR,
	"client_role" VARCHAR,
	"action" VARCHAR,
	"mr_client_id" VARCHAR,
	"status" VARCHAR,
	"topic_u_r_l" VARCHAR,
	"last_mod" TIMESTAMP,
	"client_identity" VARCHAR,
	 PRIMARY KEY ("mr_client_id")
);

CREATE TABLE "dr_sub" (
	"owner" VARCHAR,
	"suspended" BOOLEAN,
	"status" VARCHAR,
	"use100" BOOLEAN,
	"dcae_location_name" VARCHAR,
	"username" VARCHAR,
	"userpwd" VARCHAR,
	"feed_id" VARCHAR,
	"delivery_u_r_l" VARCHAR,
	"log_u_r_l" VARCHAR,
	"sub_id" VARCHAR,
	"last_mod" TIMESTAMP,
	"guaranteed_delivery" BOOLEAN,
	"guaranteed_sequence" BOOLEAN,
	"privileged_subscriber" BOOLEAN,
	"decompress" BOOLEAN,
	 PRIMARY KEY ("sub_id")
);

CREATE TABLE "dr_pub" (
	"dcae_location_name" VARCHAR,
	"username" VARCHAR,
	"userpwd" VARCHAR,
	"feed_id" VARCHAR,
	"pub_id" VARCHAR,
	"status" VARCHAR,
	"last_mod" TIMESTAMP,
	 PRIMARY KEY ("pub_id")
);

CREATE TABLE "dr_node" (
	"fqdn" VARCHAR,
	"dcae_location_name" VARCHAR,
	"host_name" VARCHAR,
	"version" VARCHAR,
	"last_mod" TIMESTAMP,
	"status" VARCHAR,
	 PRIMARY KEY ("fqdn")
);

CREATE TABLE "dmaap" (
	"version" VARCHAR,
	"topic_ns_root" VARCHAR,
	"dmaap_name" VARCHAR,
	"dr_prov_url" VARCHAR,
	"node_key" VARCHAR,
	"access_key_owner" VARCHAR,
	"last_mod" TIMESTAMP,
	"status" VARCHAR,
	"bridge_admin_topic" VARCHAR,
	"logging_url" VARCHAR
);

CREATE TABLE "dcae_location" (
	"dcae_location_name" VARCHAR,
	"clli" VARCHAR,
	"dcae_layer" VARCHAR,
	"open_stack_availability_zone" VARCHAR,
	"last_mod" TIMESTAMP,
	"subnet" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("dcae_location_name")
);
