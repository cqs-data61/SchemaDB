DROP DATABASE IF EXISTS "schema180";
CREATE DATABASE "schema180";
USE "schema180";
CREATE TABLE "abp_successor" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"succ_key" CHARACTER VARYING,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE,
	"successor" BIGINT
);

CREATE TABLE "abp_street_descriptor" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"usrn" INTEGER,
	"street_description" CHARACTER VARYING,
	"locality" CHARACTER VARYING,
	"town_name" CHARACTER VARYING,
	"administrative_area" CHARACTER VARYING,
	"language" CHARACTER VARYING,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE
);

CREATE TABLE "abp_street" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"usrn" INTEGER,
	"record_type" SMALLINT,
	"swa_org_ref_naming" SMALLINT,
	"state" SMALLINT,
	"state_date" DATE,
	"street_surface" SMALLINT,
	"street_classification" SMALLINT,
	"version" SMALLINT,
	"street_start_date" DATE,
	"street_end_date" DATE,
	"last_update_date" DATE,
	"record_entry_date" DATE,
	"street_start_x" DOUBLE PRECISION,
	"street_start_y" DOUBLE PRECISION,
	"street_start_lat" DOUBLE PRECISION,
	"street_start_long" DOUBLE PRECISION,
	"street_end_x" DOUBLE PRECISION,
	"street_end_y" DOUBLE PRECISION,
	"street_end_lat" DOUBLE PRECISION,
	"street_end_long" DOUBLE PRECISION,
	"street_tolerance" SMALLINT
);

CREATE TABLE "abp_organisation" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"org_key" CHARACTER VARYING,
	"organisation" CHARACTER VARYING,
	"legal_name" CHARACTER VARYING,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE
);

CREATE TABLE "abp_lpi" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"lpi_key" CHARACTER VARYING,
	"language" CHARACTER VARYING,
	"logical_status" SMALLINT,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE,
	"sao_start_number" SMALLINT,
	"sao_start_suffix" CHARACTER VARYING,
	"sao_end_number" SMALLINT,
	"sao_end_suffix" CHARACTER VARYING,
	"sao_text" CHARACTER VARYING,
	"pao_start_number" SMALLINT,
	"pao_start_suffix" CHARACTER VARYING,
	"pao_end_number" SMALLINT,
	"pao_end_suffix" CHARACTER VARYING,
	"pao_text" CHARACTER VARYING,
	"usrn" INTEGER,
	"usrn_match_indicator" CHARACTER VARYING,
	"area_name" CHARACTER VARYING,
	"level" CHARACTER VARYING,
	"official_flag" CHARACTER VARYING
);

CREATE TABLE "abp_delivery_point" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"udprn" BIGINT,
	"organisation_name" CHARACTER VARYING,
	"department_name" CHARACTER VARYING,
	"sub_building_name" CHARACTER VARYING,
	"building_name" CHARACTER VARYING,
	"building_number" SMALLINT,
	"dependent_thoroughfare" CHARACTER VARYING,
	"thoroughfare" CHARACTER VARYING,
	"double_dependent_locality" CHARACTER VARYING,
	"dependent_locality" CHARACTER VARYING,
	"post_town" CHARACTER VARYING,
	"postcode" CHARACTER VARYING,
	"postcode_type" CHARACTER VARYING,
	"delivery_point_suffix" CHARACTER VARYING,
	"welsh_dependent_thoroughfare" CHARACTER VARYING,
	"welsh_thoroughfare" CHARACTER VARYING,
	"welsh_double_dependent_locality" CHARACTER VARYING,
	"welsh_dependent_locality" CHARACTER VARYING,
	"welsh_post_town" CHARACTER VARYING,
	"po_box_number" CHARACTER VARYING,
	"process_date" DATE,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE
);

CREATE TABLE "abp_crossref" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"xref_key" CHARACTER VARYING,
	"cross_reference" CHARACTER VARYING,
	"version" SMALLINT,
	"source" CHARACTER VARYING,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE
);

CREATE TABLE "abp_classification" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"class_key" CHARACTER VARYING,
	"classification_code" CHARACTER VARYING,
	"class_scheme" CHARACTER VARYING,
	"scheme_version" DOUBLE PRECISION,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE
);

CREATE TABLE "abp_blpu" (
	"record_identifier" SMALLINT,
	"change_type" CHARACTER VARYING,
	"pro_order" BIGINT,
	"uprn" BIGINT,
	"logical_status" SMALLINT,
	"blpu_state" SMALLINT,
	"blpu_state_date" DATE,
	"parent_uprn" BIGINT,
	"x_coordinate" DOUBLE PRECISION,
	"y_coordinate" DOUBLE PRECISION,
	"latitude" DOUBLE PRECISION,
	"longitude" DOUBLE PRECISION,
	"rpc" SMALLINT,
	"local_custodian_code" SMALLINT,
	"country" CHARACTER VARYING,
	"start_date" DATE,
	"end_date" DATE,
	"last_update_date" DATE,
	"entry_date" DATE,
	"addressbase_postal" CHARACTER VARYING,
	"postcode_locator" CHARACTER VARYING,
	"multi_occ_count" SMALLINT
);
