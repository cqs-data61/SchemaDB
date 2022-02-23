DROP DATABASE IF EXISTS "schema2401";
CREATE DATABASE "schema2401";
USE "schema2401";
CREATE TABLE "pruning" (
	"last_pruned_height" BIGINT
);

CREATE TABLE "event" (
	"height" BIGINT,
	"type" TEXT,
	"transaction_id" TEXT,
	"transaction_index" TEXT,
	"event_index" BIGINT,
	"value" TEXT
);

CREATE TABLE "transaction" (
	"status" TEXT,
	"height" BIGINT,
	"transaction_id" TEXT,
	"script" TEXT,
	"arguments" TEXT,
	"reference_block_id" TEXT,
	"gas_limit" BIGINT,
	"proposal_key" TEXT,
	"payer" TEXT,
	"authorizers" TEXT,
	"payload_signature" TEXT,
	"envelope_signatures" TEXT
);

CREATE TABLE "block_seal" (
	"height" BIGINT,
	"execution_receipt_id" TEXT,
	"execution_receipt_signatures" TEXT
);

CREATE TABLE "block" (
	"height" BIGINT,
	"id" TEXT,
	"parent_id" TEXT,
	"collection_guarantees" TEXT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("height")
);

CREATE TABLE "node_info" (
	"id" TEXT,
	"role" BIGINT,
	"networkingaddress" TEXT,
	"networkingkey" TEXT,
	"stakingkey" TEXT,
	"tokensstaked" NUMERIC,
	"tokenscommitted" NUMERIC,
	"tokensunstaking" NUMERIC,
	"tokensunstaked" NUMERIC,
	"tokensrewarded" NUMERIC,
	"delegators" NUMERIC,
	"delegatoridcounter" BIGINT,
	"tokensrequestedtounstake" NUMERIC,
	"initialweight" BIGINT,
	 PRIMARY KEY ("id")
);
