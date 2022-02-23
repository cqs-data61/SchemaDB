DROP DATABASE IF EXISTS "schema402";
CREATE DATABASE "schema402";
USE "schema402";
CREATE TABLE "global_user_data" (
	"user_id" BIGINT,
	"voting_credits" BIGINT,
	"last_voted" DATETIME,
	"voting_streak" BIGINT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "guild_user_data" (
	"user_id" BIGINT,
	"guild_id" BIGINT,
	"balance" BIGINT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "guild_settings" (
	"guild_id" BIGINT,
	"command_prefix" TEXT,
	"currency_name" TEXT,
	 PRIMARY KEY ("guild_id")
);
