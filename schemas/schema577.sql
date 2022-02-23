DROP DATABASE IF EXISTS "schema577";
CREATE DATABASE "schema577";
USE "schema577";
CREATE TABLE "pr_round" (
	"round_id" SERIAL,
	"chain" LONGTEXT,
	"session_id" INTEGER,
	"result" BIGINT,
	 PRIMARY KEY ("round_id")
);

CREATE TABLE "pr_session" (
	"session_id" SERIAL,
	"players" LONGTEXT,
	"estimated" INTEGER,
	"active_round_id" INTEGER,
	 PRIMARY KEY ("session_id")
);
