DROP DATABASE IF EXISTS "schema701";
CREATE DATABASE "schema701";
USE "schema701";
CREATE TABLE "service" (
	"id" BIGINT,
	"publishment_id" BIGINT,
	"gav" VARCHAR,
	"tag" TINYINT,
	"description" VARCHAR,
	"node_amount" TINYINT,
	"config" TEXT,
	"launch_cmd" VARCHAR,
	"hook" TEXT,
	"dependence" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "publishment" (
	"id" BIGINT,
	"customer_id" BIGINT,
	"product_id" BIGINT,
	"product_version" VARCHAR,
	"description" VARCHAR,
	"deploy_state" TINYINT,
	"deploy_log" VARCHAR,
	"sync_flag" TINYINT,
	"release_state" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" BIGINT,
	"code" VARCHAR,
	"icon" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer_owned_products" (
	"id" BIGINT,
	"customer_id" BIGINT,
	"product_id" BIGINT,
	"eff_time" DATETIME,
	"exp_time" DATETIME,
	"is_forbidden" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer_account_relations" (
	"id" BIGINT,
	"customer_id" BIGINT,
	"account_id" BIGINT,
	"is_forbidden" TINYINT,
	"user_identity" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"account_type" TINYINT,
	"phone" VARCHAR,
	"email" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"del" TINYINT,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);
