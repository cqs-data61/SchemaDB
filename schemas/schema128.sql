DROP DATABASE IF EXISTS "schema128";
CREATE DATABASE "schema128";
USE "schema128";
CREATE TABLE "child_chain" (
	"txhash" CHAR,
	"code" SMALLINT,
	"msg" VARCHAR,
	 PRIMARY KEY ("txhash")
);

CREATE TABLE "root_chain" (
	"txhash" CHAR,
	"code" SMALLINT,
	"msg" VARCHAR,
	 PRIMARY KEY ("txhash")
);
