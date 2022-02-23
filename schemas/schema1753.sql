DROP DATABASE IF EXISTS "schema1753";
CREATE DATABASE "schema1753";
USE "schema1753";
CREATE TABLE "guid" (
	"id" INTEGER,
	"guid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "benchmarks_type" (
	"id" SERIAL,
	"name_type" VARCHAR,
	"del" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dashboard" (
	"id" SERIAL,
	"benchmark_id" INTEGER,
	"parent_dashboard_id" INTEGER,
	"dash_group" INTEGER,
	"dash_name" VARCHAR,
	"sortprior" INTEGER,
	"active" INTEGER,
	"isempty" INTEGER,
	"url" VARCHAR,
	"url_title" VARCHAR,
	"description" VARCHAR,
	"benchmark_type_id" INTEGER,
	"reference_value" INTEGER,
	"reference_type" INTEGER,
	"measure" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "benchmark" (
	"id" SERIAL,
	"name" VARCHAR,
	"shname" VARCHAR,
	"measure" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "doc_type" (
	"id" INTEGER,
	"docum" VARCHAR
);

CREATE TABLE "pers_olimpic" (
	"id_pers_olimpic" INTEGER,
	"id_pers" INTEGER,
	"id_olimpic" INTEGER,
	"comp" VARCHAR,
	"is_winner" INTEGER,
	 PRIMARY KEY ("id_pers_olimpic")
);

CREATE TABLE "olimpic" (
	"id_olimpic" INTEGER,
	"olimpic" VARCHAR,
	 PRIMARY KEY ("id_olimpic")
);

CREATE TABLE "pers_edu" (
	"id_pers_edu" INTEGER,
	"yr" INTEGER,
	"id_edu_doc" INTEGER,
	"num" VARCHAR,
	"english" INTEGER,
	"id_pers" INTEGER,
	 PRIMARY KEY ("id_pers_edu")
);

CREATE TABLE "edu_doc" (
	"id_edu_doc" INTEGER,
	"edu_doc" VARCHAR,
	 PRIMARY KEY ("id_edu_doc")
);

CREATE TABLE "pers_sport" (
	"id_pers_sport" INTEGER,
	"id_pers" INTEGER,
	"id_sport" INTEGER,
	"data" VARCHAR,
	 PRIMARY KEY ("id_pers_sport")
);

CREATE TABLE "sport" (
	"id_sport" INTEGER,
	"sport" VARCHAR,
	 PRIMARY KEY ("id_sport")
);

CREATE TABLE "pers_tvorch" (
	"id_pers_tvorch" INTEGER,
	"id_pers" INTEGER,
	"id_tvorch" INTEGER,
	"data" VARCHAR,
	 PRIMARY KEY ("id_pers_tvorch")
);

CREATE TABLE "tvorch" (
	"id_tvorch" INTEGER,
	"tvorch" VARCHAR,
	 PRIMARY KEY ("id_tvorch")
);

CREATE TABLE "pers_lgot" (
	"id_pers_lgot" INTEGER,
	"id_pers" INTEGER,
	"id_lgot" INTEGER,
	 PRIMARY KEY ("id_pers_lgot")
);

CREATE TABLE "lgot" (
	"id_lgot" INTEGER,
	"lgot" VARCHAR,
	 PRIMARY KEY ("id_lgot")
);

CREATE TABLE "users_permissions" (
	"user_id" INTEGER,
	"permission_id" INTEGER,
	 PRIMARY KEY ("permission_id","user_id")
);

CREATE TABLE "permissions" (
	"id" SERIAL,
	"name" VARCHAR,
	"visible_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "grade_spec" (
	"id_spec" INTEGER,
	"id_pers" INTEGER,
	"id_spec_list" INTEGER,
	"form" INTEGER,
	"n_zach" VARCHAR,
	"budget" INTEGER,
	"np" VARCHAR,
	"gv" INTEGER,
	 PRIMARY KEY ("id_spec")
);

CREATE TABLE "pers_abitur_spec" (
	"id_pers_abitur_spec" INTEGER,
	"id_pers" INTEGER,
	"id_abitur_spec" INTEGER,
	"priority" INTEGER,
	 PRIMARY KEY ("id_pers_abitur_spec")
);

CREATE TABLE "pers_contact" (
	"id_pers_contact" INTEGER,
	"id_pers" INTEGER,
	"id_contact" INTEGER,
	 PRIMARY KEY ("id_pers_contact")
);

CREATE TABLE "parent_data" (
	"id_parent_data" INTEGER,
	"fam" VARCHAR,
	"im" VARCHAR,
	"ot" VARCHAR,
	"w" INTEGER,
	"id_pers" INTEGER,
	"phone" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id_parent_data")
);

CREATE TABLE "udl" (
	"id_udl" INTEGER,
	"id_pers" INTEGER,
	"id_doctype" INTEGER,
	"ser" VARCHAR,
	"num" VARCHAR,
	"docdate" DATE,
	"org" VARCHAR,
	 PRIMARY KEY ("id_udl")
);

CREATE TABLE "adres" (
	"id_adres" INTEGER,
	"id_pers" INTEGER,
	"adres_guid" INTEGER,
	 PRIMARY KEY ("id_adres")
);

CREATE TABLE "abitur_meta" (
	"id_abitur_meta" INTEGER,
	"id_pers" INTEGER,
	"budget" INTEGER,
	"first" INTEGER,
	"obsh" INTEGER,
	"aim" INTEGER,
	"form" INTEGER,
	 PRIMARY KEY ("id_abitur_meta")
);

CREATE TABLE "pers" (
	"id_pers" INTEGER,
	"fam" VARCHAR,
	"im" VARCHAR,
	"ot" VARCHAR,
	"dr" DATE,
	"mr" VARCHAR,
	"w" INTEGER,
	"id_org" INTEGER,
	 PRIMARY KEY ("id_pers")
);

CREATE TABLE "education_org_meta" (
	"id" INTEGER,
	"name" VARCHAR,
	"lat" VARCHAR,
	"lon" VARCHAR,
	"link" VARCHAR,
	"chk" INTEGER,
	"director" VARCHAR,
	"addres" TEXT,
	"phone" VARCHAR,
	"email" VARCHAR,
	"site" VARCHAR,
	"fullname" VARCHAR,
	"id_group" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contact" (
	"id_contact" INTEGER,
	"id_contact_type" INTEGER,
	"contact_val" VARCHAR,
	 PRIMARY KEY ("id_contact")
);

CREATE TABLE "contact_type" (
	"id_contact_type" INTEGER,
	"contact_type_name" VARCHAR,
	 PRIMARY KEY ("id_contact_type")
);

CREATE TABLE "spec_list" (
	"id_spec_list" INTEGER,
	"code" VARCHAR,
	"spec_list" VARCHAR,
	 PRIMARY KEY ("id_spec_list")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "doctrine_migration_versions" (
	"version" VARCHAR,
	"executed_at" TIMESTAMP,
	"execution_time" INTEGER,
	 PRIMARY KEY ("version")
);
