DROP DATABASE IF EXISTS "schema837";
CREATE DATABASE "schema837";
USE "schema837";
CREATE TABLE "pruning" (
	"last_pruned_height" BIGINT
);

CREATE TABLE "message" (
	"transaction_hash" TEXT,
	"index" BIGINT,
	"type" TEXT,
	"value" LONGTEXT,
	"involved_accounts_addresses" TEXT
);

CREATE TABLE "transaction" (
	"hash" TEXT,
	"height" BIGINT,
	"success" BOOLEAN,
	"messages" LONGTEXT,
	"memo" TEXT,
	"signatures" TEXT,
	"signer_infos" LONGTEXT,
	"fee" LONGTEXT,
	"gas_wanted" BIGINT,
	"gas_used" BIGINT,
	"raw_log" TEXT,
	"logs" LONGTEXT,
	 PRIMARY KEY ("hash")
);

CREATE TABLE "block" (
	"height" BIGINT,
	"hash" TEXT,
	"num_txs" INTEGER,
	"total_gas" BIGINT,
	"proposer_address" TEXT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("height")
);

CREATE TABLE "pre_commit" (
	"validator_address" TEXT,
	"height" BIGINT,
	"timestamp" TIMESTAMP,
	"voting_power" BIGINT,
	"proposer_priority" INTEGER
);

CREATE TABLE "validator" (
	"consensus_address" TEXT,
	"consensus_pubkey" TEXT,
	 PRIMARY KEY ("consensus_address")
);
