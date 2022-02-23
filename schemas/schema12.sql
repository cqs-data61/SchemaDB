DROP DATABASE IF EXISTS "schema12";
CREATE DATABASE "schema12";
USE "schema12";
CREATE TABLE "book_store" (
	"name" VARCHAR
);

CREATE TABLE "author" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"date_of_birth" DATE,
	"year_of_birth" BIGINT,
	"distinguished" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "language" (
	"id" BIGINT,
	"cd" CHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" BIGINT,
	"author_id" BIGINT,
	"title" VARCHAR,
	"published_in" BIGINT,
	"language_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_book_language" FOREIGN KEY ("language_id") REFERENCES "language" ("id"),
	 CONSTRAINT "fk_book_author" FOREIGN KEY ("author_id") REFERENCES "author" ("id")
);

CREATE TABLE "book_to_book_store" (
	"name" VARCHAR,
	"book_id" BIGINT,
	"stock" BIGINT,
	 PRIMARY KEY ("name","book_id"),
	 CONSTRAINT "fk_b2bs_book" FOREIGN KEY ("book_id") REFERENCES "book" ("id"),
	 CONSTRAINT "fk_b2bs_book_store" FOREIGN KEY ("name") REFERENCES "book_store" ("name")
);

CREATE TABLE "cs_instance" (
	"instance_id" BIGINT,
	 PRIMARY KEY ("instance_id")
);

CREATE TABLE "cs_datagrid" (
	"grid_id" BIGINT,
	"instance_id" BIGINT,
	"datagrid_name" VARCHAR,
	 PRIMARY KEY ("grid_id"),
	 CONSTRAINT "fk_dg_instance" FOREIGN KEY ("instance_id") REFERENCES "cs_instance" ("instance_id")
);

CREATE TABLE "cs_schemagroup" (
	"schema_group_id" BIGINT,
	"grid_id" BIGINT,
	"instance_id" BIGINT,
	"schema_group_name" VARCHAR,
	"is_dedicated_group" BOOLEAN,
	 PRIMARY KEY ("schema_group_id"),
	 CONSTRAINT "fk_sg_instance" FOREIGN KEY ("instance_id") REFERENCES "cs_instance" ("instance_id"),
	 CONSTRAINT "fk_sg_datagrid" FOREIGN KEY ("grid_id") REFERENCES "cs_datagrid" ("grid_id")
);

CREATE TABLE "cs_datacluster" (
	"cluster_id" BIGINT,
	"instance_id" BIGINT,
	"ip" VARCHAR,
	"grid_id" BIGINT,
	 PRIMARY KEY ("cluster_id"),
	 CONSTRAINT "fk_dc_datagrid" FOREIGN KEY ("grid_id") REFERENCES "cs_datagrid" ("grid_id"),
	 CONSTRAINT "fk_dc_instance" FOREIGN KEY ("instance_id") REFERENCES "cs_instance" ("instance_id")
);

CREATE TABLE "cs_schema" (
	"schema_id" BIGINT,
	"schema_group_id" BIGINT,
	"cluster_id" BIGINT,
	"instance_id" BIGINT,
	"schema_name" VARCHAR,
	 PRIMARY KEY ("schema_id"),
	 CONSTRAINT "fk_sc_instance" FOREIGN KEY ("instance_id") REFERENCES "cs_instance" ("instance_id"),
	 CONSTRAINT "fk_sc_datacluster" FOREIGN KEY ("cluster_id") REFERENCES "cs_datacluster" ("cluster_id"),
	 CONSTRAINT "fk_sc_schemagroup" FOREIGN KEY ("schema_group_id") REFERENCES "cs_schemagroup" ("schema_group_id")
);

CREATE TABLE "cs_dataspace" (
	"dataspace_id" BIGINT,
	"schema_group_id" BIGINT,
	"range_number" INT,
	"schema_id" BIGINT,
	"is_reserved" BOOLEAN,
	 PRIMARY KEY ("dataspace_id"),
	 CONSTRAINT "fk_ds_schema" FOREIGN KEY ("schema_id") REFERENCES "cs_schema" ("schema_id"),
	 CONSTRAINT "fk_ds_schemagroup" FOREIGN KEY ("schema_group_id") REFERENCES "cs_schemagroup" ("schema_group_id")
);

CREATE TABLE "cs_account" (
	"account_id" BIGINT,
	"instance_id" BIGINT,
	"account_name" INT,
	"dataspace_id" BIGINT,
	"status" INT,
	"reserved_time" BIGINT,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "fk_a_dataspace" FOREIGN KEY ("dataspace_id") REFERENCES "cs_dataspace" ("dataspace_id"),
	 CONSTRAINT "fk_a_instance" FOREIGN KEY ("instance_id") REFERENCES "cs_instance" ("instance_id")
);
