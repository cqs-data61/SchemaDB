DROP DATABASE IF EXISTS "schema800";
CREATE DATABASE "schema800";
USE "schema800";
CREATE TABLE "prop_annotation_type" (
	"annotation_type" VARCHAR,
	 PRIMARY KEY ("annotation_type")
);

CREATE TABLE "prop_relation" (
	"relation" VARCHAR,
	 PRIMARY KEY ("relation")
);

CREATE TABLE "prop_sb" (
	"sb" VARCHAR,
	 PRIMARY KEY ("sb")
);

CREATE TABLE "prop_wb" (
	"wb" VARCHAR,
	 PRIMARY KEY ("wb")
);

CREATE TABLE "prop_gcb" (
	"gcb" VARCHAR,
	 PRIMARY KEY ("gcb")
);

CREATE TABLE "prop_vo" (
	"vo" VARCHAR,
	 PRIMARY KEY ("vo")
);

CREATE TABLE "prop_inpc" (
	"inpc" VARCHAR,
	 PRIMARY KEY ("inpc")
);

CREATE TABLE "prop_inmc" (
	"inmc" VARCHAR,
	 PRIMARY KEY ("inmc")
);

CREATE TABLE "prop_insc" (
	"insc" VARCHAR,
	 PRIMARY KEY ("insc")
);

CREATE TABLE "prop_hst" (
	"hst" VARCHAR,
	 PRIMARY KEY ("hst")
);

CREATE TABLE "prop_ea" (
	"ea" VARCHAR,
	 PRIMARY KEY ("ea")
);

CREATE TABLE "prop_lb" (
	"lb" VARCHAR,
	 PRIMARY KEY ("lb")
);

CREATE TABLE "prop_jg" (
	"jg" VARCHAR,
	 PRIMARY KEY ("jg")
);

CREATE TABLE "prop_jt" (
	"jt" VARCHAR,
	 PRIMARY KEY ("jt")
);

CREATE TABLE "prop_nt" (
	"nt" VARCHAR,
	 PRIMARY KEY ("nt")
);

CREATE TABLE "prop_nfd_qc" (
	"nfd_qc" VARCHAR,
	 PRIMARY KEY ("nfd_qc")
);

CREATE TABLE "prop_nfc_qc" (
	"nfc_qc" VARCHAR,
	 PRIMARY KEY ("nfc_qc")
);

CREATE TABLE "prop_dt" (
	"dt" VARCHAR,
	 PRIMARY KEY ("dt")
);

CREATE TABLE "prop_bpt" (
	"bpt" VARCHAR,
	 PRIMARY KEY ("bpt")
);

CREATE TABLE "prop_bc" (
	"bc" VARCHAR,
	 PRIMARY KEY ("bc")
);

CREATE TABLE "prop_gc" (
	"gc" VARCHAR,
	 PRIMARY KEY ("gc")
);

CREATE TABLE "prop_age" (
	"age" VARCHAR,
	 PRIMARY KEY ("age")
);
