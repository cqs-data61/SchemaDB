DROP DATABASE IF EXISTS "schema838";
CREATE DATABASE "schema838";
USE "schema838";
CREATE TABLE "new_lob_table" (
	"c1" NUMBER,
	"c2" CLOB
);

CREATE TABLE "old_long_table" (
	"c1" NUMBER,
	"c2" LONG
);
