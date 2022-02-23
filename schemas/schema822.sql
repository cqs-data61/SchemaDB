DROP DATABASE IF EXISTS "schema822";
CREATE DATABASE "schema822";
USE "schema822";
CREATE TABLE "doctype" (
	"doctype_id" INT4,
	"doctype" VARCHAR,
	"parent_id" INT4,
	 PRIMARY KEY ("doctype_id"),
	 CONSTRAINT "c2g_p__doctype_parent" FOREIGN KEY ("parent_id") REFERENCES "doctype" ("doctype_id")
);

CREATE TABLE "doc" (
	"doc_id" INT8,
	"doctype" INT4,
	"reference" INT8,
	"parent" INT8,
	"reference2" INT8,
	 PRIMARY KEY ("doc_id"),
	 CONSTRAINT "c2g_p__doc_reference2" FOREIGN KEY ("reference2") REFERENCES "doc" ("doc_id"),
	 CONSTRAINT "c2g_p__doc_parent" FOREIGN KEY ("parent") REFERENCES "doc" ("doc_id"),
	 CONSTRAINT "c2g_p__doc_doctype" FOREIGN KEY ("doctype") REFERENCES "doctype" ("doctype_id"),
	 CONSTRAINT "c2g_p__doc_reference" FOREIGN KEY ("reference") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "uuid" (
	"uuid_id" INT4,
	"value" VARCHAR,
	 PRIMARY KEY ("uuid_id"),
	 CONSTRAINT "c2g_f__doc_uuid" FOREIGN KEY ("uuid_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "code" (
	"code_id" INT4,
	"code" INT4,
	 PRIMARY KEY ("code_id"),
	 CONSTRAINT "c2g_f__doc_code" FOREIGN KEY ("code_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "translate_id" (
	"this_id" INT4,
	"extra_id" INT4,
	"db_id" INT4,
	 PRIMARY KEY ("this_id"),
	 CONSTRAINT "c2g_f__doctype_db_id" FOREIGN KEY ("db_id") REFERENCES "doctype" ("doctype_id"),
	 CONSTRAINT "c2g_f__doc_translate_id" FOREIGN KEY ("this_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "string_u" (
	"string_u_id" INT4,
	"group_id" INT4,
	"value" VARCHAR,
	 PRIMARY KEY ("string_u_id"),
	 CONSTRAINT "c2g_f__doctype_string_u" FOREIGN KEY ("group_id") REFERENCES "doctype" ("doctype_id"),
	 CONSTRAINT "c2g_f__doc_string_u" FOREIGN KEY ("string_u_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "sort" (
	"sort_id" INT4,
	"sort" INT8,
	"treelevel" VARCHAR,
	 PRIMARY KEY ("sort_id"),
	 CONSTRAINT "c2g_f__doc_sort" FOREIGN KEY ("sort_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "docbody" (
	"docbody_id" INT4,
	"docbody" VARCHAR,
	 PRIMARY KEY ("docbody_id"),
	 CONSTRAINT "c2g_f__doc_docbody" FOREIGN KEY ("docbody_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "timestamp" (
	"timestamp_id" INT4,
	"value" DATETIME,
	 PRIMARY KEY ("timestamp_id"),
	 CONSTRAINT "c2g_f__doc_timestamp" FOREIGN KEY ("timestamp_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "date" (
	"date_id" INT4,
	"value" DATE,
	 PRIMARY KEY ("date_id"),
	 CONSTRAINT "c2g_f__doc_date" FOREIGN KEY ("date_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "double" (
	"double_id" INT4,
	"value" FLOAT4,
	 PRIMARY KEY ("double_id"),
	 CONSTRAINT "c2g_f__doc_double" FOREIGN KEY ("double_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "integer" (
	"integer_id" INT4,
	"value" INT4,
	 PRIMARY KEY ("integer_id"),
	 CONSTRAINT "c2g_f__doc_integer" FOREIGN KEY ("integer_id") REFERENCES "doc" ("doc_id")
);

CREATE TABLE "string" (
	"string_id" INT4,
	"value" VARCHAR,
	 PRIMARY KEY ("string_id"),
	 CONSTRAINT "c2g_f__doc_string" FOREIGN KEY ("string_id") REFERENCES "doc" ("doc_id")
);
