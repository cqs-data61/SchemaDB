DROP DATABASE IF EXISTS "schema2054";
CREATE DATABASE "schema2054";
USE "schema2054";
CREATE TABLE "pending_transactions" (
	"transaction_type" VARCHAR,
	"project_id" INT,
	"create_txs_project_beneficiary_create_address" VARCHAR,
	"create_txs_project_create_timestamp" TIMESTAMP,
	"confirm_txs_project_organization_confirm_address" VARCHAR,
	"confirm_txs_project_confirm_timestamp" TIMESTAMP,
	"donate_txs_from_address" VARCHAR,
	"donate_txs_to_address" VARCHAR,
	"donate_txs_amount" INT,
	"donate_txs_timestamp" TIMESTAMP,
	"sendback_txs_from_address" VARCHAR,
	"sendback_txs_to_address" VARCHAR,
	"sendback_txs_amount" INT,
	"sendback_txs_timestamp" TIMESTAMP,
	"transaction_signature" VARCHAR
);

CREATE TABLE "nodes" (
	"node_index" VARCHAR,
	"host" VARCHAR,
	"port" VARCHAR,
	 PRIMARY KEY ("node_index")
);

CREATE TABLE "blocks" (
	"block_index" INT,
	"block_timestamp" TIMESTAMP,
	"block_hash" VARCHAR,
	"block_previoushash" VARCHAR,
	"block_nonce" INT,
	"block_difficulty" INT,
	 PRIMARY KEY ("block_index")
);

CREATE TABLE "project" (
	"project_id" INT,
	"project_name" VARCHAR,
	"project_beneficiary_create_address" VARCHAR,
	"project_organization_confirm_address" VARCHAR,
	"project_description" VARCHAR,
	"project_create_timestamp" TIMESTAMP,
	"project_confirm_timestamp" TIMESTAMP,
	"project_deadline" TIMESTAMP,
	 PRIMARY KEY ("project_id")
);

CREATE TABLE "transaction" (
	"transaction_id" INT,
	"transaction_type" VARCHAR,
	"project_id" INT,
	"block_index" INT,
	"create_txs_project_beneficiary_create_address" VARCHAR,
	"create_txs_project_create_timestamp" TIMESTAMP,
	"confirm_txs_project_organization_confirm_address" VARCHAR,
	"confirm_txs_project_confirm_timestamp" TIMESTAMP,
	"donate_txs_from_address" VARCHAR,
	"donate_txs_to_address" VARCHAR,
	"donate_txs_amount" INT,
	"donate_txs_timestamp" TIMESTAMP,
	"sendback_txs_from_address" VARCHAR,
	"sendback_txs_to_address" VARCHAR,
	"sendback_txs_amount" INT,
	"sendback_txs_timestamp" TIMESTAMP,
	"transaction_signature" VARCHAR,
	 PRIMARY KEY ("transaction_id"),
	 CONSTRAINT "fk_projectid" FOREIGN KEY ("project_id") REFERENCES "project" ("project_id"),
	 CONSTRAINT "fk_blockindex" FOREIGN KEY ("block_index") REFERENCES "blocks" ("block_index")
);

CREATE TABLE "users" (
	"address" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("address")
);
