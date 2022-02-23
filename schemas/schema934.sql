DROP DATABASE IF EXISTS "schema934";
CREATE DATABASE "schema934";
USE "schema934";
CREATE TABLE "image_viewer_snapshot" (
	"id" TEXT,
	"dataset_id" TEXT,
	"snapshot" TEXT,
	"annotation_ids" LONGTEXT,
	"ion_formulas" LONGTEXT,
	"db_ids" LONGTEXT,
	"version" INTEGER,
	"user_id" VARCHAR,
	"created_dt" TIMESTAMP,
	 PRIMARY KEY ("id","dataset_id")
);

CREATE TABLE "ion" (
	"id" SERIAL,
	"ion" TEXT,
	"formula" TEXT,
	"chem_mod" TEXT,
	"neutral_loss" TEXT,
	"adduct" TEXT,
	"ion_formula" TEXT,
	"charge" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project" (
	"id" VARCHAR,
	"name" TEXT,
	"url_slug" TEXT,
	"is_public" BOOLEAN,
	"created_dt" TIMESTAMP,
	"project_description" TEXT,
	"review_token" TEXT,
	"review_token_created_dt" TIMESTAMP,
	"publish_notifications_sent" INTEGER,
	"publication_status" TEXT,
	"published_dt" TIMESTAMP,
	"external_links" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group" (
	"id" VARCHAR,
	"name" TEXT,
	"short_name" TEXT,
	"url_slug" TEXT,
	"group_description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "molecular_db" (
	"id" SERIAL,
	"name" TEXT,
	"version" TEXT,
	"created_dt" TIMESTAMP,
	"molecule_link_template" TEXT,
	"description" TEXT,
	"full_name" TEXT,
	"link" TEXT,
	"citation" TEXT,
	"is_public" BOOLEAN,
	"archived" BOOLEAN,
	"targeted" BOOLEAN,
	"group_id" VARCHAR,
	"default" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_a18f5f7d6cc662006d9c849ea1f" FOREIGN KEY ("group_id") REFERENCES "group" ("id")
);

CREATE TABLE "coloc_job" (
	"id" VARCHAR,
	"ds_id" TEXT,
	"moldb_id" INTEGER,
	"fdr" NUMERIC,
	"algorithm" TEXT,
	"start" TIMESTAMP,
	"finish" TIMESTAMP,
	"error" TEXT,
	"sample_ion_ids" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_b0adf5ffef6529f187f48231e38" FOREIGN KEY ("moldb_id") REFERENCES "molecular_db" ("id")
);

CREATE TABLE "coloc_annotation" (
	"coloc_job_id" VARCHAR,
	"ion_id" INTEGER,
	"coloc_ion_ids" INTEGER,
	"coloc_coeffs" REAL,
	 PRIMARY KEY ("coloc_job_id","ion_id"),
	 CONSTRAINT "FK_09673424d3aceab89f931b9f20d" FOREIGN KEY ("coloc_job_id") REFERENCES "coloc_job" ("id")
);

CREATE TABLE "molecule" (
	"id" SERIAL,
	"mol_id" TEXT,
	"mol_name" TEXT,
	"formula" TEXT,
	"inchi" TEXT,
	"moldb_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_01280507c3bd02500e2861fb279" FOREIGN KEY ("moldb_id") REFERENCES "molecular_db" ("id")
);

CREATE TABLE "credentials" (
	"id" VARCHAR,
	"hash" TEXT,
	"google_id" TEXT,
	"api_key" TEXT,
	"api_key_last_updated" TIMESTAMP,
	"email_verification_token" TEXT,
	"email_verification_token_expires" TIMESTAMP,
	"email_verified" BOOLEAN,
	"reset_password_token" TEXT,
	"reset_password_token_expires" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" VARCHAR,
	"name" TEXT,
	"email" TEXT,
	"not_verified_email" TEXT,
	"role" TEXT,
	"credentials_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_1b5eb1327a74d679537bdc1fa5b" FOREIGN KEY ("credentials_id") REFERENCES "credentials" ("id")
);

CREATE TABLE "dataset" (
	"id" TEXT,
	"id" TEXT,
	"user_id" VARCHAR,
	"description" TEXT,
	"group_id" VARCHAR,
	"group_approved" BOOLEAN,
	"pi_name" TEXT,
	"pi_email" TEXT,
	"external_links" LONGTEXT,
	"name" TEXT,
	"input_path" TEXT,
	"metadata" LONGTEXT,
	"config" LONGTEXT,
	"upload_dt" TIMESTAMP,
	"status" TEXT,
	"status_update_dt" TIMESTAMP,
	"optical_image" TEXT,
	"transform" DOUBLE PRECISION,
	"is_public" BOOLEAN,
	"acq_geometry" LONGTEXT,
	"ion_img_storage_type" TEXT,
	"thumbnail" TEXT,
	"thumbnail_url" TEXT,
	"ion_thumbnail" TEXT,
	"ion_thumbnail_url" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_d890658f7d5c8961e0a0cbdbe41" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "FK_9e18e306ae85131c312e538ca1d" FOREIGN KEY ("group_id") REFERENCES "group" ("id")
);

CREATE TABLE "perf_profile" (
	"id" SERIAL,
	"task_type" TEXT,
	"ds_id" TEXT,
	"start" TIMESTAMP,
	"finish" TIMESTAMP,
	"extra_data" LONGTEXT,
	"logs" TEXT,
	"error" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_cea05d4819bacc949a4236b4a8d" FOREIGN KEY ("ds_id") REFERENCES "dataset" ("id")
);

CREATE TABLE "perf_profile_entry" (
	"id" SERIAL,
	"profile_id" INTEGER,
	"sequence" INTEGER,
	"start" TIMESTAMP,
	"finish" TIMESTAMP,
	"name" TEXT,
	"extra_data" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_67cf1a415a181173f111690c70a" FOREIGN KEY ("profile_id") REFERENCES "perf_profile" ("id")
);

CREATE TABLE "job" (
	"id" SERIAL,
	"moldb_id" INTEGER,
	"ds_id" TEXT,
	"status" TEXT,
	"start" TIMESTAMP,
	"finish" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_07f17ed55cabe0ef556bc0e0c93" FOREIGN KEY ("moldb_id") REFERENCES "molecular_db" ("id"),
	 CONSTRAINT "FK_f6baae98b3a2436b6f98318d5d0" FOREIGN KEY ("ds_id") REFERENCES "dataset" ("id")
);

CREATE TABLE "annotation" (
	"id" SERIAL,
	"job_id" INTEGER,
	"formula" TEXT,
	"chem_mod" TEXT,
	"neutral_loss" TEXT,
	"adduct" TEXT,
	"msm" REAL,
	"fdr" REAL,
	"stats" LONGTEXT,
	"iso_image_ids" TEXT,
	"off_sample" LONGTEXT,
	"ion_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_bfed30991918671d59fc1f5d5e4" FOREIGN KEY ("job_id") REFERENCES "job" ("id"),
	 CONSTRAINT "FK_665acc421d80b12a4738e4a175d" FOREIGN KEY ("ion_id") REFERENCES "ion" ("id")
);

CREATE TABLE "optical_image" (
	"id" TEXT,
	"ds_id" TEXT,
	"type" TEXT,
	"zoom" REAL,
	"width" INTEGER,
	"height" INTEGER,
	"transform" REAL,
	"url" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_124906daa616c8e1b88645baef0" FOREIGN KEY ("ds_id") REFERENCES "dataset" ("id")
);

CREATE TABLE "dataset_project" (
	"dataset_id" TEXT,
	"project_id" VARCHAR,
	"approved" BOOLEAN,
	 PRIMARY KEY ("dataset_id","project_id"),
	 CONSTRAINT "FK_8bb698a02c945dc2a67a2be2e35" FOREIGN KEY ("dataset_id") REFERENCES "dataset" ("id"),
	 CONSTRAINT "FK_e192464449c2ac136fd4f00b439" FOREIGN KEY ("project_id") REFERENCES "project" ("id")
);

CREATE TABLE "user_project" (
	"user_id" VARCHAR,
	"project_id" VARCHAR,
	"role" TEXT,
	 PRIMARY KEY ("user_id","project_id"),
	 CONSTRAINT "FK_c103849dd5047c315a8bf3d0a71" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "FK_d99bb7781b0c98876331d19387c" FOREIGN KEY ("project_id") REFERENCES "project" ("id")
);

CREATE TABLE "user_group" (
	"user_id" VARCHAR,
	"group_id" VARCHAR,
	"role" TEXT,
	"primary" BOOLEAN,
	 PRIMARY KEY ("user_id","group_id"),
	 CONSTRAINT "FK_3c213a8a5e3ac56e0882320af43" FOREIGN KEY ("group_id") REFERENCES "group" ("id"),
	 CONSTRAINT "FK_24850e25a096ba62e57cf5caf45" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
