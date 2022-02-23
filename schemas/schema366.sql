DROP DATABASE IF EXISTS "schema366";
CREATE DATABASE "schema366";
USE "schema366";
CREATE TABLE "fac_crit" (
	"id" INT,
	"reference_id" INT,
	"name" VARCHAR,
	"goal" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_faccrit_reference_id" FOREIGN KEY ("reference_id") REFERENCES "fac_crit" ("id")
);

CREATE TABLE "question" (
	"id" INT,
	"faccrit_id" INT,
	"text_de" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_question_faccrit_id" FOREIGN KEY ("faccrit_id") REFERENCES "fac_crit" ("id")
);

CREATE TABLE "contact_person" (
	"id" INT,
	"salutation" ENUM,
	"title" VARCHAR,
	"forename" VARCHAR,
	"surname" VARCHAR,
	"contact_information" VARCHAR,
	"company_name" VARCHAR,
	"department" VARCHAR,
	"sector" VARCHAR,
	"corporate_division" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "audit" (
	"id" INT,
	"name" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"cancellation_date" DATE,
	"cancellation_reason" VARCHAR,
	"cancellation_contact_person" INT,
	"status" ENUM,
	"creation_date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_audit_cancellation_contact_person" FOREIGN KEY ("cancellation_contact_person") REFERENCES "contact_person" ("id")
);

CREATE TABLE "scope" (
	"audit_id" INT,
	"faccrit_id" INT,
	"change_note" VARCHAR,
	"removed" TINYINT,
	"note" VARCHAR,
	 PRIMARY KEY ("audit_id","faccrit_id"),
	 CONSTRAINT "fk_scope_faccrit_id" FOREIGN KEY ("faccrit_id") REFERENCES "fac_crit" ("id"),
	 CONSTRAINT "fk_scope_audit_id" FOREIGN KEY ("audit_id") REFERENCES "audit" ("id")
);

CREATE TABLE "interview" (
	"id" INT,
	"audit_id" INT,
	"start_date" DATE,
	"end_date" DATE,
	"status" ENUM,
	"note" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_interview_audit_id" FOREIGN KEY ("audit_id") REFERENCES "audit" ("id")
);

CREATE TABLE "interview_contact_person" (
	"interview_id" INT,
	"contact_person_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("interview_id","contact_person_id"),
	 CONSTRAINT "fk_interviewcontactperson_interview_id" FOREIGN KEY ("interview_id") REFERENCES "interview" ("id"),
	 CONSTRAINT "fk_interviewcontactperson_contactperson_id" FOREIGN KEY ("contact_person_id") REFERENCES "contact_person" ("id")
);

CREATE TABLE "answer" (
	"question_id" INT,
	"interview_id" INT,
	"faccrit_id" INT,
	"result" TINYINT,
	"responsible" TINYINT,
	"documentation" TINYINT,
	"procedure" TINYINT,
	"reason" VARCHAR,
	"proof" VARCHAR,
	"annotation" VARCHAR,
	 PRIMARY KEY ("question_id","interview_id"),
	 CONSTRAINT "fk_answer_faccrit_id" FOREIGN KEY ("faccrit_id") REFERENCES "fac_crit" ("id"),
	 CONSTRAINT "fk_answer_interview_id" FOREIGN KEY ("interview_id") REFERENCES "interview" ("id"),
	 CONSTRAINT "fk_answer_question_id" FOREIGN KEY ("question_id") REFERENCES "question" ("id")
);

CREATE TABLE "audit_contact_person" (
	"audit_id" INT,
	"contact_person_id" INT,
	 PRIMARY KEY ("audit_id","contact_person_id"),
	 CONSTRAINT "fk_auditcontactperson_audit_id" FOREIGN KEY ("audit_id") REFERENCES "audit" ("id"),
	 CONSTRAINT "fk_auditcontactperson_contactperson_id" FOREIGN KEY ("contact_person_id") REFERENCES "contact_person" ("id")
);
