DROP DATABASE IF EXISTS "schema2087";
CREATE DATABASE "schema2087";
USE "schema2087";
CREATE TABLE "review_data" (
	"id" INT,
	"review_id" INT,
	"schema_id" INT,
	"d_value" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" INT,
	"venue_id" INT,
	"username" VARCHAR,
	"overall_rating" FLOAT,
	"submit_time" INT,
	"flags" INT,
	"edit_key" CHAR,
	"freetext" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "attrs" (
	"id" INT,
	"a_name" VARCHAR,
	"a_hint" VARCHAR,
	"a_type" VARCHAR,
	"a_size" SMALLINT,
	"a_options" TEXT,
	"a_flags" INT,
	"a_sort_order" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "venues" (
	"id" INT,
	"v_name" VARCHAR,
	"v_addr" VARCHAR,
	"v_phone" VARCHAR,
	 PRIMARY KEY ("id")
);
