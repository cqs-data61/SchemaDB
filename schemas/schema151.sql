DROP DATABASE IF EXISTS "schema151";
CREATE DATABASE "schema151";
USE "schema151";
CREATE TABLE "with_local_date_time" (
	"id" BIGINT,
	"test_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "versioned_aggregate" (
	"id" BIGINT,
	"version" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "with_read_only" (
	"id" BIGINT,
	"name" VARCHAR,
	"read_only" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "no_id_map_chain4" (
	"four" BIGINT,
	"four_value" VARCHAR,
	 PRIMARY KEY ("four")
);

CREATE TABLE "no_id_map_chain3" (
	"three_value" VARCHAR,
	"no_id_map_chain4" BIGINT,
	"no_id_map_chain4_key" VARCHAR,
	 PRIMARY KEY ("no_id_map_chain4","no_id_map_chain4_key"),
	 CONSTRAINT "fkeycon_no_id_map_chain3_to_no_id_map_chain4" FOREIGN KEY ("no_id_map_chain4") REFERENCES "no_id_map_chain4" ("four")
);

CREATE TABLE "no_id_map_chain2" (
	"two_value" VARCHAR,
	"no_id_map_chain4" BIGINT,
	"no_id_map_chain4_key" VARCHAR,
	"no_id_map_chain3_key" VARCHAR,
	 PRIMARY KEY ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key"),
	 CONSTRAINT "fkeycon_no_id_map_chain2_to_no_id_map_chain3" FOREIGN KEY ("no_id_map_chain4","no_id_map_chain4_key") REFERENCES "no_id_map_chain3" ("no_id_map_chain4","no_id_map_chain4_key")
);

CREATE TABLE "no_id_map_chain1" (
	"one_value" VARCHAR,
	"no_id_map_chain4" BIGINT,
	"no_id_map_chain4_key" VARCHAR,
	"no_id_map_chain3_key" VARCHAR,
	"no_id_map_chain2_key" VARCHAR,
	 PRIMARY KEY ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key","no_id_map_chain2_key"),
	 CONSTRAINT "fkeycon_no_id_map_chain1_to_no_id_map_chain2" FOREIGN KEY ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key") REFERENCES "no_id_map_chain2" ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key")
);

CREATE TABLE "no_id_map_chain0" (
	"zero_value" VARCHAR,
	"no_id_map_chain4" BIGINT,
	"no_id_map_chain4_key" VARCHAR,
	"no_id_map_chain3_key" VARCHAR,
	"no_id_map_chain2_key" VARCHAR,
	"no_id_map_chain1_key" VARCHAR,
	 PRIMARY KEY ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key","no_id_map_chain2_key","no_id_map_chain1_key"),
	 CONSTRAINT "fkeycon_no_id_map_chain0_to_no_id_map_chain1" FOREIGN KEY ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key","no_id_map_chain2_key") REFERENCES "no_id_map_chain1" ("no_id_map_chain4","no_id_map_chain4_key","no_id_map_chain3_key","no_id_map_chain2_key")
);

CREATE TABLE "no_id_list_chain4" (
	"four" BIGINT,
	"four_value" VARCHAR,
	 PRIMARY KEY ("four")
);

CREATE TABLE "no_id_list_chain3" (
	"three_value" VARCHAR,
	"no_id_list_chain4" BIGINT,
	"no_id_list_chain4_key" BIGINT,
	 PRIMARY KEY ("no_id_list_chain4","no_id_list_chain4_key"),
	 CONSTRAINT "fkeycon_no_id_list_chain3_to_no_id_list_chain4" FOREIGN KEY ("no_id_list_chain4") REFERENCES "no_id_list_chain4" ("four")
);

CREATE TABLE "no_id_list_chain2" (
	"two_value" VARCHAR,
	"no_id_list_chain4" BIGINT,
	"no_id_list_chain4_key" BIGINT,
	"no_id_list_chain3_key" BIGINT,
	 PRIMARY KEY ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key"),
	 CONSTRAINT "fkeycon_no_id_list_chain2_to_no_id_list_chain3" FOREIGN KEY ("no_id_list_chain4","no_id_list_chain4_key") REFERENCES "no_id_list_chain3" ("no_id_list_chain4","no_id_list_chain4_key")
);

CREATE TABLE "no_id_list_chain1" (
	"one_value" VARCHAR,
	"no_id_list_chain4" BIGINT,
	"no_id_list_chain4_key" BIGINT,
	"no_id_list_chain3_key" BIGINT,
	"no_id_list_chain2_key" BIGINT,
	 PRIMARY KEY ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key","no_id_list_chain2_key"),
	 CONSTRAINT "fkeycon_no_id_list_chain1_to_no_id_list_chain2" FOREIGN KEY ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key") REFERENCES "no_id_list_chain2" ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key")
);

CREATE TABLE "no_id_list_chain0" (
	"zero_value" VARCHAR,
	"no_id_list_chain4" BIGINT,
	"no_id_list_chain4_key" BIGINT,
	"no_id_list_chain3_key" BIGINT,
	"no_id_list_chain2_key" BIGINT,
	"no_id_list_chain1_key" BIGINT,
	 PRIMARY KEY ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key","no_id_list_chain2_key","no_id_list_chain1_key"),
	 CONSTRAINT "fkeycon_no_id_list_chain0_to_no_id_list_chain1" FOREIGN KEY ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key","no_id_list_chain2_key") REFERENCES "no_id_list_chain1" ("no_id_list_chain4","no_id_list_chain4_key","no_id_list_chain3_key","no_id_list_chain2_key")
);

CREATE TABLE "no_id_chain4" (
	"four" BIGINT,
	"four_value" VARCHAR,
	 PRIMARY KEY ("four")
);

CREATE TABLE "no_id_chain0" (
	"zero_value" VARCHAR,
	"no_id_chain4" BIGINT,
	 CONSTRAINT "fkeycon_no_id_chain0_to_no_id_chain4" FOREIGN KEY ("no_id_chain4") REFERENCES "no_id_chain4" ("four")
);

CREATE TABLE "no_id_chain1" (
	"one_value" VARCHAR,
	"no_id_chain4" BIGINT,
	 CONSTRAINT "fkeycon_no_id_chain1_to_no_id_chain4" FOREIGN KEY ("no_id_chain4") REFERENCES "no_id_chain4" ("four")
);

CREATE TABLE "no_id_chain2" (
	"two_value" VARCHAR,
	"no_id_chain4" BIGINT,
	 CONSTRAINT "fkeycon_no_id_chain2_to_no_id_chain4" FOREIGN KEY ("no_id_chain4") REFERENCES "no_id_chain4" ("four")
);

CREATE TABLE "no_id_chain3" (
	"three_value" VARCHAR,
	"no_id_chain4" BIGINT,
	 CONSTRAINT "fkeycon_no_id_chain3_to_no_id_chain4" FOREIGN KEY ("no_id_chain4") REFERENCES "no_id_chain4" ("four")
);

CREATE TABLE "chain4" (
	"four" BIGINT,
	"four_value" VARCHAR,
	 PRIMARY KEY ("four")
);

CREATE TABLE "chain3" (
	"three" BIGINT,
	"three_value" VARCHAR,
	"chain4" BIGINT,
	 PRIMARY KEY ("three"),
	 CONSTRAINT "fkeycon_chain3_to_chain4" FOREIGN KEY ("chain4") REFERENCES "chain4" ("four")
);

CREATE TABLE "chain2" (
	"two" BIGINT,
	"two_value" VARCHAR,
	"chain3" BIGINT,
	 PRIMARY KEY ("two"),
	 CONSTRAINT "fkeycon_chain2_to_chain3" FOREIGN KEY ("chain3") REFERENCES "chain3" ("three")
);

CREATE TABLE "chain1" (
	"one" BIGINT,
	"one_value" VARCHAR,
	"chain2" BIGINT,
	 PRIMARY KEY ("one"),
	 CONSTRAINT "fkeycon_chain1_to_chain2" FOREIGN KEY ("chain2") REFERENCES "chain2" ("two")
);

CREATE TABLE "chain0" (
	"zero" BIGINT,
	"zero_value" VARCHAR,
	"chain1" BIGINT,
	 PRIMARY KEY ("zero"),
	 CONSTRAINT "fkeycon_chain0_to_chain1" FOREIGN KEY ("chain1") REFERENCES "chain1" ("one")
);

CREATE TABLE "byte_array_owner" (
	"id" BIGINT,
	"binary_data" VARBINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "array_owner" (
	"id" BIGINT,
	"digits" VARCHAR,
	"multidimensional" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "list_parent" (
	"id4" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id4")
);

CREATE TABLE "element_no_id" (
	"content" VARCHAR,
	"list_parent_key" BIGINT,
	"list_parent" BIGINT,
	 CONSTRAINT "fkeycon_element_no_id_to_list_parent" FOREIGN KEY ("list_parent") REFERENCES "list_parent" ("id4")
);

CREATE TABLE "child_no_id" (
	"one_to_one_parent" INTEGER,
	"content" VARCHAR,
	 PRIMARY KEY ("one_to_one_parent")
);

CREATE TABLE "one_to_one_parent" (
	"id3" BIGINT,
	"content" VARCHAR,
	 PRIMARY KEY ("id3")
);

CREATE TABLE "lego_set" (
	"id1" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id1")
);

CREATE TABLE "manual" (
	"id2" BIGINT,
	"lego_set" BIGINT,
	"alternative" BIGINT,
	"content" VARCHAR,
	 PRIMARY KEY ("id2"),
	 CONSTRAINT "fkeycon_manual_to_lego_set" FOREIGN KEY ("lego_set") REFERENCES "lego_set" ("id1")
);
