DROP DATABASE IF EXISTS "schema749";
CREATE DATABASE "schema749";
USE "schema749";
CREATE TABLE "user_group" (
	"user_group_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("user_group_id")
);

CREATE TABLE "university" (
	"university_id" INT,
	"name" VARCHAR,
	"abbreviation" VARCHAR,
	 PRIMARY KEY ("university_id")
);

CREATE TABLE "student_status" (
	"student_status_id" INT,
	"status_name" VARCHAR,
	 PRIMARY KEY ("student_status_id")
);

CREATE TABLE "status" (
	"status_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "simple_search" (
	"query_id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"matno" VARCHAR,
	"pid" TINYINT,
	"salutation" TINYINT,
	"status" TINYINT,
	"birthday" TINYINT,
	"nationality" TINYINT,
	"home_address" TINYINT,
	"abroad_address" TINYINT,
	 PRIMARY KEY ("query_id")
);

CREATE TABLE "securitytoken" (
	"id" INT,
	"user_id" INT,
	"identifier" VARCHAR,
	"securitytoken" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "salutation" (
	"salutation_id" INT,
	"name" VARCHAR,
	"nameeng" VARCHAR,
	 PRIMARY KEY ("salutation_id")
);

CREATE TABLE "user" (
	"user_id" INT,
	"user_group_id" INT,
	"salutation_id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"activated" TINYINT,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "fk_user_salutation" FOREIGN KEY ("salutation_id") REFERENCES "salutation" ("salutation_id")
);

CREATE TABLE "reset_password" (
	"user_id" INT,
	"password_code" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("user_id","password_code")
);

CREATE TABLE "professor" (
	"professor_id" INT,
	"prof_surname" VARCHAR,
	"prof_firstname" VARCHAR,
	"prof_title" VARCHAR,
	"university_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("professor_id")
);

CREATE TABLE "intention" (
	"intention_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("intention_id")
);

CREATE TABLE "exchange_stages" (
	"stage_id" INT,
	"stage_name" VARCHAR,
	 PRIMARY KEY ("stage_id")
);

CREATE TABLE "exchange_period" (
	"period_id" INT,
	"exchange_semester" VARCHAR,
	"semester_begin" DATE,
	"semester_end" DATE,
	"application_begin" DATETIME,
	"application_end" DATETIME,
	"created_on" TIMESTAMP,
	"updated_on" TIMESTAMP,
	"min_success_factor" DECIMAL,
	 PRIMARY KEY ("period_id")
);

CREATE TABLE "equivalence_quota" (
	"equivalence_id" INT,
	"exchange_period_id" INT,
	"quota" INT,
	 PRIMARY KEY ("equivalence_id","exchange_period_id")
);

CREATE TABLE "email_activation" (
	"user_id" INT,
	"activation_code" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("user_id","activation_code")
);

CREATE TABLE "degree" (
	"degree_id" INT,
	"name" VARCHAR,
	"abbreviation" VARCHAR,
	 PRIMARY KEY ("degree_id")
);

CREATE TABLE "exchange_checklist" (
	"step_id" INT,
	"step_name" VARCHAR,
	"foreign_uni_id" INT,
	"exchange_stage_id" INT,
	"degree_id" INT,
	 PRIMARY KEY ("step_id"),
	 CONSTRAINT "foreign_key_degree_id" FOREIGN KEY ("degree_id") REFERENCES "degree" ("degree_id")
);

CREATE TABLE "exchange_checklist_deadline" (
	"step_id" INT,
	"deadline" DATETIME,
	"exchange_period_id" INT,
	"beginn" DATETIME,
	"information" LONGTEXT,
	 PRIMARY KEY ("step_id","exchange_period_id"),
	 CONSTRAINT "foreign_key_step_id" FOREIGN KEY ("step_id") REFERENCES "exchange_checklist" ("step_id")
);

CREATE TABLE "equivalent_subjects" (
	"equivalence_id" INT,
	"home_subject_id" INT,
	"foreign_subject_id" INT,
	"status_id" INT,
	"signed_by_prof_id" INT,
	"accepted_at" DATETIME,
	"prof_doc_num" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"created_by_user_id" INT,
	"updated_by_user_id" INT,
	"valid_degree_id" INT,
	 PRIMARY KEY ("equivalence_id"),
	 CONSTRAINT "fk_valid_degree_id" FOREIGN KEY ("valid_degree_id") REFERENCES "degree" ("degree_id")
);

CREATE TABLE "course" (
	"course_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("course_id")
);

CREATE TABLE "subject" (
	"subject_id" INT,
	"university_id" INT,
	"degree_id" INT,
	"course_id" INT,
	"prof_id" INT,
	"subject_code" VARCHAR,
	"subject_title" VARCHAR,
	"subject_abbrev" VARCHAR,
	"subject_credits" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("subject_id"),
	 CONSTRAINT "fk_subject_degree1" FOREIGN KEY ("degree_id") REFERENCES "degree" ("degree_id"),
	 CONSTRAINT "fk_subject_prof1" FOREIGN KEY ("prof_id") REFERENCES "professor" ("professor_id"),
	 CONSTRAINT "fk_subject_course1" FOREIGN KEY ("course_id") REFERENCES "course" ("course_id")
);

CREATE TABLE "equivalence_course" (
	"equivalence_id" INT,
	"course_id" INT,
	 PRIMARY KEY ("equivalence_id","course_id"),
	 CONSTRAINT "fk_course_id" FOREIGN KEY ("course_id") REFERENCES "course" ("course_id")
);

CREATE TABLE "country" (
	"country_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("country_id")
);

CREATE TABLE "applied_equivalence" (
	"application_id" INT,
	"equivalence_id" INT,
	"application_status_id" INT,
	 PRIMARY KEY ("application_id","equivalence_id")
);

CREATE TABLE "admin_list" (
	"admin_email" VARCHAR,
	 PRIMARY KEY ("admin_email")
);

CREATE TABLE "address" (
	"address_id" INT,
	"street" VARCHAR,
	"zipcode" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"country_id" INT,
	"phone_no" VARCHAR,
	"additional" VARCHAR,
	"student_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "student" (
	"student_id" INT,
	"user_id" INT,
	"birthdate" DATE,
	"nationality_country_id" INT,
	"home_address_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"student_status_id" INT,
	 PRIMARY KEY ("student_id"),
	 CONSTRAINT "fk_student_country1" FOREIGN KEY ("nationality_country_id") REFERENCES "country" ("country_id"),
	 CONSTRAINT "fk_student_address1" FOREIGN KEY ("home_address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "application" (
	"application_id" INT,
	"exchange_period_id" INT,
	"student_id" INT,
	"intention_id" INT,
	"applied_degree_id" INT,
	"success_factor" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"home_address_id" INT,
	"completed" TINYINT,
	 PRIMARY KEY ("application_id"),
	 CONSTRAINT "fk_application_home_address_id" FOREIGN KEY ("home_address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "study_home" (
	"application_id" INT,
	"home_university_id" INT,
	"home_degree_id" INT,
	"home_course_id" INT,
	"home_matno" VARCHAR,
	"home_cgpa" DECIMAL,
	"home_credits" DECIMAL,
	"home_semester" INT,
	"home_enrollment_date" DATE,
	 PRIMARY KEY ("application_id"),
	 CONSTRAINT "fk_study_home_course1" FOREIGN KEY ("home_course_id") REFERENCES "course" ("course_id"),
	 CONSTRAINT "fk_study_home_degree1" FOREIGN KEY ("home_degree_id") REFERENCES "degree" ("degree_id"),
	 CONSTRAINT "fk_study_home_application1" FOREIGN KEY ("application_id") REFERENCES "application" ("application_id")
);

CREATE TABLE "reviewed_application" (
	"application_id" INT,
	"application_status_id" INT,
	"reviewed_at" TIMESTAMP,
	"reviewed_by_user_id" INT,
	"updated_at" TIMESTAMP,
	"comment" VARCHAR,
	 PRIMARY KEY ("application_id"),
	 CONSTRAINT "fk_reviewed_application_application1" FOREIGN KEY ("application_id") REFERENCES "application" ("application_id")
);

CREATE TABLE "priority" (
	"application_id" INT,
	"first_uni_id" INT,
	"second_uni_id" INT,
	"third_uni_id" INT,
	 PRIMARY KEY ("application_id"),
	 CONSTRAINT "fk_priority_application1" FOREIGN KEY ("application_id") REFERENCES "application" ("application_id")
);

CREATE TABLE "exchange" (
	"exchange_id" INT,
	"application_id" INT,
	"foreign_address_id" INT,
	"foreign_uni_id" INT,
	 PRIMARY KEY ("exchange_id"),
	 CONSTRAINT "fk_exchange_address1" FOREIGN KEY ("foreign_address_id") REFERENCES "address" ("address_id"),
	 CONSTRAINT "fk_exchange_application1" FOREIGN KEY ("application_id") REFERENCES "application" ("application_id")
);

CREATE TABLE "study_host" (
	"exchange_id" INT,
	"foreign_uni_id" INT,
	"foreign_degree_id" INT,
	"foreign_course_id" INT,
	"foreign_num_planed_exams" INT,
	"foreign_matno" VARCHAR,
	 PRIMARY KEY ("exchange_id"),
	 CONSTRAINT "fk_study_host_course1" FOREIGN KEY ("foreign_course_id") REFERENCES "course" ("course_id"),
	 CONSTRAINT "fk_study_host_exchange1" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "fk_study_host_degree1" FOREIGN KEY ("foreign_degree_id") REFERENCES "degree" ("degree_id")
);

CREATE TABLE "exchange_equivalence" (
	"exchange_id" INT,
	"equivalence_id" INT,
	"credits_received" DECIMAL,
	"grade_received" DECIMAL,
	 PRIMARY KEY ("exchange_id","equivalence_id"),
	 CONSTRAINT "fk_exchanged_equivalence_exchange1" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "fk_exchanged_equivalence_equivalent_subjects1" FOREIGN KEY ("equivalence_id") REFERENCES "equivalent_subjects" ("equivalence_id")
);

CREATE TABLE "exchange_checklist_student" (
	"exchange_id" INT,
	"step_id" INT,
	 CONSTRAINT "foreign_key_checklist_step_id" FOREIGN KEY ("step_id") REFERENCES "exchange_checklist" ("step_id"),
	 CONSTRAINT "foreign_key_exchange_id" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id")
);
