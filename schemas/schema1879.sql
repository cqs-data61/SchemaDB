DROP DATABASE IF EXISTS "schema1879";
CREATE DATABASE "schema1879";
USE "schema1879";
CREATE TABLE "blocks" (
	"hash" CHAR,
	"amount" VARCHAR,
	"balance" VARCHAR,
	"height" INT,
	"local_timestamp" INT,
	"confirmed" TINYINT,
	"type" TINYINT,
	"account" CHAR,
	"previous" CHAR,
	"representative" CHAR,
	"link" CHAR,
	"link_as_account" CHAR,
	"signature" CHAR,
	"work" CHAR,
	"subtype" TINYINT
);

CREATE TABLE "accounts" (
	"account" CHAR,
	"frontier" CHAR,
	"open_block" CHAR,
	"representative_block" CHAR,
	"balance" VARCHAR,
	"modified_timestamp" INT,
	"block_count" INT,
	"confirmation_height" INT,
	"confirmation_height_frontier" CHAR,
	"key" CHAR
);
