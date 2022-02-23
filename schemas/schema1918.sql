DROP DATABASE IF EXISTS "schema1918";
CREATE DATABASE "schema1918";
USE "schema1918";
CREATE TABLE "user_property" (
	"user_id" INT,
	"property" VARCHAR,
	"property_value" VARCHAR,
	 PRIMARY KEY ("user_id","property")
);

CREATE TABLE "tribe" (
	"tribe_id" INT,
	"retired" TINYINT,
	"name" VARCHAR,
	 PRIMARY KEY ("tribe_id")
);

CREATE TABLE "serialized_object" (
	"serialized_object_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"type" VARCHAR,
	"subtype" VARCHAR,
	"serialization_class" VARCHAR,
	"serialized_data" TEXT,
	"date_created" DATETIME,
	"creator" INT,
	"date_changed" DATETIME,
	"changed_by" INT,
	"retired" SMALLINT,
	"date_retired" DATETIME,
	"retired_by" INT,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("serialized_object_id")
);

CREATE TABLE "scheduler_task_config" (
	"task_config_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"schedulable_class" TEXT,
	"start_time" DATETIME,
	"start_time_pattern" VARCHAR,
	"repeat_interval" INT,
	"start_on_startup" INT,
	"started" INT,
	"created_by" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	"last_execution_time" DATETIME,
	 PRIMARY KEY ("task_config_id")
);

CREATE TABLE "scheduler_task_config_property" (
	"task_config_property_id" INT,
	"name" VARCHAR,
	"value" TEXT,
	"task_config_id" INT,
	 PRIMARY KEY ("task_config_property_id"),
	 CONSTRAINT "task_config_for_property" FOREIGN KEY ("task_config_id") REFERENCES "scheduler_task_config" ("task_config_id")
);

CREATE TABLE "role" (
	"role" VARCHAR,
	"description" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("role")
);

CREATE TABLE "user_role" (
	"user_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("role","user_id"),
	 CONSTRAINT "role_definitions" FOREIGN KEY ("role") REFERENCES "role" ("role")
);

CREATE TABLE "role_role" (
	"parent_role" VARCHAR,
	"child_role" VARCHAR,
	 PRIMARY KEY ("parent_role","child_role"),
	 CONSTRAINT "inherited_role" FOREIGN KEY ("child_role") REFERENCES "role" ("role"),
	 CONSTRAINT "parent_role" FOREIGN KEY ("parent_role") REFERENCES "role" ("role")
);

CREATE TABLE "report_schema_xml" (
	"report_schema_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"xml_data" MEDIUMTEXT,
	"uuid" CHAR,
	 PRIMARY KEY ("report_schema_id")
);

CREATE TABLE "report_object" (
	"report_object_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"report_object_type" VARCHAR,
	"report_object_sub_type" VARCHAR,
	"xml_data" TEXT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("report_object_id")
);

CREATE TABLE "relationship_type" (
	"relationship_type_id" INT,
	"a_is_to_b" VARCHAR,
	"b_is_to_a" VARCHAR,
	"preferred" INT,
	"weight" INT,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"uuid" CHAR,
	"retired" TINYINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	 PRIMARY KEY ("relationship_type_id")
);

CREATE TABLE "privilege" (
	"privilege" VARCHAR,
	"description" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("privilege")
);

CREATE TABLE "role_privilege" (
	"role" VARCHAR,
	"privilege" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("privilege","role"),
	 CONSTRAINT "role_privilege" FOREIGN KEY ("role") REFERENCES "role" ("role"),
	 CONSTRAINT "privilege_definitons" FOREIGN KEY ("privilege") REFERENCES "privilege" ("privilege")
);

CREATE TABLE "person_attribute_type" (
	"person_attribute_type_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"format" VARCHAR,
	"foreign_key" INT,
	"searchable" SMALLINT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"edit_privilege" VARCHAR,
	"uuid" CHAR,
	"sort_weight" DOUBLE,
	 PRIMARY KEY ("person_attribute_type_id")
);

CREATE TABLE "patient_identifier_type" (
	"patient_identifier_type_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"format" VARCHAR,
	"check_digit" SMALLINT,
	"creator" INT,
	"date_created" DATETIME,
	"required" SMALLINT,
	"format_description" VARCHAR,
	"validator" VARCHAR,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("patient_identifier_type_id")
);

CREATE TABLE "patient" (
	"patient_id" INT,
	"tribe" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	 PRIMARY KEY ("patient_id")
);

CREATE TABLE "patient_program" (
	"patient_program_id" INT,
	"patient_id" INT,
	"program_id" INT,
	"date_enrolled" DATETIME,
	"date_completed" DATETIME,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"location_id" INT,
	"uuid" CHAR,
	 PRIMARY KEY ("patient_program_id"),
	 CONSTRAINT "patient_in_program" FOREIGN KEY ("patient_id") REFERENCES "patient" ("patient_id")
);

CREATE TABLE "patient_state" (
	"patient_state_id" INT,
	"patient_program_id" INT,
	"state" INT,
	"start_date" DATE,
	"end_date" DATE,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("patient_state_id"),
	 CONSTRAINT "patient_program_for_state" FOREIGN KEY ("patient_program_id") REFERENCES "patient_program" ("patient_program_id")
);

CREATE TABLE "order_type" (
	"order_type_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("order_type_id")
);

CREATE TABLE "notification_template" (
	"template_id" INT,
	"name" VARCHAR,
	"template" TEXT,
	"subject" VARCHAR,
	"sender" VARCHAR,
	"recipients" VARCHAR,
	"ordinal" INT,
	"uuid" CHAR,
	 PRIMARY KEY ("template_id")
);

CREATE TABLE "notification_alert" (
	"alert_id" INT,
	"text" VARCHAR,
	"satisfied_by_any" INT,
	"alert_read" INT,
	"date_to_expire" DATETIME,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("alert_id")
);

CREATE TABLE "notification_alert_recipient" (
	"alert_id" INT,
	"user_id" INT,
	"alert_read" INT,
	"date_changed" TIMESTAMP,
	"uuid" CHAR,
	 PRIMARY KEY ("alert_id","user_id"),
	 CONSTRAINT "id_of_alert" FOREIGN KEY ("alert_id") REFERENCES "notification_alert" ("alert_id")
);

CREATE TABLE "logic_token_registration" (
	"token_registration_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"token" VARCHAR,
	"provider_class_name" VARCHAR,
	"provider_token" VARCHAR,
	"configuration" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("token_registration_id")
);

CREATE TABLE "logic_token_registration_tag" (
	"token_registration_id" INT,
	"tag" VARCHAR,
	 CONSTRAINT "token_registration_tag" FOREIGN KEY ("token_registration_id") REFERENCES "logic_token_registration" ("token_registration_id")
);

CREATE TABLE "logic_rule_token" (
	"logic_rule_token_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"token" VARCHAR,
	"class_name" VARCHAR,
	"state" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("logic_rule_token_id")
);

CREATE TABLE "logic_rule_token_tag" (
	"logic_rule_token_id" INT,
	"tag" VARCHAR,
	 CONSTRAINT "token_tag" FOREIGN KEY ("logic_rule_token_id") REFERENCES "logic_rule_token" ("logic_rule_token_id")
);

CREATE TABLE "logic_rule_definition" (
	"id" INT,
	"uuid" CHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"rule_content" VARCHAR,
	"language" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired" TINYINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location_tag" (
	"location_tag_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("location_tag_id")
);

CREATE TABLE "location" (
	"location_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"city_village" VARCHAR,
	"state_province" VARCHAR,
	"postal_code" VARCHAR,
	"country" VARCHAR,
	"latitude" VARCHAR,
	"longitude" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"county_district" VARCHAR,
	"neighborhood_cell" VARCHAR,
	"region" VARCHAR,
	"subregion" VARCHAR,
	"township_division" VARCHAR,
	"retired" TINYINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"location_type_id" INT,
	"parent_location" INT,
	"uuid" CHAR,
	 PRIMARY KEY ("location_id"),
	 CONSTRAINT "parent_location" FOREIGN KEY ("parent_location") REFERENCES "location" ("location_id")
);

CREATE TABLE "patient_identifier" (
	"patient_identifier_id" INT,
	"patient_id" INT,
	"identifier" VARCHAR,
	"identifier_type" INT,
	"preferred" SMALLINT,
	"location_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("patient_identifier_id"),
	 CONSTRAINT "identifies_patient" FOREIGN KEY ("patient_id") REFERENCES "patient" ("patient_id"),
	 CONSTRAINT "patient_identifier_ibfk_2" FOREIGN KEY ("location_id") REFERENCES "location" ("location_id")
);

CREATE TABLE "location_tag_map" (
	"location_id" INT,
	"location_tag_id" INT,
	 PRIMARY KEY ("location_id","location_tag_id"),
	 CONSTRAINT "location_tag_map_location" FOREIGN KEY ("location_id") REFERENCES "location" ("location_id"),
	 CONSTRAINT "location_tag_map_tag" FOREIGN KEY ("location_tag_id") REFERENCES "location_tag" ("location_tag_id")
);

CREATE TABLE "liquibasechangeloglock" (
	"id" INT,
	"locked" TINYINT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "liquibasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	 PRIMARY KEY ("id","author","filename")
);

CREATE TABLE "hl7_source" (
	"hl7_source_id" INT,
	"name" VARCHAR,
	"description" TINYTEXT,
	"creator" INT,
	"date_created" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("hl7_source_id")
);

CREATE TABLE "hl7_in_queue" (
	"hl7_in_queue_id" INT,
	"hl7_source" INT,
	"hl7_source_key" TEXT,
	"hl7_data" MEDIUMTEXT,
	"message_state" INT,
	"date_processed" DATETIME,
	"error_msg" TEXT,
	"date_created" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("hl7_in_queue_id")
);

CREATE TABLE "hl7_in_error" (
	"hl7_in_error_id" INT,
	"hl7_source" INT,
	"hl7_source_key" TEXT,
	"hl7_data" MEDIUMTEXT,
	"error" VARCHAR,
	"error_details" TEXT,
	"date_created" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("hl7_in_error_id")
);

CREATE TABLE "hl7_in_archive" (
	"hl7_in_archive_id" INT,
	"hl7_source" INT,
	"hl7_source_key" VARCHAR,
	"hl7_data" MEDIUMTEXT,
	"date_created" DATETIME,
	"message_state" INT,
	"uuid" CHAR,
	 PRIMARY KEY ("hl7_in_archive_id")
);

CREATE TABLE "global_property" (
	"property" VARBINARY,
	"property_value" MEDIUMTEXT,
	"description" TEXT,
	"uuid" CHAR,
	 PRIMARY KEY ("property")
);

CREATE TABLE "formentry_queue" (
	"formentry_queue_id" INT,
	"form_data" MEDIUMTEXT,
	"creator" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("formentry_queue_id")
);

CREATE TABLE "formentry_error" (
	"formentry_error_id" INT,
	"form_data" MEDIUMTEXT,
	"error" VARCHAR,
	"error_details" TEXT,
	"creator" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("formentry_error_id")
);

CREATE TABLE "formentry_archive" (
	"formentry_archive_id" INT,
	"form_data" MEDIUMTEXT,
	"date_created" DATETIME,
	"creator" INT,
	 PRIMARY KEY ("formentry_archive_id")
);

CREATE TABLE "field_type" (
	"field_type_id" INT,
	"name" VARCHAR,
	"description" LONGTEXT,
	"is_set" SMALLINT,
	"creator" INT,
	"date_created" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("field_type_id")
);

CREATE TABLE "encounter_type" (
	"encounter_type_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("encounter_type_id")
);

CREATE TABLE "form" (
	"form_id" INT,
	"name" VARCHAR,
	"version" VARCHAR,
	"build" INT,
	"published" SMALLINT,
	"description" TEXT,
	"encounter_type" INT,
	"template" MEDIUMTEXT,
	"xslt" MEDIUMTEXT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retired_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("form_id"),
	 CONSTRAINT "form_encounter_type" FOREIGN KEY ("encounter_type") REFERENCES "encounter_type" ("encounter_type_id")
);

CREATE TABLE "htmlformentry_html_form" (
	"id" INT,
	"form_id" INT,
	"name" VARCHAR,
	"xml_data" MEDIUMTEXT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "Form with which this htmlform is related" FOREIGN KEY ("form_id") REFERENCES "form" ("form_id")
);

CREATE TABLE "formentry_xsn" (
	"formentry_xsn_id" INT,
	"form_id" INT,
	"xsn_data" LONGBLOB,
	"creator" INT,
	"date_created" DATETIME,
	"archived" INT,
	"archived_by" INT,
	"date_archived" DATETIME,
	 PRIMARY KEY ("formentry_xsn_id"),
	 CONSTRAINT "Form with which this xsn is related" FOREIGN KEY ("form_id") REFERENCES "form" ("form_id")
);

CREATE TABLE "encounter" (
	"encounter_id" INT,
	"encounter_type" INT,
	"patient_id" INT,
	"provider_id" INT,
	"location_id" INT,
	"form_id" INT,
	"encounter_datetime" DATETIME,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	"changed_by" INT,
	"date_changed" DATETIME,
	 PRIMARY KEY ("encounter_id")
);

CREATE TABLE "note" (
	"note_id" INT,
	"note_type" VARCHAR,
	"patient_id" INT,
	"obs_id" INT,
	"encounter_id" INT,
	"text" TEXT,
	"priority" INT,
	"parent" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("note_id"),
	 CONSTRAINT "encounter_note" FOREIGN KEY ("encounter_id") REFERENCES "encounter" ("encounter_id"),
	 CONSTRAINT "note_hierarchy" FOREIGN KEY ("parent") REFERENCES "note" ("note_id")
);

CREATE TABLE "drug_substance" (
	"drug_substance_id" INT,
	"concept_id" INT,
	"name" VARCHAR,
	"dose_strength" DOUBLE,
	"maximum_daily_dose" DOUBLE,
	"minimum_daily_dose" DOUBLE,
	"route" INT,
	"units" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" TINYINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" DATETIME,
	 PRIMARY KEY ("drug_substance_id")
);

CREATE TABLE "concept_source" (
	"concept_source_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"hl7_code" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" TINYINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_source_id")
);

CREATE TABLE "external_source" (
	"external_source_id" INT,
	"source" INT,
	"source_code" VARCHAR,
	"name" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("external_source_id"),
	 CONSTRAINT "map_ext_source" FOREIGN KEY ("source") REFERENCES "concept_source" ("concept_source_id")
);

CREATE TABLE "concept_set_derived" (
	"concept_id" INT,
	"concept_set" INT,
	"sort_weight" DOUBLE,
	 PRIMARY KEY ("concept_id","concept_set")
);

CREATE TABLE "concept_name_tag" (
	"concept_name_tag_id" INT,
	"tag" VARCHAR,
	"description" TEXT,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_name_tag_id")
);

CREATE TABLE "concept_datatype" (
	"concept_datatype_id" INT,
	"name" VARCHAR,
	"hl7_abbreviation" VARCHAR,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_datatype_id")
);

CREATE TABLE "concept_class" (
	"concept_class_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_class_id")
);

CREATE TABLE "concept" (
	"concept_id" INT,
	"retired" SMALLINT,
	"short_name" VARCHAR,
	"description" TEXT,
	"form_text" TEXT,
	"datatype_id" INT,
	"class_id" INT,
	"is_set" SMALLINT,
	"creator" INT,
	"date_created" DATETIME,
	"default_charge" INT,
	"version" VARCHAR,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_id")
);

CREATE TABLE "program" (
	"program_id" INT,
	"concept_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired" SMALLINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("program_id"),
	 CONSTRAINT "program_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "program_workflow" (
	"program_workflow_id" INT,
	"program_id" INT,
	"concept_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("program_workflow_id"),
	 CONSTRAINT "program_for_workflow" FOREIGN KEY ("program_id") REFERENCES "program" ("program_id"),
	 CONSTRAINT "workflow_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "program_workflow_state" (
	"program_workflow_state_id" INT,
	"program_workflow_id" INT,
	"concept_id" INT,
	"initial" SMALLINT,
	"terminal" SMALLINT,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("program_workflow_state_id"),
	 CONSTRAINT "state_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "workflow_for_state" FOREIGN KEY ("program_workflow_id") REFERENCES "program_workflow" ("program_workflow_id")
);

CREATE TABLE "person" (
	"person_id" INT,
	"gender" VARCHAR,
	"birthdate" DATE,
	"birthdate_estimated" SMALLINT,
	"dead" SMALLINT,
	"death_date" DATETIME,
	"cause_of_death" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("person_id"),
	 CONSTRAINT "person_died_because" FOREIGN KEY ("cause_of_death") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"system_id" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"secret_question" VARCHAR,
	"secret_answer" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"person_id" INT,
	"retired" TINYINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "person_id_for_user" FOREIGN KEY ("person_id") REFERENCES "person" ("person_id"),
	 CONSTRAINT "user_creator" FOREIGN KEY ("creator") REFERENCES "users" ("user_id"),
	 CONSTRAINT "user_who_retired_this_user" FOREIGN KEY ("retired_by") REFERENCES "users" ("user_id"),
	 CONSTRAINT "user_who_changed_user" FOREIGN KEY ("changed_by") REFERENCES "users" ("user_id")
);

CREATE TABLE "relationship" (
	"relationship_id" INT,
	"person_a" INT,
	"relationship" INT,
	"person_b" INT,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("relationship_id"),
	 CONSTRAINT "person_a" FOREIGN KEY ("person_a") REFERENCES "person" ("person_id"),
	 CONSTRAINT "person_b" FOREIGN KEY ("person_b") REFERENCES "person" ("person_id")
);

CREATE TABLE "person_name" (
	"person_name_id" INT,
	"preferred" SMALLINT,
	"person_id" INT,
	"prefix" VARCHAR,
	"given_name" VARCHAR,
	"middle_name" VARCHAR,
	"family_name_prefix" VARCHAR,
	"family_name" VARCHAR,
	"family_name2" VARCHAR,
	"family_name_suffix" VARCHAR,
	"degree" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("person_name_id"),
	 CONSTRAINT "name for person" FOREIGN KEY ("person_id") REFERENCES "person" ("person_id")
);

CREATE TABLE "person_attribute" (
	"person_attribute_id" INT,
	"person_id" INT,
	"value" VARCHAR,
	"person_attribute_type_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("person_attribute_id"),
	 CONSTRAINT "identifies_person" FOREIGN KEY ("person_id") REFERENCES "person" ("person_id")
);

CREATE TABLE "person_address" (
	"person_address_id" INT,
	"person_id" INT,
	"preferred" SMALLINT,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"city_village" VARCHAR,
	"state_province" VARCHAR,
	"postal_code" VARCHAR,
	"country" VARCHAR,
	"latitude" VARCHAR,
	"longitude" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"county_district" VARCHAR,
	"neighborhood_cell" VARCHAR,
	"region" VARCHAR,
	"subregion" VARCHAR,
	"township_division" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("person_address_id"),
	 CONSTRAINT "address_for_person" FOREIGN KEY ("person_id") REFERENCES "person" ("person_id")
);

CREATE TABLE "orders" (
	"order_id" INT,
	"order_type_id" INT,
	"concept_id" INT,
	"orderer" INT,
	"encounter_id" INT,
	"instructions" TEXT,
	"start_date" DATETIME,
	"auto_expire_date" DATETIME,
	"discontinued" SMALLINT,
	"discontinued_date" DATETIME,
	"discontinued_by" INT,
	"discontinued_reason" INT,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"patient_id" INT,
	"accession_number" VARCHAR,
	"uuid" CHAR,
	"discontinued_reason_non_coded" VARCHAR,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "orders_in_encounter" FOREIGN KEY ("encounter_id") REFERENCES "encounter" ("encounter_id"),
	 CONSTRAINT "discontinued_because" FOREIGN KEY ("discontinued_reason") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "type_of_order" FOREIGN KEY ("order_type_id") REFERENCES "order_type" ("order_type_id")
);

CREATE TABLE "field" (
	"field_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"field_type" INT,
	"concept_id" INT,
	"table_name" VARCHAR,
	"attribute_name" VARCHAR,
	"default_value" TEXT,
	"select_multiple" SMALLINT,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("field_id"),
	 CONSTRAINT "concept_for_field" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "form_field" (
	"form_field_id" INT,
	"form_id" INT,
	"field_id" INT,
	"field_number" INT,
	"field_part" VARCHAR,
	"page_number" INT,
	"parent_form_field" INT,
	"min_occurs" INT,
	"max_occurs" INT,
	"required" SMALLINT,
	"changed_by" INT,
	"date_changed" DATETIME,
	"creator" INT,
	"date_created" DATETIME,
	"sort_weight" FLOAT,
	"uuid" CHAR,
	 PRIMARY KEY ("form_field_id"),
	 CONSTRAINT "field_within_form" FOREIGN KEY ("field_id") REFERENCES "field" ("field_id"),
	 CONSTRAINT "form_containing_field" FOREIGN KEY ("form_id") REFERENCES "form" ("form_id"),
	 CONSTRAINT "form_field_hierarchy" FOREIGN KEY ("parent_form_field") REFERENCES "form_field" ("form_field_id")
);

CREATE TABLE "field_answer" (
	"field_id" INT,
	"answer_id" INT,
	"creator" INT,
	"date_created" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("field_id","answer_id"),
	 CONSTRAINT "answers_for_field" FOREIGN KEY ("field_id") REFERENCES "field" ("field_id"),
	 CONSTRAINT "field_answer_concept" FOREIGN KEY ("answer_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "drug" (
	"drug_id" INT,
	"drug_id" INT,
	"concept_id" INT,
	"name" VARCHAR,
	"combination" SMALLINT,
	"dosage_form" INT,
	"dose_strength" DOUBLE,
	"maximum_daily_dose" DOUBLE,
	"minimum_daily_dose" DOUBLE,
	"route" INT,
	"units" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("drug_id"),
	 CONSTRAINT "dosage_form_concept" FOREIGN KEY ("dosage_form") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "primary_drug_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "route_concept" FOREIGN KEY ("route") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "drug_order" (
	"order_id" INT,
	"drug_inventory_id" INT,
	"dose" DOUBLE,
	"equivalent_daily_dose" DOUBLE,
	"units" VARCHAR,
	"frequency" VARCHAR,
	"prn" SMALLINT,
	"complex" SMALLINT,
	"quantity" INT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "inventory_item" FOREIGN KEY ("drug_inventory_id") REFERENCES "drug" ("drug_id")
);

CREATE TABLE "drug_ingredient" (
	"id" INT,
	"drug_id" INT,
	"drug_substance_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "drug" FOREIGN KEY ("drug_id") REFERENCES "drug" ("drug_id")
);

CREATE TABLE "concept_synonym" (
	"concept_id" INT,
	"synonym" VARCHAR,
	"locale" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("synonym","concept_id"),
	 CONSTRAINT "synonym_for" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_state_conversion" (
	"concept_state_conversion_id" INT,
	"concept_id" INT,
	"program_workflow_id" INT,
	"program_workflow_state_id" INT,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_state_conversion_id"),
	 CONSTRAINT "concept_triggers_conversion" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_set" (
	"concept_set_id" INT,
	"concept_id" INT,
	"concept_set" INT,
	"sort_weight" DOUBLE,
	"creator" INT,
	"date_created" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_set_id"),
	 CONSTRAINT "has_a" FOREIGN KEY ("concept_set") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "is_a" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_proposal" (
	"concept_proposal_id" INT,
	"concept_id" INT,
	"encounter_id" INT,
	"original_text" VARCHAR,
	"final_text" VARCHAR,
	"obs_id" INT,
	"obs_concept_id" INT,
	"state" VARCHAR,
	"comments" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"locale" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_proposal_id"),
	 CONSTRAINT "concept_for_proposal" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "proposal_obs_concept_id" FOREIGN KEY ("obs_concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_proposal_tag_map" (
	"concept_proposal_id" INT,
	"concept_name_tag_id" INT,
	 CONSTRAINT "mapped_concept_proposal" FOREIGN KEY ("concept_proposal_id") REFERENCES "concept_proposal" ("concept_proposal_id"),
	 CONSTRAINT "mapped_concept_proposal_tag" FOREIGN KEY ("concept_name_tag_id") REFERENCES "concept_name_tag" ("concept_name_tag_id")
);

CREATE TABLE "concept_numeric" (
	"concept_id" INT,
	"hi_absolute" DOUBLE,
	"hi_critical" DOUBLE,
	"hi_normal" DOUBLE,
	"low_absolute" DOUBLE,
	"low_critical" DOUBLE,
	"low_normal" DOUBLE,
	"units" VARCHAR,
	"precise" SMALLINT,
	 PRIMARY KEY ("concept_id"),
	 CONSTRAINT "numeric_attributes" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_name" (
	"concept_id" INT,
	"name" VARCHAR,
	"locale" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"concept_name_id" INT,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	"concept_name_type" VARCHAR,
	"locale_preferred" SMALLINT,
	 PRIMARY KEY ("concept_name_id"),
	 CONSTRAINT "name_for_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "obs" (
	"obs_id" INT,
	"person_id" INT,
	"concept_id" INT,
	"encounter_id" INT,
	"order_id" INT,
	"obs_datetime" DATETIME,
	"location_id" INT,
	"obs_group_id" INT,
	"accession_number" VARCHAR,
	"value_group_id" INT,
	"value_boolean" TINYINT,
	"value_coded" INT,
	"value_coded_name_id" INT,
	"value_drug" INT,
	"value_datetime" DATETIME,
	"value_numeric" DOUBLE,
	"value_modifier" VARCHAR,
	"value_text" TEXT,
	"date_started" DATETIME,
	"date_stopped" DATETIME,
	"comments" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"value_complex" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("obs_id"),
	 CONSTRAINT "obs_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "answer_concept" FOREIGN KEY ("value_coded") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "obs_grouping_id" FOREIGN KEY ("obs_group_id") REFERENCES "obs" ("obs_id"),
	 CONSTRAINT "answer_concept_drug" FOREIGN KEY ("value_drug") REFERENCES "drug" ("drug_id"),
	 CONSTRAINT "encounter_observations" FOREIGN KEY ("encounter_id") REFERENCES "encounter" ("encounter_id"),
	 CONSTRAINT "obs_location" FOREIGN KEY ("location_id") REFERENCES "location" ("location_id"),
	 CONSTRAINT "obs_name_of_coded_value" FOREIGN KEY ("value_coded_name_id") REFERENCES "concept_name" ("concept_name_id")
);

CREATE TABLE "concept_word" (
	"concept_word_id" INT,
	"concept_id" INT,
	"word" VARCHAR,
	"locale" VARCHAR,
	"concept_name_id" INT,
	 PRIMARY KEY ("concept_word_id"),
	 CONSTRAINT "word_for" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "word_for_name" FOREIGN KEY ("concept_name_id") REFERENCES "concept_name" ("concept_name_id")
);

CREATE TABLE "concept_name_tag_map" (
	"concept_name_id" INT,
	"concept_name_tag_id" INT,
	 CONSTRAINT "mapped_concept_name_tag" FOREIGN KEY ("concept_name_tag_id") REFERENCES "concept_name_tag" ("concept_name_tag_id"),
	 CONSTRAINT "mapped_concept_name" FOREIGN KEY ("concept_name_id") REFERENCES "concept_name" ("concept_name_id")
);

CREATE TABLE "concept_map" (
	"concept_map_id" INT,
	"source" INT,
	"source_code" VARCHAR,
	"comment" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"concept_id" INT,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_map_id"),
	 CONSTRAINT "map_for_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_description" (
	"concept_description_id" INT,
	"concept_id" INT,
	"description" TEXT,
	"locale" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("concept_description_id"),
	 CONSTRAINT "description_for_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_derived" (
	"concept_id" INT,
	"rule" MEDIUMTEXT,
	"compile_date" DATETIME,
	"compile_status" VARCHAR,
	"class_name" VARCHAR,
	 PRIMARY KEY ("concept_id"),
	 CONSTRAINT "derived_attributes" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_complex" (
	"concept_id" INT,
	"handler" VARCHAR,
	 PRIMARY KEY ("concept_id"),
	 CONSTRAINT "concept_attributes" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "concept_answer" (
	"concept_answer_id" INT,
	"concept_id" INT,
	"answer_concept" INT,
	"answer_drug" INT,
	"creator" INT,
	"date_created" DATETIME,
	"uuid" CHAR,
	"sort_weight" DOUBLE,
	 PRIMARY KEY ("concept_answer_id"),
	 CONSTRAINT "answer" FOREIGN KEY ("answer_concept") REFERENCES "concept" ("concept_id"),
	 CONSTRAINT "answers_for_concept" FOREIGN KEY ("concept_id") REFERENCES "concept" ("concept_id")
);

CREATE TABLE "cohort" (
	"cohort_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"changed_by" INT,
	"date_changed" DATETIME,
	"uuid" CHAR,
	 PRIMARY KEY ("cohort_id")
);

CREATE TABLE "cohort_member" (
	"cohort_id" INT,
	"patient_id" INT,
	 PRIMARY KEY ("cohort_id","patient_id"),
	 CONSTRAINT "parent_cohort" FOREIGN KEY ("cohort_id") REFERENCES "cohort" ("cohort_id")
);

CREATE TABLE "active_list_type" (
	"active_list_type_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"retired" SMALLINT,
	"retired_by" INT,
	"date_retired" DATETIME,
	"retire_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("active_list_type_id")
);

CREATE TABLE "active_list_problem" (
	"active_list_id" INT,
	"status" VARCHAR,
	"sort_weight" DOUBLE,
	 PRIMARY KEY ("active_list_id")
);

CREATE TABLE "active_list_allergy" (
	"active_list_id" INT,
	"allergy_type" VARCHAR,
	"reaction_concept_id" INT,
	"severity" VARCHAR,
	 PRIMARY KEY ("active_list_id")
);

CREATE TABLE "active_list" (
	"active_list_id" INT,
	"active_list_type_id" INT,
	"person_id" INT,
	"concept_id" INT,
	"start_obs_id" INT,
	"stop_obs_id" INT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"comments" VARCHAR,
	"creator" INT,
	"date_created" DATETIME,
	"voided" SMALLINT,
	"voided_by" INT,
	"date_voided" DATETIME,
	"void_reason" VARCHAR,
	"uuid" CHAR,
	 PRIMARY KEY ("active_list_id")
);
