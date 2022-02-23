DROP DATABASE IF EXISTS "schema2184";
CREATE DATABASE "schema2184";
USE "schema2184";
CREATE TABLE "cg_master_resource_relation" (
	"id" BIGINT,
	"master_id" BIGINT,
	"master_peer_id" BIGINT,
	"flag" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cg_master_resource_peer" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"name" VARCHAR,
	"status" VARCHAR,
	"user_id" BIGINT,
	"title" VARCHAR,
	"category_group" VARCHAR,
	"category_id" BIGINT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cg_master_resource_record" (
	"id" BIGINT,
	"name" VARCHAR,
	"other_id" BIGINT,
	"master_field" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cg_master_resource_item" (
	"id" BIGINT,
	"name" VARCHAR,
	"master_id" BIGINT,
	"master_field" VARCHAR,
	"title" VARCHAR,
	"amount" INT,
	"price" DECIMAL,
	"color" VARCHAR,
	"size" VARCHAR,
	"description" VARCHAR,
	"invalid" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cg_master_resource" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"name" VARCHAR,
	"status" VARCHAR,
	"create_time" DATETIME,
	"category_id" BIGINT,
	"user_id" BIGINT,
	"owner_id" BIGINT,
	"code" VARCHAR,
	"title" VARCHAR,
	"registered_time" DATETIME,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"update_time" DATETIME,
	"closed_time" DATETIME,
	"expired_time" DATETIME,
	"appointed_time" DATETIME,
	"invalid" SMALLINT,
	"description" VARCHAR,
	"note" TEXT,
	"sort_num" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cg_master_resource_category" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"pid" VARCHAR,
	"name" VARCHAR,
	"field" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);
