DROP DATABASE IF EXISTS "schema439";
CREATE DATABASE "schema439";
USE "schema439";
CREATE TABLE "category_company" (
	"id" INT,
	"company_id" INT,
	"category_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "table_b" (
	"id1" BIGINT,
	"id2" BIGINT,
	"word" VARCHAR,
	 PRIMARY KEY ("id1","id2")
);

CREATE TABLE "table_a" (
	"id_test_sequence" BIGINT,
	"id_test_unique_index" INT,
	"id_test_composite_unique_index_1" INT,
	"id_test_composite_unique_index_2" INT,
	"id_test_index" INT,
	"id_test_composite_index_1" INT,
	"id_test_composite_index_2" INT,
	"json_test_comment" LONGTEXT,
	"bit" BIT,
	"year" YEAR,
	"tinyint_test_default" TINYINT,
	"smallint" SMALLINT,
	"mediumint" MEDIUMINT,
	"int_test_not_null" INT,
	"bigint" BIGINT,
	"float" FLOAT,
	"double" DOUBLE,
	"double_precision" DOUBLE,
	"numeric" NUMERIC,
	"decimal" DECIMAL,
	"decimal_19_2" DECIMAL,
	"char_5" CHAR,
	"varchar_5" VARCHAR,
	"date" DATE,
	"time" TIME,
	"datetime" DATETIME,
	"timestamp" TIMESTAMP,
	"enum" ENUM,
	"set" ENUM,
	"tinytext" TINYTEXT,
	"mediumtext" MEDIUMTEXT,
	"longtext" LONGTEXT,
	"text" TEXT,
	"varbinary" VARBINARY,
	"binary" BINARY,
	"tinyblob" TINYBLOB,
	"mediumblob" MEDIUMBLOB,
	"longblob" LONGBLOB,
	"blob" BLOB,
	"null_char_in_varchar" VARCHAR,
	 PRIMARY KEY ("id_test_sequence")
);

CREATE TABLE "table_c" (
	"id" INT,
	"word" VARCHAR,
	"table_a_id" BIGINT,
	"table_b_id1" BIGINT,
	"table_b_id2" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "table_c_table_a_id_foreign" FOREIGN KEY ("table_a_id") REFERENCES "table_a" ("id_test_sequence"),
	 CONSTRAINT "table_c_table_b_id_1_2_foreign" FOREIGN KEY ("table_b_id1","table_b_id2") REFERENCES "table_b" ("id1","id2")
);
