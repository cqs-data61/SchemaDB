DROP DATABASE IF EXISTS "schema1144";
CREATE DATABASE "schema1144";
USE "schema1144";
CREATE TABLE "binary_types" (
	"bytea_col" BYTEA,
	"blob_col" OID
);

CREATE TABLE "datetime_types" (
	"date_col" DATE,
	"timestamp_col" TIMESTAMP,
	"time_col" TIME
);

CREATE TABLE "string_types" (
	"char1_col" CHAR,
	"char_col" CHAR,
	"varchar_col" VARCHAR,
	"text_col" TEXT,
	"clob_col" OID
);

CREATE TABLE "numeric_types" (
	"smallint_col" SMALLINT,
	"integer_col" INTEGER,
	"bigint_col" BIGINT,
	"decimal_col" DECIMAL,
	"numeric_col" NUMERIC,
	"real_col" REAL,
	"double_precision_col" DOUBLE PRECISION,
	"boolean_col" BOOLEAN
);
