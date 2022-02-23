DROP DATABASE IF EXISTS "schema1371";
CREATE DATABASE "schema1371";
USE "schema1371";
CREATE TABLE "kontext_conc_persistence" (
	"id" VARCHAR,
	"data" TEXT,
	"created" TIMESTAMP,
	"num_access" INT,
	"last_access" TIMESTAMP,
	 PRIMARY KEY ("id","created")
);

CREATE TABLE "kontext_simple_query_default_attrs" (
	"corpus_name" VARCHAR,
	"pos_attr" VARCHAR,
	 PRIMARY KEY ("corpus_name","pos_attr")
);

CREATE TABLE "kontext_keyword" (
	"id" VARCHAR,
	"label_cs" VARCHAR,
	"label_en" VARCHAR,
	"color" VARCHAR,
	"display_order" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kontext_ttdesc" (
	"id" INT,
	"text_cs" TEXT,
	"text_en" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kontext_article" (
	"id" INTEGER,
	"entry" TEXT
);

CREATE TABLE "kontext_corpus" (
	"id" INT,
	"name" VARCHAR,
	"size" BIGINT,
	"group_name" VARCHAR,
	"version" INT,
	"created" VARCHAR,
	"updated" VARCHAR,
	"active" INT,
	"web" VARCHAR,
	"sentence_struct" VARCHAR,
	"tagset" VARCHAR,
	"collator_locale" VARCHAR,
	"speech_segment_struct" VARCHAR,
	"speech_segment_attr" VARCHAR,
	"speaker_id_struct" VARCHAR,
	"speaker_id_attr" VARCHAR,
	"speech_overlap_struct" VARCHAR,
	"speech_overlap_attr" VARCHAR,
	"speech_overlap_val" VARCHAR,
	"use_safe_font" INT,
	"requestable" INT,
	"text_types_db" VARCHAR,
	"bib_label_struct" VARCHAR,
	"bib_label_attr" VARCHAR,
	"bib_id_struct" VARCHAR,
	"bib_id_attr" VARCHAR,
	"bib_group_duplicates" INT,
	"featured" INT,
	"ttdesc_id" INT,
	"description_cs" TEXT,
	"description_en" TEXT,
	"default_virt_keyboard" VARCHAR,
	"default_view_opts" TEXT
);

CREATE TABLE "corpus_structure" (
	"corpus_name" VARCHAR,
	"name" VARCHAR,
	"type" ENUM,
	"displaytag" ENUM,
	"displaybegin" VARCHAR,
	 PRIMARY KEY ("corpus_name","name"),
	 CONSTRAINT "corpus_structure_corpus_name_fkey" FOREIGN KEY ("corpus_name") REFERENCES "kontext_corpus" ("name")
);

CREATE TABLE "corpus_structattr" (
	"corpus_name" VARCHAR,
	"structure_name" VARCHAR,
	"name" VARCHAR,
	"type" ENUM,
	"locale" VARCHAR,
	"multivalue" ENUM,
	"multisep" VARCHAR,
	"maxlistsize" INT,
	"defaultvalue" VARCHAR,
	"attrdoc" VARCHAR,
	"attrdoclabel" VARCHAR,
	"rnumeric" ENUM,
	"subcorpattrs_idx" INT,
	"freqttattrs_idx" INT,
	 PRIMARY KEY ("corpus_name","structure_name","name"),
	 CONSTRAINT "corpus_structattr_structure_name_fkey" FOREIGN KEY ("corpus_name","structure_name") REFERENCES "corpus_structure" ("corpus_name","name"),
	 CONSTRAINT "corpus_structattr_corpus_name_fkey" FOREIGN KEY ("corpus_name") REFERENCES "kontext_corpus" ("name")
);

CREATE TABLE "kontext_interval_attr" (
	"corpus_name" VARCHAR,
	"interval_struct" VARCHAR,
	"interval_attr" VARCHAR,
	"widget" VARCHAR,
	 PRIMARY KEY ("corpus_name","interval_attr","interval_struct"),
	 CONSTRAINT "kontext_interval_attr_interval_attr_fkey" FOREIGN KEY ("corpus_name","interval_struct","interval_attr") REFERENCES "corpus_structattr" ("corpus_name","structure_name","name")
);

CREATE TABLE "corpus_posattr" (
	"corpus_name" VARCHAR,
	"name" VARCHAR,
	"position" INT,
	"type" ENUM,
	"label" VARCHAR,
	"dynamic" VARCHAR,
	"dynlib" VARCHAR,
	"arg1" VARCHAR,
	"arg2" VARCHAR,
	"fromattr" VARCHAR,
	"funtype" ENUM,
	"dyntype" ENUM,
	"transquery" ENUM,
	"mapto" VARCHAR,
	"multivalue" ENUM,
	"multisep" VARCHAR,
	 PRIMARY KEY ("corpus_name","name"),
	 CONSTRAINT "corpus_posattr_corpus_name_fkey" FOREIGN KEY ("corpus_name") REFERENCES "kontext_corpus" ("name"),
	 CONSTRAINT "corpus_posattr_fromattr_fkey" FOREIGN KEY ("corpus_name","fromattr") REFERENCES "corpus_posattr" ("corpus_name","name"),
	 CONSTRAINT "corpus_posattr_mapto_fkey" FOREIGN KEY ("corpus_name","mapto") REFERENCES "corpus_posattr" ("corpus_name","name")
);

CREATE TABLE "registry_conf" (
	"corpus_name" VARCHAR,
	"name" VARCHAR,
	"created" VARCHAR,
	"updated" VARCHAR,
	"path" VARCHAR,
	"vertical" VARCHAR,
	"language" VARCHAR,
	"locale" VARCHAR,
	"rencoding" VARCHAR,
	"info" TEXT,
	"shortref" VARCHAR,
	"freqttattrs" TEXT,
	"tagsetdoc" VARCHAR,
	"wposlist" TEXT,
	"docstructure" VARCHAR,
	"wsdef" TEXT,
	"wsattr" VARCHAR,
	"wsbase" TEXT,
	"wsthes" TEXT,
	"alignstruct" TEXT,
	"aligndef" TEXT,
	 PRIMARY KEY ("corpus_name"),
	 CONSTRAINT "registry_conf_wsattr_id_fkey" FOREIGN KEY ("corpus_name","wsattr") REFERENCES "corpus_posattr" ("corpus_name","name"),
	 CONSTRAINT "registry_conf_docstructure_fkey" FOREIGN KEY ("corpus_name","docstructure") REFERENCES "corpus_structure" ("corpus_name","name")
);

CREATE TABLE "kontext_corpus_taghelper" (
	"corpus_name" VARCHAR,
	"pos_attr" VARCHAR,
	"feat_attr" VARCHAR,
	"tagset_type" ENUM,
	"tagset_name" VARCHAR,
	"widget_enabled" TINYINT,
	"doc_url_local" VARCHAR,
	"doc_url_en" VARCHAR,
	 PRIMARY KEY ("corpus_name","feat_attr"),
	 CONSTRAINT "kontext_corpus_taghelper_ibfk_1" FOREIGN KEY ("corpus_name","feat_attr") REFERENCES "corpus_posattr" ("corpus_name","name")
);

CREATE TABLE "kontext_tckc_corpus" (
	"corpus_name" VARCHAR,
	"provider" VARCHAR,
	"type" VARCHAR,
	"display_order" INT,
	"is_kwic_view" INT,
	 PRIMARY KEY ("corpus_name","provider","type"),
	 CONSTRAINT "kontext_tckc_corpus_corpus_name_fkey" FOREIGN KEY ("corpus_name") REFERENCES "kontext_corpus" ("name")
);

CREATE TABLE "kontext_keyword_corpus" (
	"corpus_name" VARCHAR,
	"keyword_id" VARCHAR,
	 PRIMARY KEY ("corpus_name","keyword_id"),
	 CONSTRAINT "kontext_keyword_corpus_corpus_name_fkey" FOREIGN KEY ("corpus_name") REFERENCES "kontext_corpus" ("name"),
	 CONSTRAINT "kontext_keyword_corpus_keyword_id_fkey" FOREIGN KEY ("keyword_id") REFERENCES "kontext_keyword" ("id")
);

CREATE TABLE "kontext_corpus_article" (
	"article_id" INT,
	"corpus_name" VARCHAR,
	"role" ENUM,
	 PRIMARY KEY ("article_id","corpus_name"),
	 CONSTRAINT "kontext_corpus_article_corpus_name_fkey" FOREIGN KEY ("corpus_name") REFERENCES "kontext_corpus" ("name"),
	 CONSTRAINT "kontext_corpus_article_article_id_fkey" FOREIGN KEY ("article_id") REFERENCES "kontext_article" ("id")
);
