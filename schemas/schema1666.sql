DROP DATABASE IF EXISTS "schema1666";
CREATE DATABASE "schema1666";
USE "schema1666";
CREATE TABLE "illness" (
	"name" TEXT,
	"organ_system" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "symptoms" (
	"illness_name" TEXT,
	"symptom_name" TEXT,
	 PRIMARY KEY ("illness_name","symptom_name"),
	 CONSTRAINT "fkeycon_symptoms_to_illness" FOREIGN KEY ("illness_name") REFERENCES "illness" ("name")
);

CREATE TABLE "medication" (
	"name" TEXT,
	"is_prescription" INTEGER,
	 PRIMARY KEY ("name")
);

CREATE TABLE "treats" (
	"med_name" TEXT,
	"illness_name" TEXT,
	 PRIMARY KEY ("med_name","illness_name"),
	 CONSTRAINT "fkeycon_treats_to_medication" FOREIGN KEY ("med_name") REFERENCES "medication" ("name"),
	 CONSTRAINT "fkeycon_treats_to_illness" FOREIGN KEY ("illness_name") REFERENCES "illness" ("name")
);

CREATE TABLE "side_effects" (
	"med_name" TEXT,
	"effect" TEXT,
	 PRIMARY KEY ("effect","med_name"),
	 CONSTRAINT "fkeycon_side_effects_to_medication" FOREIGN KEY ("med_name") REFERENCES "medication" ("name")
);

CREATE TABLE "patient" (
	"p_ssn" INTEGER,
	"password" TEXT,
	 PRIMARY KEY ("p_ssn")
);

CREATE TABLE "medical_history" (
	"p_ssn" INTEGER,
	"tpal_total" INTEGER,
	"tpal_preterm" INTEGER,
	"tpal_aborted" INTEGER,
	"tpal_living" INTEGER,
	 PRIMARY KEY ("p_ssn"),
	 CONSTRAINT "fkeycon_medical_history_to_patient" FOREIGN KEY ("p_ssn") REFERENCES "patient" ("p_ssn")
);

CREATE TABLE "past_illnesses" (
	"p_ssn" INTEGER,
	"illness_name" TEXT,
	"age_of_onset" INTEGER,
	 PRIMARY KEY ("p_ssn","illness_name"),
	 CONSTRAINT "fkeycon_past_illnesses_to_illness" FOREIGN KEY ("illness_name") REFERENCES "illness" ("name"),
	 CONSTRAINT "fkeycon_past_illnesses_to_medical_history" FOREIGN KEY ("p_ssn") REFERENCES "medical_history" ("p_ssn")
);

CREATE TABLE "immunization" (
	"p_ssn" INTEGER,
	"immunization" TEXT,
	 PRIMARY KEY ("p_ssn","immunization"),
	 CONSTRAINT "fkeycon_immunization_to_medical_history" FOREIGN KEY ("p_ssn") REFERENCES "medical_history" ("p_ssn")
);

CREATE TABLE "allergies" (
	"p_ssn" INTEGER,
	"allergy" TEXT,
	 PRIMARY KEY ("p_ssn","allergy"),
	 CONSTRAINT "fkeycon_allergies_to_medical_history" FOREIGN KEY ("p_ssn") REFERENCES "medical_history" ("p_ssn")
);

CREATE TABLE "covid_screen" (
	"date" TEXT,
	"p_ssn" INTEGER,
	"shortness_breath" INTEGER,
	"new_cough" INTEGER,
	"fever" INTEGER,
	"sore_throat" INTEGER,
	"runny_nose" INTEGER,
	"has_passed" INTEGER,
	 PRIMARY KEY ("date","p_ssn"),
	 CONSTRAINT "fkeycon_covid_screen_to_patient" FOREIGN KEY ("p_ssn") REFERENCES "patient" ("p_ssn")
);

CREATE TABLE "new_applicant_form" (
	"p_ssn" INTEGER,
	"email" TEXT,
	"gender" TEXT,
	"sex" TEXT,
	"phone" TEXT,
	"fname" TEXT,
	"initial" TEXT,
	"lname" TEXT,
	"healthcare_no" TEXT,
	"hcn_expiry" TEXT,
	"hcn_province" TEXT,
	"dob" TEXT,
	"is_approved" INTEGER,
	 PRIMARY KEY ("p_ssn"),
	 CONSTRAINT "fkeycon_new_applicant_form_to_patient" FOREIGN KEY ("p_ssn") REFERENCES "patient" ("p_ssn")
);

CREATE TABLE "medical_centre" (
	"name" TEXT,
	"address" TEXT,
	"type" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "clerk" (
	"ssn" INTEGER,
	"fname" TEXT,
	"lname" TEXT,
	"initial" TEXT,
	"dob" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("ssn")
);

CREATE TABLE "authorizes" (
	"p_ssn" INTEGER,
	"ssn" INTEGER,
	 PRIMARY KEY ("p_ssn","ssn"),
	 CONSTRAINT "fkeycon_authorizes_to_clerk" FOREIGN KEY ("ssn") REFERENCES "clerk" ("ssn"),
	 CONSTRAINT "fkeycon_authorizes_to_new_applicant_form" FOREIGN KEY ("p_ssn") REFERENCES "new_applicant_form" ("p_ssn")
);

CREATE TABLE "doctor" (
	"ssn" INTEGER,
	"specialization" TEXT,
	"fname" TEXT,
	"lname" TEXT,
	"initial" TEXT,
	"dob" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("ssn")
);

CREATE TABLE "report" (
	"report_id" INTEGER,
	"p_ssn" INTEGER,
	"ssn" INTEGER,
	"complaint" TEXT,
	 PRIMARY KEY ("report_id","p_ssn"),
	 CONSTRAINT "fkeycon_report_to_doctor" FOREIGN KEY ("ssn") REFERENCES "doctor" ("ssn"),
	 CONSTRAINT "fkeycon_report_to_patient" FOREIGN KEY ("p_ssn") REFERENCES "patient" ("p_ssn")
);

CREATE TABLE "diagnoses" (
	"illness_name" TEXT,
	"report_id" INTEGER,
	"p_ssn" INTEGER,
	 PRIMARY KEY ("illness_name","report_id","p_ssn"),
	 CONSTRAINT "fkeycon_diagnoses_to_report" FOREIGN KEY ("report_id","p_ssn") REFERENCES "report" ("report_id","p_ssn"),
	 CONSTRAINT "fkeycon_diagnoses_to_illness" FOREIGN KEY ("illness_name") REFERENCES "illness" ("name")
);

CREATE TABLE "prescribes" (
	"med_name" TEXT,
	"report_id" INTEGER,
	"p_ssn" INTEGER,
	 PRIMARY KEY ("med_name","report_id","p_ssn"),
	 CONSTRAINT "fkeycon_prescribes_to_report" FOREIGN KEY ("report_id","p_ssn") REFERENCES "report" ("report_id","p_ssn"),
	 CONSTRAINT "fkeycon_prescribes_to_medication" FOREIGN KEY ("med_name") REFERENCES "medication" ("name")
);

CREATE TABLE "assigned" (
	"report_id" INTEGER,
	"p_ssn" INTEGER,
	"medcenter_name" TEXT,
	 PRIMARY KEY ("report_id","p_ssn","medcenter_name"),
	 CONSTRAINT "fkeycon_assigned_to_report" FOREIGN KEY ("report_id","p_ssn") REFERENCES "report" ("report_id","p_ssn"),
	 CONSTRAINT "fkeycon_assigned_to_medical_centre" FOREIGN KEY ("medcenter_name") REFERENCES "medical_centre" ("name")
);

CREATE TABLE "works_at" (
	"loc_name" TEXT,
	"ssn" INTEGER,
	 PRIMARY KEY ("loc_name","ssn"),
	 CONSTRAINT "fkeycon_works_at_to_medical_centre" FOREIGN KEY ("loc_name") REFERENCES "medical_centre" ("name"),
	 CONSTRAINT "fkeycon_works_at_to_doctor" FOREIGN KEY ("ssn") REFERENCES "doctor" ("ssn")
);
