DROP DATABASE IF EXISTS "schema556";
CREATE DATABASE "schema556";
USE "schema556";
CREATE TABLE "penduduk" (
	"id" VARCHAR,
	"nik" VARCHAR,
	"nama_lengkap" VARCHAR,
	"jenis_kelamin" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transaction_tables" (
	"id" VARCHAR,
	"name_table" VARCHAR,
	"name_column" VARCHAR,
	"row_number" BIGINT,
	"data_type" VARCHAR,
	"master_id" VARCHAR,
	"data_value_int" INTEGER,
	"data_value_money" DECIMAL,
	"data_value_boolean" BOOLEAN,
	"data_value_string" VARCHAR,
	"data_value_text" LONGTEXT,
	"data_value_date" DATE,
	"data_value_datetime" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dynamic_tables" (
	"id" VARCHAR,
	"name_table" VARCHAR,
	"name_label" VARCHAR,
	"name_column" VARCHAR,
	"data_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sequence_generator" (
	"name_table" VARCHAR,
	"current_value" BIGINT,
	 PRIMARY KEY ("name_table")
);
