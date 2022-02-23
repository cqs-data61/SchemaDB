DROP DATABASE IF EXISTS "schema1029";
CREATE DATABASE "schema1029";
USE "schema1029";
CREATE TABLE "user" (
	"id" INT,
	"emailaddress" VARCHAR,
	"password" VARCHAR,
	"roles" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "release" (
	"id" INT,
	"timestamp" TIMESTAMP,
	"contenttimestamp" TIMESTAMP,
	"name" VARCHAR,
	"display" VARCHAR,
	"brief" VARCHAR,
	"definition" TINYTEXT,
	"graphicsbackground" VARCHAR,
	"publisher" VARCHAR,
	"edition" VARCHAR,
	"version" VARCHAR,
	"license" VARCHAR,
	"readme" TEXT,
	"privacy" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quantity" (
	"id" INT,
	"name" ENUM,
	"display" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "units" (
	"id" INT,
	"quantity_id" INT,
	"factor" VARCHAR,
	"symbol" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_units_quantity1" FOREIGN KEY ("quantity_id") REFERENCES "quantity" ("id")
);

CREATE TABLE "linkmeta" (
	"id" INT,
	"timestamp" TIMESTAMP,
	"domain" VARCHAR,
	"display" VARCHAR,
	"definition" TINYTEXT,
	"features" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "featuremeta" (
	"id" INT,
	"name" VARCHAR,
	"quantity" ENUM,
	"definition" TINYTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "atlascollection" (
	"id" INT,
	"timestamp" TIMESTAMP,
	"name" VARCHAR,
	"display" VARCHAR,
	"definition" TINYTEXT,
	"enddate" TINYINT,
	"progenitor" TINYINT,
	"conservationstatus" TINYINT,
	"audiosample" TINYINT,
	"spreading" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "atlasobject" (
	"id" INT,
	"collection_id" INT,
	"state" ENUM,
	"timestamp" TIMESTAMP,
	"name" VARCHAR,
	"display" VARCHAR,
	"definition" TEXT,
	"description" TEXT,
	"sampletitle" VARCHAR,
	"samplename" VARCHAR,
	"waveformname" VARCHAR,
	"startdatevalue" DOUBLE,
	"startdatemask" INT,
	"enddatevalue" DOUBLE,
	"enddatemask" INT,
	"progenitor" VARCHAR,
	"conservation" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_ATLASOBJECT_COLLECTION_ID" FOREIGN KEY ("collection_id") REFERENCES "atlascollection" ("id")
);

CREATE TABLE "release_atlasitem" (
	"release_id" INT,
	"objects_id" INT,
	 PRIMARY KEY ("release_id","objects_id"),
	 CONSTRAINT "fk_release_atlasobject_atlasobject1" FOREIGN KEY ("objects_id") REFERENCES "atlasobject" ("id"),
	 CONSTRAINT "fk_release_atlasobject_release1" FOREIGN KEY ("release_id") REFERENCES "release" ("id")
);

CREATE TABLE "feature" (
	"id" INT,
	"atlasobject_id" INT,
	"meta_id" INT,
	"features_order" INT,
	"value" DOUBLE,
	"maximum" DOUBLE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_FEATURE_ATLASOBJECT_ID" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_taxonomy" (
	"id" INT,
	"atlasobject_id" INT,
	"taxonomy_order" INT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_fact_object11" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_spreading" (
	"id" INT,
	"atlasobject_id" INT,
	"spreading_order" INT,
	"name" VARCHAR,
	"area" INT,
	"less" VARCHAR,
	"lessarea" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_region_atlasobject_id" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_related" (
	"atlasobject_id" INT,
	"related_order" INT,
	"related" VARCHAR,
	 PRIMARY KEY ("atlasobject_id","related"),
	 CONSTRAINT "FK_ATLASOBJECT_RELATED_NAME" FOREIGN KEY ("related") REFERENCES "atlasobject" ("name"),
	 CONSTRAINT "FK_ATLASOBJECT_RELATED_ID" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_links" (
	"id" INT,
	"atlasobject_id" INT,
	"links_order" INT,
	"url" TINYTEXT,
	"domain" VARCHAR,
	"display" VARCHAR,
	"definition" TINYTEXT,
	"features" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_link_atlasobject_id" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_images" (
	"id" INT,
	"atlasobject_id" INT,
	"imagekey" VARCHAR,
	"uploaddate" DATETIME,
	"source" TEXT,
	"caption" TEXT,
	"filename" VARCHAR,
	"filesize" INT,
	"width" SMALLINT,
	"height" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_ATLASOBJECT_IMAGES_ATLASOBJECT_ID" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_facts" (
	"id" INT,
	"atlasobject_id" INT,
	"facts_key" VARCHAR,
	"facts" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_fact_object1" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlasobject_aliases" (
	"id" INT,
	"atlasobject_id" INT,
	"aliases_order" INT,
	"aliases" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_alias_objec_id" FOREIGN KEY ("atlasobject_id") REFERENCES "atlasobject" ("id")
);

CREATE TABLE "atlascollection_taxonomymeta" (
	"id" INT,
	"atlascollection_id" INT,
	"taxonomymeta_order" INT,
	"name" VARCHAR,
	"values" TINYTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_taxon_meta_atlascollection1" FOREIGN KEY ("atlascollection_id") REFERENCES "atlascollection" ("id")
);

CREATE TABLE "atlascollection_featuremeta" (
	"atlascollection_id" INT,
	"featuresmeta_id" INT,
	"featuresmeta_order" INT,
	 PRIMARY KEY ("atlascollection_id","featuresmeta_id"),
	 CONSTRAINT "fk_atlascollection_featuremeta_atlascollection1" FOREIGN KEY ("atlascollection_id") REFERENCES "atlascollection" ("id")
);

CREATE TABLE "atlascollection_descriptionmeta" (
	"id" INT,
	"atlascollection_id" INT,
	"descriptionmeta_order" INT,
	"name" VARCHAR,
	"definition" TINYTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_atlascollection_descriptionmeta_atlascollection1" FOREIGN KEY ("atlascollection_id") REFERENCES "atlascollection" ("id")
);

CREATE TABLE "androidapp" (
	"id" INT,
	"release_id" INT,
	"timestamp" TIMESTAMP,
	"packagename" VARCHAR,
	"versioncode" INT,
	"gitrepository" TINYTEXT,
	"gitusername" VARCHAR,
	"gitpassword" VARCHAR,
	 PRIMARY KEY ("id")
);
