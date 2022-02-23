DROP DATABASE IF EXISTS "schema2352";
CREATE DATABASE "schema2352";
USE "schema2352";
CREATE TABLE "taxon_synonyms" (
	"synonym_id" INTEGER,
	"name_given" VARCHAR,
	"taxon_status_id" SMALLINT,
	"accepted_id" INTEGER,
	 PRIMARY KEY ("synonym_id")
);

CREATE TABLE "taxon_accepted" (
	"accepted_id" INTEGER,
	"name_accepted" VARCHAR,
	"name_common" VARCHAR,
	"hierarchy_id" SMALLINT,
	"taxon_source_id" SMALLINT,
	"link_source" VARCHAR,
	"level_id" SMALLINT,
	"native" BOOLEAN,
	"non_native" BOOLEAN,
	"endemic" BOOLEAN,
	 PRIMARY KEY ("accepted_id")
);

CREATE TABLE "hierarchy" (
	"hierarchy_id" SMALLINT,
	"genus_accepted" VARCHAR,
	"family_id" SMALLINT,
	"order_id" SMALLINT,
	"class_id" SMALLINT,
	 PRIMARY KEY ("hierarchy_id")
);

CREATE TABLE "taxon_source" (
	"taxon_source_id" SMALLINT,
	"taxon_source" VARCHAR,
	"citation" VARCHAR,
	 PRIMARY KEY ("taxon_source_id")
);

CREATE TABLE "taxon_level" (
	"level_id" SMALLINT,
	"level" VARCHAR,
	 PRIMARY KEY ("level_id")
);

CREATE TABLE "taxon_status" (
	"taxon_status_id" SMALLINT,
	"taxon_status" VARCHAR,
	 PRIMARY KEY ("taxon_status_id")
);

CREATE TABLE "family" (
	"family_id" SMALLINT,
	"family" VARCHAR,
	 PRIMARY KEY ("family_id")
);

CREATE TABLE "tax_order" (
	"order_id" SMALLINT,
	"tax_order" VARCHAR,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "class" (
	"class_id" SMALLINT,
	"class" VARCHAR,
	 PRIMARY KEY ("class_id")
);
