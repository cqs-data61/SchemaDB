DROP DATABASE IF EXISTS "schema817";
CREATE DATABASE "schema817";
USE "schema817";
CREATE TABLE "forks_stat" (
	"delegatepublickey" BYTEA,
	"blocktimestamp" INT,
	"blockid" VARCHAR,
	"blockheight" INT,
	"previousblock" VARCHAR,
	"cause" INT
);

CREATE TABLE "blocks" (
	"id" VARCHAR,
	"rowid" SERIAL,
	"version" INT,
	"timestamp" INT,
	"height" INT,
	"previousblock" VARCHAR,
	"numberoftransactions" INT,
	"totalamount" BIGINT,
	"totalfee" BIGINT,
	"reward" BIGINT,
	"payloadlength" INT,
	"payloadhash" BYTEA,
	"generatorpublickey" BYTEA,
	"blocksignature" BYTEA,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_blocks_to_blocks" FOREIGN KEY ("previousblock") REFERENCES "blocks" ("id")
);

CREATE TABLE "trs" (
	"id" VARCHAR,
	"rowid" SERIAL,
	"blockid" VARCHAR,
	"type" SMALLINT,
	"timestamp" INT,
	"senderpublickey" BYTEA,
	"senderid" VARCHAR,
	"recipientid" VARCHAR,
	"amount" BIGINT,
	"fee" BIGINT,
	"signature" BYTEA,
	"signsignature" BYTEA,
	"requesterpublickey" BYTEA,
	"signatures" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_trs_to_blocks" FOREIGN KEY ("blockid") REFERENCES "blocks" ("id")
);

CREATE TABLE "outtransfer" (
	"transactionid" VARCHAR,
	"dappid" VARCHAR,
	"outtransactionid" VARCHAR,
	 CONSTRAINT "fkeycon_outtransfer_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);

CREATE TABLE "intransfer" (
	"dappid" VARCHAR,
	"transactionid" VARCHAR,
	 CONSTRAINT "fkeycon_intransfer_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);

CREATE TABLE "dapps" (
	"transactionid" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"link" TEXT,
	"type" INT,
	"category" INT,
	"icon" TEXT,
	 CONSTRAINT "fkeycon_dapps_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);

CREATE TABLE "multisignatures" (
	"min" INT,
	"lifetime" INT,
	"keysgroup" TEXT,
	"transactionid" VARCHAR,
	 CONSTRAINT "fkeycon_multisignatures_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);

CREATE TABLE "votes" (
	"votes" TEXT,
	"transactionid" VARCHAR,
	 CONSTRAINT "fkeycon_votes_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);

CREATE TABLE "delegates" (
	"username" VARCHAR,
	"transactionid" VARCHAR,
	 CONSTRAINT "fkeycon_delegates_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);

CREATE TABLE "signatures" (
	"transactionid" VARCHAR,
	"publickey" BYTEA,
	 PRIMARY KEY ("transactionid"),
	 CONSTRAINT "fkeycon_signatures_to_trs" FOREIGN KEY ("transactionid") REFERENCES "trs" ("id")
);
