DROP DATABASE IF EXISTS "schema1759";
CREATE DATABASE "schema1759";
USE "schema1759";
CREATE TABLE "mantik_item" (
	"item_id" VARCHAR,
	"mantikheader" VARCHAR,
	"file_id" VARCHAR,
	"kind" VARCHAR,
	"executor_storage_id" VARCHAR,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "mantik_name" (
	"id" VARCHAR,
	"account" VARCHAR,
	"name" VARCHAR,
	"version" VARCHAR,
	"current_item_id" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_mantik_name_to_mantik_item" FOREIGN KEY ("current_item_id") REFERENCES "mantik_item" ("item_id")
);

CREATE TABLE "mantik_sub_deployment_info" (
	"item_id" VARCHAR,
	"sub_id" VARCHAR,
	"name" VARCHAR,
	"internal_url" VARCHAR,
	 PRIMARY KEY ("item_id","sub_id"),
	 CONSTRAINT "fkeycon_mantik_sub_deployment_info_to_mantik_item" FOREIGN KEY ("item_id") REFERENCES "mantik_item" ("item_id")
);

CREATE TABLE "mantik_deployment_info" (
	"item_id" VARCHAR,
	"name" VARCHAR,
	"internal_url" VARCHAR,
	"external_url" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("item_id"),
	 CONSTRAINT "fkeycon_mantik_deployment_info_to_mantik_item" FOREIGN KEY ("item_id") REFERENCES "mantik_item" ("item_id")
);
