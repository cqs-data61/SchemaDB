DROP DATABASE IF EXISTS "schema208";
CREATE DATABASE "schema208";
USE "schema208";
CREATE TABLE "cost_impact_analysis_project" (
	"id" SERIAL,
	"project_name" VARCHAR,
	"project_desc" VARCHAR,
	"project_type" HUDUPKG.COST_IMPACT_PROJ_TYPE,
	"created_by" INTEGER,
	"modified_by" INTEGER,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cost_impact_analysis_scenario" (
	"id" SERIAL,
	"project_id" INTEGER,
	"scenario_name" VARCHAR,
	"scenario_ref" VARCHAR,
	"scenario_desc" VARCHAR,
	"baseline_year" INTEGER,
	"phases" INTEGER,
	"created_by" INTEGER,
	"modified_by" INTEGER,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_scenario_project_id" FOREIGN KEY ("project_id") REFERENCES "cost_impact_analysis_project" ("id")
);

CREATE TABLE "cost_impact_analysis_application" (
	"id" SERIAL,
	"project_id" INTEGER,
	"app_name" VARCHAR,
	"app_ref" VARCHAR,
	"app_desc" VARCHAR,
	"phases" INTEGER,
	"created_by" INTEGER,
	"modified_by" INTEGER,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_application_project_id" FOREIGN KEY ("project_id") REFERENCES "cost_impact_analysis_project" ("id")
);

CREATE TABLE "cost_impact_analysis_phase" (
	"id" SERIAL,
	"application_id" INTEGER,
	"scenario_id" INTEGER,
	"phase_number" INTEGER,
	"phase_name" VARCHAR,
	"baseline_year" INTEGER,
	"category" VARCHAR,
	"lad19cd" CHARACTER VARYING,
	"ccg19cdh" CHARACTER VARYING,
	"longitude" DOUBLE PRECISION,
	"latitude" DOUBLE PRECISION,
	"geom" COREAPP.GEOMETRY,
	"created_by" INTEGER,
	"modified_by" INTEGER,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_phase_application_id" FOREIGN KEY ("application_id") REFERENCES "cost_impact_analysis_application" ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_phase_scenario_id" FOREIGN KEY ("scenario_id") REFERENCES "cost_impact_analysis_scenario" ("id")
);

CREATE TABLE "cost_impact_analysis_data_type_config" (
	"data_cd" VARCHAR,
	"data_nm" VARCHAR,
	"editable" BOOLEAN,
	"hidden" BOOLEAN,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("data_cd")
);

CREATE TABLE "cost_impact_analysis_data" (
	"id" SERIAL,
	"scenario_id" INTEGER,
	"data_cd" VARCHAR,
	"manual" BOOLEAN,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_data_id" FOREIGN KEY ("scenario_id") REFERENCES "cost_impact_analysis_scenario" ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_data_scenario_id" FOREIGN KEY ("data_cd") REFERENCES "cost_impact_analysis_data_type_config" ("data_cd")
);

CREATE TABLE "cost_impact_analysis_assumption_type_config" (
	"assumption_cd" VARCHAR,
	"assumption_nm" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("assumption_cd")
);

CREATE TABLE "cost_impact_analysis_assumption_source_config" (
	"source_cd" VARCHAR,
	"source_nm" VARCHAR,
	"assumption_cd" VARCHAR,
	"disabled" BOOLEAN,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	"is_default" BOOLEAN,
	"data_types" VARCHAR,
	 PRIMARY KEY ("source_cd"),
	 CONSTRAINT "fk_cost_impact_analysis_assumption_source_config_assumption_cd" FOREIGN KEY ("assumption_cd") REFERENCES "cost_impact_analysis_assumption_type_config" ("assumption_cd")
);

CREATE TABLE "cost_impact_analysis_scenario_assumptions" (
	"id" SERIAL,
	"scenario_id" INTEGER,
	"assumption_cd" VARCHAR,
	"source_cd" VARCHAR,
	"manual" BOOLEAN,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_scenario_assumptions_assumption_cd" FOREIGN KEY ("assumption_cd") REFERENCES "cost_impact_analysis_assumption_type_config" ("assumption_cd"),
	 CONSTRAINT "fk_cost_impact_scenario_assumptions_scenario_id" FOREIGN KEY ("scenario_id") REFERENCES "cost_impact_analysis_scenario" ("id"),
	 CONSTRAINT "fk_cost_impact_scenario_assumptions_source_cd" FOREIGN KEY ("source_cd") REFERENCES "cost_impact_analysis_assumption_source_config" ("source_cd")
);

CREATE TABLE "cost_impact_analysis_assumptions_md" (
	"id" SERIAL,
	"source_cd" VARCHAR,
	"assumption_cd" VARCHAR,
	"criteria" LONGTEXT,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_assumptions_md_source_cd" FOREIGN KEY ("source_cd") REFERENCES "cost_impact_analysis_assumption_source_config" ("source_cd"),
	 CONSTRAINT "fk_cost_impact_assumptions_md_assumption_cd" FOREIGN KEY ("assumption_cd") REFERENCES "cost_impact_analysis_assumption_type_config" ("assumption_cd")
);

CREATE TABLE "cost_impact_analysis_assumptions_val" (
	"id" SERIAL,
	"assumption_id" INTEGER,
	"value_type" VARCHAR,
	"factors" LONGTEXT,
	"value" LONGTEXT,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_assumptions_val_assumption_id" FOREIGN KEY ("assumption_id") REFERENCES "cost_impact_analysis_assumptions_md" ("id")
);

CREATE TABLE "cost_impact_analysis_stage_config" (
	"stage_cd" VARCHAR,
	"stage_nm" VARCHAR,
	"icon" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("stage_cd")
);

CREATE TABLE "cost_impact_analysis_section_config" (
	"section_cd" VARCHAR,
	"section_nm" VARCHAR,
	"stage_cd" VARCHAR,
	"display_order" INTEGER,
	"icon" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("section_cd"),
	 CONSTRAINT "fk_cost_impact_analysis_section_config_stage_cd" FOREIGN KEY ("stage_cd") REFERENCES "cost_impact_analysis_stage_config" ("stage_cd")
);

CREATE TABLE "cost_impact_analysis_section_to_navbar" (
	"id" SERIAL,
	"section_cd" VARCHAR,
	"display_order" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"range" BOOLEAN,
	"include_all" BOOLEAN,
	"target_data_cd" VARCHAR,
	"target_col" VARCHAR,
	"choices" LONGTEXT,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_section_to_navbar_section_cd" FOREIGN KEY ("section_cd") REFERENCES "cost_impact_analysis_section_config" ("section_cd")
);

CREATE TABLE "cost_impact_analysis_section_to_assumption" (
	"id" SERIAL,
	"section_cd" VARCHAR,
	"assumption_cd" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_section_to_assumption_section_cd" FOREIGN KEY ("section_cd") REFERENCES "cost_impact_analysis_section_config" ("section_cd"),
	 CONSTRAINT "fk_cost_impact_analysis_section_to_assumption_assumption_cd" FOREIGN KEY ("assumption_cd") REFERENCES "cost_impact_analysis_assumption_type_config" ("assumption_cd")
);

CREATE TABLE "cost_impact_analysis_section_to_data_type" (
	"view_cd" VARCHAR,
	"section_cd" VARCHAR,
	"data_cd" VARCHAR,
	"display_order" INTEGER,
	"display_size" INTEGER,
	"chart_config" LONGTEXT,
	"params" LONGTEXT,
	"options" LONGTEXT,
	"title" VARCHAR,
	"editable" BOOLEAN,
	"default_view" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("view_cd"),
	 CONSTRAINT "fk_cost_impact_analysis_section_to_data_type_data_cd" FOREIGN KEY ("data_cd") REFERENCES "cost_impact_analysis_data_type_config" ("data_cd"),
	 CONSTRAINT "fk_cost_impact_analysis_section_to_data_type_section_cd" FOREIGN KEY ("section_cd") REFERENCES "cost_impact_analysis_section_config" ("section_cd")
);

CREATE TABLE "cost_impact_analysis_stage_project_type_config" (
	"id" SERIAL,
	"proj_type" HUDUPKG.COST_IMPACT_PROJ_TYPE,
	"stage_cd" TEXT,
	"display_order" INTEGER,
	"created_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cost_impact_analysis_stage_project_type_config_stage_cd" FOREIGN KEY ("stage_cd") REFERENCES "cost_impact_analysis_stage_config" ("stage_cd")
);
