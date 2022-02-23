DROP DATABASE IF EXISTS "schema600";
CREATE DATABASE "schema600";
USE "schema600";
CREATE TABLE "users" (
	"pk_user" BIGINT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("pk_user")
);

CREATE TABLE "studies_to_user" (
	"fk_user" BIGINT,
	"fk_study" BIGINT,
	 PRIMARY KEY ("fk_study","fk_user")
);

CREATE TABLE "studies" (
	"pk_study" BIGINT,
	"name" VARCHAR,
	"comment" LONGTEXT,
	"synchronized_from" BIGINT,
	"fk_user" BIGINT,
	 PRIMARY KEY ("pk_study")
);

CREATE TABLE "subjects" (
	"pk_subject" BIGINT,
	"fk_study" BIGINT,
	"email" VARCHAR,
	"subject_id" VARCHAR,
	"comment" LONGTEXT,
	"synchronized_from" BIGINT,
	 PRIMARY KEY ("pk_subject"),
	 CONSTRAINT "FKj084nhy23v4s8q32kqhnklpfh" FOREIGN KEY ("fk_study") REFERENCES "studies" ("pk_study"),
	 CONSTRAINT "FK_subject_study" FOREIGN KEY ("fk_study") REFERENCES "studies" ("pk_study")
);

CREATE TABLE "user_data" (
	"pk_user_data" BIGINT,
	"fk_subject" BIGINT,
	"fk_derived_from" BIGINT,
	"filename" VARCHAR,
	"type" VARCHAR,
	"path" VARCHAR,
	"hidden" BIT,
	"comment" LONGTEXT,
	"start_timestamp" BIGINT,
	"category" VARCHAR,
	"categories" VARCHAR,
	"fk_user" BIGINT,
	"task_id" VARCHAR,
	 PRIMARY KEY ("pk_user_data"),
	 CONSTRAINT "FKcvemy5s9bd2mkbfnscbi5b90p" FOREIGN KEY ("fk_derived_from") REFERENCES "user_data" ("pk_user_data"),
	 CONSTRAINT "FK_user_data_user_data" FOREIGN KEY ("fk_derived_from") REFERENCES "user_data" ("pk_user_data"),
	 CONSTRAINT "FK_user_data_subject" FOREIGN KEY ("fk_subject") REFERENCES "subjects" ("pk_subject"),
	 CONSTRAINT "FK2ru1ndjnsojmu59jlo2c1isuy" FOREIGN KEY ("fk_subject") REFERENCES "subjects" ("pk_subject")
);

CREATE TABLE "user_data_tags" (
	"pk_user_data_tags" BIGINT,
	"fk_user_data" BIGINT,
	"tag" VARCHAR,
	 PRIMARY KEY ("pk_user_data_tags"),
	 CONSTRAINT "FK_user_data_tags_user_data" FOREIGN KEY ("fk_user_data") REFERENCES "user_data" ("pk_user_data"),
	 CONSTRAINT "FKnjqydfe8k8ca7r3mgw3w9entg" FOREIGN KEY ("fk_user_data") REFERENCES "user_data" ("pk_user_data")
);

CREATE TABLE "time_phases" (
	"pk_time_phase" BIGINT,
	"fk_subject" BIGINT,
	"fk_parent_time_phase" BIGINT,
	"type" VARCHAR,
	"name" VARCHAR,
	"time_start" BIGINT,
	"time_end" BIGINT,
	"attributes" LONGTEXT,
	 PRIMARY KEY ("pk_time_phase"),
	 CONSTRAINT "FK_time_phase_subject" FOREIGN KEY ("fk_subject") REFERENCES "subjects" ("pk_subject"),
	 CONSTRAINT "FKhkypxtbtn50hdkjgljqs369y9" FOREIGN KEY ("fk_parent_time_phase") REFERENCES "time_phases" ("pk_time_phase"),
	 CONSTRAINT "FKhs9cv7ubus6e8waimq3b6tg2" FOREIGN KEY ("fk_subject") REFERENCES "subjects" ("pk_subject")
);

CREATE TABLE "settings" (
	"pk_settings" BIGINT,
	"key_column" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("pk_settings")
);

CREATE TABLE "pythoncode" (
	"pk_pythoncode" INT,
	"name" VARCHAR,
	"parameteradress" VARCHAR,
	"codeadress" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("pk_pythoncode")
);

CREATE TABLE "notifications" (
	"pk_notification" BIGINT,
	"fk_user" BIGINT,
	"message" VARCHAR,
	"type" VARCHAR,
	"url" VARCHAR,
	"is_read" BIT,
	"timestamp" DATETIME,
	"task_id" VARCHAR,
	 PRIMARY KEY ("pk_notification")
);

CREATE TABLE "events" (
	"pk_event" BIGINT,
	"fk_subject" BIGINT,
	"time_start" BIGINT,
	"time_end" BIGINT,
	"type" VARCHAR,
	"name" VARCHAR,
	"attributes" LONGTEXT,
	 PRIMARY KEY ("pk_event")
);

CREATE TABLE "data_processings" (
	"pk_data_processing" BIGINT,
	"fk_study" BIGINT,
	"name" VARCHAR,
	"comment" VARCHAR,
	"timestamp_column" VARCHAR,
	"left_pupil_column" VARCHAR,
	"right_pupil_column" VARCHAR,
	"decimal_separator" VARCHAR,
	"trial_computation_configuration" LONGTEXT,
	 PRIMARY KEY ("pk_data_processing")
);

CREATE TABLE "data_processing_steps" (
	"pk_data_processing_step" BIGINT,
	"fk_data_processing" BIGINT,
	"type" VARCHAR,
	"version" INT,
	"name" VARCHAR,
	"configuration" LONGTEXT,
	 PRIMARY KEY ("pk_data_processing_step")
);
