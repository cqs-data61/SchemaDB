DROP DATABASE IF EXISTS "schema1060";
CREATE DATABASE "schema1060";
USE "schema1060";
CREATE TABLE "manager" (
	"managerid" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sin" INT,
	 PRIMARY KEY ("managerid")
);

CREATE TABLE "secretary" (
	"secretaryid" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"hours_worked" INT,
	"pay_rate" VARCHAR,
	"sin" INT,
	"street_address" VARCHAR,
	"city_address" VARCHAR,
	"province_address" VARCHAR,
	"postal_code" VARCHAR,
	"date_of_birthday" DATE,
	"manager_managerid" INT,
	 PRIMARY KEY ("secretaryid","manager_managerid"),
	 CONSTRAINT "fk_Secretary_Manager1" FOREIGN KEY ("manager_managerid") REFERENCES "manager" ("managerid")
);

CREATE TABLE "secretary_meets_walk-in" (
	"secretary_secretaryid" INT,
	"walk-in_walk-inid" INT,
	 PRIMARY KEY ("secretary_secretaryid","walk-in_walk-inid"),
	 CONSTRAINT "fk_Secretary_has_Walk-in_Secretary1" FOREIGN KEY ("secretary_secretaryid") REFERENCES "secretary" ("secretaryid")
);

CREATE TABLE "nurse" (
	"nurseid" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"hours_worked" INT,
	"pay_rate" DECIMAL,
	"sin" INT,
	"street_address" VARCHAR,
	"city_addressa" VARCHAR,
	"province_address" VARCHAR,
	"postal_code" VARCHAR,
	"date_of_birthday" DATE,
	"certificate" VARCHAR,
	"manager_managerid" INT,
	 PRIMARY KEY ("nurseid","manager_managerid"),
	 CONSTRAINT "fk_Nurse_Manager1" FOREIGN KEY ("manager_managerid") REFERENCES "manager" ("managerid")
);

CREATE TABLE "invoice" (
	"invoiceid" INT,
	"date" DATE,
	"total" DECIMAL,
	"status" VARCHAR,
	"patient_patienceid" INT,
	 PRIMARY KEY ("invoiceid","patient_patienceid")
);

CREATE TABLE "doctor" (
	"doctorid" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sin" INT,
	"practice_number" INT,
	"street_address" VARCHAR,
	"city_address" VARCHAR,
	"province_address" VARCHAR,
	"postal_code" VARCHAR,
	"date_of_birthday" DATE,
	"manager_managerid" INT,
	 PRIMARY KEY ("doctorid","manager_managerid")
);

CREATE TABLE "walk-in" (
	"walk-inid" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sin" INT,
	"ohip_number" INT,
	"phone_number" VARCHAR,
	"date_of_birthday" DATE,
	"email_address" VARCHAR,
	"insurance_name" VARCHAR,
	"insurance_code" VARCHAR,
	"doctor_doctorid" INT,
	"info_walk-in" VARCHAR,
	 PRIMARY KEY ("walk-inid","doctor_doctorid"),
	 CONSTRAINT "fk_Walk-in_Doctor1" FOREIGN KEY ("doctor_doctorid") REFERENCES "doctor" ("doctorid")
);

CREATE TABLE "patient" (
	"patienceid" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sin" DECIMAL,
	"ohip_number" DECIMAL,
	"date_of_birthday" DATE,
	"phone_number" VARCHAR,
	"street_address" VARCHAR,
	"city_address" VARCHAR,
	"province_address" VARCHAR,
	"postal_code" VARCHAR,
	"email_address" VARCHAR,
	"family_doctor" VARCHAR,
	"insurance_name" VARCHAR,
	"insurance_code" VARCHAR,
	"nurse_nurseid" INT,
	"doctor_doctorid" INT,
	"info_patience" VARCHAR,
	 PRIMARY KEY ("patienceid","doctor_doctorid","nurse_nurseid"),
	 CONSTRAINT "fk_Patient_Nurse1" FOREIGN KEY ("nurse_nurseid") REFERENCES "nurse" ("nurseid"),
	 CONSTRAINT "fk_Patient_Doctor1" FOREIGN KEY ("doctor_doctorid") REFERENCES "doctor" ("doctorid")
);

CREATE TABLE "appointment" (
	"appointmentid" INT,
	"date" DATETIME,
	"status" VARCHAR,
	"patient_patienceid" INT,
	 PRIMARY KEY ("appointmentid","patient_patienceid")
);

CREATE TABLE "has" (
	"secretary_secretaryid" INT,
	"appointment_appointmentid" INT,
	 PRIMARY KEY ("secretary_secretaryid","appointment_appointmentid"),
	 CONSTRAINT "fk_Secretary_has_Appointment_Appointment1" FOREIGN KEY ("appointment_appointmentid") REFERENCES "appointment" ("appointmentid")
);
