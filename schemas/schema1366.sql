DROP DATABASE IF EXISTS "schema1366";
CREATE DATABASE "schema1366";
USE "schema1366";
CREATE TABLE "users" (
	"user_id" BIGINT,
	"nis" VARCHAR,
	"full_name" VARCHAR,
	"class" VARCHAR,
	"address" VARCHAR,
	"pin" CHAR,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "transactions" (
	"transaction_id" BIGINT,
	"transaction_code" VARCHAR,
	"transaction_date" DATETIME,
	"total" DECIMAL,
	"qty" INT,
	"user_id" BIGINT,
	 PRIMARY KEY ("transaction_id")
);

CREATE TABLE "transaction_items" (
	"transaction_items_id" BIGINT,
	"transaction_id" BIGINT,
	"price" DECIMAL,
	"name" VARCHAR,
	"qty" INT,
	 PRIMARY KEY ("transaction_items_id")
);

CREATE TABLE "master_goods" (
	"master_goods_id" BIGINT,
	"name" VARCHAR,
	"image" BLOB,
	"description" VARCHAR,
	"price" DECIMAL,
	"is_active" TINYINT,
	"code" VARCHAR,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("master_goods_id")
);

CREATE TABLE "deposit_transactions" (
	"deposit_transaction_id" BIGINT,
	"transaction_code" VARCHAR,
	"debet" DECIMAL,
	"kredit" DECIMAL,
	"transaction_date" DATETIME,
	"created_by" VARCHAR,
	"type" ENUM,
	"deposit_id" BIGINT,
	 PRIMARY KEY ("deposit_transaction_id")
);

CREATE TABLE "deposit" (
	"deposit_id" BIGINT,
	"user_id" BIGINT,
	"saldo" DECIMAL,
	"previous_saldo" DECIMAL,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("deposit_id")
);

CREATE TABLE "administrator" (
	"administrator_id" INT,
	"full_name" VARCHAR,
	"password" CHAR,
	"username" VARCHAR,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"delete_at" DATETIME,
	"delete_by" VARCHAR,
	 PRIMARY KEY ("administrator_id")
);
