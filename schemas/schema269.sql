DROP DATABASE IF EXISTS "schema269";
CREATE DATABASE "schema269";
USE "schema269";
CREATE TABLE "tutor" (
	"tutor_id" VARCHAR,
	"forename" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("tutor_id")
);

CREATE TABLE "module" (
	"module_code" VARCHAR,
	"module_year" VARCHAR,
	"module_name" VARCHAR,
	 PRIMARY KEY ("module_code","module_year")
);

CREATE TABLE "class" (
	"class_id" VARCHAR,
	"class_name" VARCHAR,
	"location" VARCHAR,
	"date_time" TIMESTAMP,
	"duration" INTERVAL,
	"class_type" VARCHAR,
	"qr_string" VARCHAR,
	"module_code" VARCHAR,
	"module_year" VARCHAR,
	"tutor_id" VARCHAR,
	 PRIMARY KEY ("class_id"),
	 CONSTRAINT "fkeycon_class_to_module" FOREIGN KEY ("module_code","module_year") REFERENCES "module" ("module_code","module_year"),
	 CONSTRAINT "fkeycon_class_to_tutor" FOREIGN KEY ("tutor_id") REFERENCES "tutor" ("tutor_id")
);

CREATE TABLE "student" (
	"student_id" VARCHAR,
	"forename" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("student_id")
);

CREATE TABLE "student_class" (
	"student_id" VARCHAR,
	"class_id" VARCHAR,
	"attended" BOOLEAN,
	 PRIMARY KEY ("student_id","class_id"),
	 CONSTRAINT "fkeycon_student_class_to_class" FOREIGN KEY ("class_id") REFERENCES "class" ("class_id"),
	 CONSTRAINT "fkeycon_student_class_to_student" FOREIGN KEY ("student_id") REFERENCES "student" ("student_id")
);
