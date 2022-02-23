DROP DATABASE IF EXISTS "schema1154";
CREATE DATABASE "schema1154";
USE "schema1154";
CREATE TABLE "tablebackupview" (
	"table_schema" VARCHAR,
	"table_name" VARCHAR,
	"table_type" VARCHAR,
	"engine" VARCHAR,
	"table_comment" VARCHAR,
	"frequency" DECIMAL,
	"lastupdatetime" DATETIME,
	"schemaonly" DECIMAL,
	"incremental" VARCHAR,
	"incrementalon" DECIMAL,
	"compressionprog" VARCHAR,
	"compressionopt" VARCHAR,
	"compressionsuffix" VARCHAR,
	"path" VARCHAR,
	"fractionsize" DECIMAL,
	"note" TEXT
);

CREATE TABLE "tablebackupoverride" (
	"id" INT,
	"table_schema" VARCHAR,
	"table_name" VARCHAR,
	"note" TEXT,
	"frequency" TINYINT,
	"where" TEXT,
	"incremental" VARCHAR,
	"incrementalon" TINYINT,
	"compressionprog" VARCHAR,
	"compressionopt" VARCHAR,
	"compressionsuffix" VARCHAR,
	"path" VARCHAR,
	"fractionsize" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dbbackupview" (
	"schema_name" VARCHAR,
	"frequency" DECIMAL,
	"note" TEXT
);

CREATE TABLE "dbbackupoverride" (
	"id" INT,
	"schema_name" VARCHAR,
	"frequency" TINYINT,
	"addedon" TIMESTAMP,
	"note" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "backupresult" (
	"id" INT,
	"table_schema" VARCHAR,
	"table_name" VARCHAR,
	"started" DATETIME,
	"ended" DATETIME,
	"folder" VARCHAR,
	"error" TEXT,
	"lastid" BIGINT,
	 PRIMARY KEY ("id")
);
