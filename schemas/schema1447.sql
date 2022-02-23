DROP DATABASE IF EXISTS "schema1447";
CREATE DATABASE "schema1447";
USE "schema1447";
CREATE TABLE "lexemes_challenge_statistics" (
	"challenge_id" BIGINT,
	"language_id" BIGINT,
	"completion" INT,
	"removed" INT,
	"added" INT,
	 PRIMARY KEY ("challenge_id","language_id")
);

CREATE TABLE "lexemes_challenge" (
	"id" BIGINT,
	"title" VARCHAR,
	"concepts" VARCHAR,
	"concepts_count" INT,
	"date_scheduled" DATETIME,
	"date_start" DATETIME,
	"date_end" DATETIME,
	"results_start" MEDIUMTEXT,
	"results_end" MEDIUMTEXT,
	"initial_tweet" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "query" (
	"id" BIGINT,
	"query_hash" BINARY,
	"endpoint_id" VARCHAR,
	"last_update" DATETIME,
	"query" TEXT,
	"response" MEDIUMBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "property" (
	"id" BIGINT,
	"type" VARCHAR,
	"label" VARCHAR,
	"cardinality" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "properties" (
	"propertya" BIGINT,
	"propertyb" BIGINT,
	"intersection_cardinality" BIGINT,
	"jaccard_index" DECIMAL,
	 PRIMARY KEY ("propertya","propertyb")
);

CREATE TABLE "projects" (
	"projecta" VARCHAR,
	"projectb" VARCHAR,
	"intersection_cardinality" BIGINT,
	"jaccard_index" DECIMAL,
	 PRIMARY KEY ("projecta","projectb")
);

CREATE TABLE "project" (
	"code" VARCHAR,
	"type" VARCHAR,
	"label" VARCHAR,
	"url" VARCHAR,
	"cardinality" BIGINT,
	 PRIMARY KEY ("code")
);

CREATE TABLE "parameter" (
	"key" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("key")
);

CREATE TABLE "import_property" (
	"id" BIGINT,
	"cardinality" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "import_properties" (
	"propertya" BIGINT,
	"propertyb" BIGINT,
	"intersection_cardinality" BIGINT,
	 PRIMARY KEY ("propertya","propertyb")
);

CREATE TABLE "import_projects" (
	"projecta" VARCHAR,
	"projectb" VARCHAR,
	"intersection_cardinality" BIGINT,
	 PRIMARY KEY ("projecta","projectb")
);

CREATE TABLE "import_project" (
	"code" VARCHAR,
	"cardinality" BIGINT,
	 PRIMARY KEY ("code")
);
