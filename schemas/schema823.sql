DROP DATABASE IF EXISTS "schema823";
CREATE DATABASE "schema823";
USE "schema823";
CREATE TABLE "transaction" (
	"consensus_ns" BIGINT,
	"type" SMALLINT,
	"result" SMALLINT,
	"payer_account_id" BIGINT,
	"valid_start_ns" BIGINT,
	"valid_duration_seconds" BIGINT,
	"node_account_id" BIGINT,
	"entity_id" BIGINT,
	"initial_balance" BIGINT,
	"max_fee" BIGINT,
	"charged_tx_fee" BIGINT,
	"memo" BYTEA,
	"scheduled" BOOLEAN,
	"transaction_hash" BYTEA,
	"transaction_bytes" BYTEA
);

CREATE TABLE "topic_message" (
	"consensus_timestamp" BIGINT,
	"realm_num" SMALLINT,
	"topic_num" INTEGER,
	"message" BYTEA,
	"running_hash" BYTEA,
	"sequence_number" BIGINT,
	"running_hash_version" SMALLINT,
	"chunk_num" INTEGER,
	"chunk_total" INTEGER,
	"payer_account_id" BIGINT,
	"valid_start_timestamp" BIGINT
);

CREATE TABLE "token_transfer" (
	"token_id" BIGINT,
	"account_id" BIGINT,
	"consensus_timestamp" BIGINT,
	"amount" BIGINT
);

CREATE TABLE "token_balance" (
	"consensus_timestamp" BIGINT,
	"account_id" BIGINT,
	"balance" BIGINT,
	"token_id" BIGINT
);

CREATE TABLE "token_account" (
	"account_id" BIGINT,
	"associated" BOOLEAN,
	"created_timestamp" BIGINT,
	"freeze_status" SMALLINT,
	"kyc_status" SMALLINT,
	"modified_timestamp" BIGINT,
	"token_id" BIGINT
);

CREATE TABLE "token" (
	"token_id" BIGINT,
	"created_timestamp" BIGINT,
	"decimals" BIGINT,
	"freeze_default" BOOLEAN,
	"freeze_key" BYTEA,
	"freeze_key_ed25519_hex" VARCHAR,
	"initial_supply" BIGINT,
	"kyc_key" BYTEA,
	"kyc_key_ed25519_hex" VARCHAR,
	"max_supply" BIGINT,
	"modified_timestamp" BIGINT,
	"name" CHARACTER VARYING,
	"supply_key" BYTEA,
	"supply_key_ed25519_hex" VARCHAR,
	"supply_type" ENUM,
	"symbol" CHARACTER VARYING,
	"total_supply" BIGINT,
	"treasury_account_id" BIGINT,
	"type" ENUM,
	"wipe_key" BYTEA,
	"wipe_key_ed25519_hex" VARCHAR
);

CREATE TABLE "t_transaction_types" (
	"proto_id" INTEGER,
	"name" CHARACTER VARYING,
	"entity_type" INTEGER
);

CREATE TABLE "t_transaction_results" (
	"proto_id" INTEGER,
	"result" CHARACTER VARYING
);

CREATE TABLE "t_entity_types" (
	"id" INTEGER,
	"name" CHARACTER VARYING
);

CREATE TABLE "transaction_signature" (
	"consensus_timestamp" BIGINT,
	"public_key_prefix" BYTEA,
	"entity_id" BIGINT,
	"signature" BYTEA
);

CREATE TABLE "schedule" (
	"consensus_timestamp" BIGINT,
	"creator_account_id" BIGINT,
	"executed_timestamp" BIGINT,
	"payer_account_id" BIGINT,
	"schedule_id" BIGINT,
	"transaction_body" BYTEA,
	 PRIMARY KEY ("consensus_timestamp")
);

CREATE TABLE "record_file" (
	"bytes" BYTEA,
	"consensus_start" BIGINT,
	"consensus_end" BIGINT,
	"count" BIGINT,
	"digest_algorithm" INT,
	"file_hash" CHARACTER VARYING,
	"hapi_version_major" INT,
	"hapi_version_minor" INT,
	"hapi_version_patch" INT,
	"hash" CHARACTER VARYING,
	"index" BIGINT,
	"load_start" BIGINT,
	"load_end" BIGINT,
	"name" CHARACTER VARYING,
	"node_account_id" BIGINT,
	"prev_hash" CHARACTER VARYING,
	"version" INT
);

CREATE TABLE "non_fee_transfer" (
	"entity_id" BIGINT,
	"consensus_timestamp" BIGINT,
	"amount" BIGINT
);

CREATE TABLE "nft_transfer" (
	"consensus_timestamp" BIGINT,
	"receiver_account_id" BIGINT,
	"sender_account_id" BIGINT,
	"serial_number" BIGINT,
	"token_id" BIGINT
);

CREATE TABLE "nft" (
	"account_id" BIGINT,
	"created_timestamp" BIGINT,
	"deleted" BOOLEAN,
	"modified_timestamp" BIGINT,
	"metadata" BYTEA,
	"serial_number" BIGINT,
	"token_id" BIGINT
);

CREATE TABLE "live_hash" (
	"livehash" BYTEA,
	"consensus_timestamp" BIGINT
);

CREATE TABLE "file_data" (
	"file_data" BYTEA,
	"consensus_timestamp" BIGINT,
	"entity_id" BIGINT,
	"transaction_type" SMALLINT
);

CREATE TABLE "event_file" (
	"bytes" BYTEA,
	"consensus_start" BIGINT,
	"consensus_end" BIGINT,
	"count" BIGINT,
	"digest_algorithm" INT,
	"file_hash" CHARACTER VARYING,
	"hash" CHARACTER VARYING,
	"load_start" BIGINT,
	"load_end" BIGINT,
	"name" CHARACTER VARYING,
	"node_account_id" BIGINT,
	"previous_hash" CHARACTER VARYING,
	"version" INTEGER
);

CREATE TABLE "entity" (
	"auto_renew_account_id" BIGINT,
	"auto_renew_period" BIGINT,
	"created_timestamp" BIGINT,
	"deleted" BOOLEAN,
	"expiration_timestamp" BIGINT,
	"id" BIGINT,
	"key" BYTEA,
	"memo" TEXT,
	"modified_timestamp" BIGINT,
	"num" BIGINT,
	"proxy_account_id" BIGINT,
	"public_key" CHARACTER VARYING,
	"realm" BIGINT,
	"shard" BIGINT,
	"submit_key" BYTEA,
	"type" INTEGER
);

CREATE TABLE "crypto_transfer" (
	"entity_id" BIGINT,
	"consensus_timestamp" BIGINT,
	"amount" BIGINT
);

CREATE TABLE "contract_result" (
	"function_parameters" BYTEA,
	"gas_supplied" BIGINT,
	"call_result" BYTEA,
	"gas_used" BIGINT,
	"consensus_timestamp" BIGINT
);

CREATE TABLE "address_book_service_endpoint" (
	"consensus_timestamp" BIGINT,
	"ip_address_v4" VARCHAR,
	"node_id" BIGINT,
	"port" INTEGER
);

CREATE TABLE "address_book_entry" (
	"consensus_timestamp" BIGINT,
	"description" VARCHAR,
	"memo" VARCHAR,
	"public_key" VARCHAR,
	"node_id" BIGINT,
	"node_account_id" BIGINT,
	"node_cert_hash" BYTEA,
	"stake" BIGINT
);

CREATE TABLE "address_book" (
	"start_consensus_timestamp" BIGINT,
	"end_consensus_timestamp" BIGINT,
	"file_id" BIGINT,
	"node_count" INT,
	"file_data" BYTEA
);

CREATE TABLE "account_balance_file" (
	"bytes" BYTEA,
	"consensus_timestamp" BIGINT,
	"count" BIGINT,
	"file_hash" VARCHAR,
	"load_start" BIGINT,
	"load_end" BIGINT,
	"name" VARCHAR,
	"node_account_id" BIGINT
);

CREATE TABLE "account_balance" (
	"consensus_timestamp" BIGINT,
	"balance" BIGINT,
	"account_id" BIGINT
);
