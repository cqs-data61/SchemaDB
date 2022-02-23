DROP DATABASE IF EXISTS "schema13";
CREATE DATABASE "schema13";
USE "schema13";
CREATE TABLE "clinics_timings" (
	"c_id" INT,
	"day" VARCHAR,
	"start" TIME,
	"end" TIME,
	 PRIMARY KEY ("c_id","day","start","end")
);

CREATE TABLE "pharmacies" (
	"pharma_id" INT,
	"pharma_name" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("pharma_id")
);

CREATE TABLE "login_pharmacies" (
	"_id" INT,
	"pharma_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("_id","username"),
	 CONSTRAINT "login_pharmacies_ibfk_1" FOREIGN KEY ("pharma_id") REFERENCES "pharmacies" ("pharma_id")
);

CREATE TABLE "clinics" (
	"c_id" INT,
	"c_name" VARCHAR,
	"c_address" VARCHAR,
	"c_phone" VARCHAR,
	 PRIMARY KEY ("c_id")
);

CREATE TABLE "login_clinics" (
	"_id" INT,
	"c_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("_id","username"),
	 CONSTRAINT "login_clinics_ibfk_1" FOREIGN KEY ("c_id") REFERENCES "clinics" ("c_id")
);

CREATE TABLE "patients" (
	"p_id" INT,
	"p_name" VARCHAR,
	"sex" ENUM,
	"age" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("p_id")
);

CREATE TABLE "medical_histories" (
	"mh_id" INT,
	"p_id" INT,
	"allergies" VARCHAR,
	"diabetes" VARCHAR,
	"bp" VARCHAR,
	"infectious_diseases" VARCHAR,
	"family_history" VARCHAR,
	"surgical_history" VARCHAR,
	 PRIMARY KEY ("mh_id"),
	 CONSTRAINT "medical_histories_ibfk_1" FOREIGN KEY ("p_id") REFERENCES "patients" ("p_id")
);

CREATE TABLE "login_patients" (
	"_id" INT,
	"p_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("_id","username"),
	 CONSTRAINT "login_patients_ibfk_1" FOREIGN KEY ("p_id") REFERENCES "patients" ("p_id")
);

CREATE TABLE "doctors" (
	"d_id" INT,
	"d_name" VARCHAR,
	"specialization" VARCHAR,
	"fee" INT,
	"contact" VARCHAR,
	 PRIMARY KEY ("d_id")
);

CREATE TABLE "reports" (
	"report_id" INT,
	"p_id" INT,
	"d_id" INT,
	"symptoms" VARCHAR,
	"illness" VARCHAR,
	"tests_required" VARCHAR,
	"test_reports" VARCHAR,
	 PRIMARY KEY ("report_id"),
	 CONSTRAINT "reports_ibfk_2" FOREIGN KEY ("d_id") REFERENCES "doctors" ("d_id"),
	 CONSTRAINT "reports_ibfk_1" FOREIGN KEY ("p_id") REFERENCES "patients" ("p_id")
);

CREATE TABLE "prescriptions" (
	"prescription_id" INT,
	"p_id" INT,
	"d_id" INT,
	"meds" VARCHAR,
	 PRIMARY KEY ("prescription_id"),
	 CONSTRAINT "prescriptions_ibfk_2" FOREIGN KEY ("d_id") REFERENCES "doctors" ("d_id"),
	 CONSTRAINT "prescriptions_ibfk_1" FOREIGN KEY ("p_id") REFERENCES "patients" ("p_id")
);

CREATE TABLE "login_doctors" (
	"_id" INT,
	"d_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("_id","username"),
	 CONSTRAINT "login_doctors_ibfk_1" FOREIGN KEY ("d_id") REFERENCES "doctors" ("d_id")
);

CREATE TABLE "clinic_doctors" (
	"d_id" INT,
	"c_id" INT,
	"salary" INT,
	"joining_date" DATE,
	 PRIMARY KEY ("d_id","c_id"),
	 CONSTRAINT "clinic_doctors_ibfk_2" FOREIGN KEY ("c_id") REFERENCES "clinics" ("c_id"),
	 CONSTRAINT "clinic_doctors_ibfk_1" FOREIGN KEY ("d_id") REFERENCES "doctors" ("d_id")
);

CREATE TABLE "schedules" (
	"schedule_id" INT,
	"d_id" INT,
	"c_id" INT,
	"day" VARCHAR,
	"start" TIME,
	"end" TIME,
	 PRIMARY KEY ("schedule_id"),
	 CONSTRAINT "fk_d_id" FOREIGN KEY ("d_id") REFERENCES "doctors" ("d_id"),
	 CONSTRAINT "schedules_ibfk_1" FOREIGN KEY ("c_id") REFERENCES "clinics" ("c_id")
);

CREATE TABLE "appointments" (
	"a_id" INT,
	"p_id" INT,
	"d_id" INT,
	"c_id" INT,
	"schedule" DATETIME,
	"description" VARCHAR,
	 PRIMARY KEY ("a_id"),
	 CONSTRAINT "appointments_ibfk_1" FOREIGN KEY ("p_id") REFERENCES "patients" ("p_id"),
	 CONSTRAINT "appointments_ibfk_3" FOREIGN KEY ("c_id") REFERENCES "clinics" ("c_id"),
	 CONSTRAINT "appointments_ibfk_2" FOREIGN KEY ("d_id") REFERENCES "doctors" ("d_id")
);
