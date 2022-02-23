DROP DATABASE IF EXISTS "schema1975";
CREATE DATABASE "schema1975";
USE "schema1975";
CREATE TABLE "attendancevalidator" (
	"id" INT,
	"name" VARCHAR,
	"type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "qrcodegenerator" (
	"id" INT,
	"name" VARCHAR,
	"private_key" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "qrcode" (
	"qrcode_generator" INT,
	"attendance_validator" INT,
	"public_key" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("qrcode_generator","attendance_validator"),
	 CONSTRAINT "fkeycon_qrcode_to_attendancevalidator" FOREIGN KEY ("attendance_validator") REFERENCES "attendancevalidator" ("id"),
	 CONSTRAINT "fkeycon_qrcode_to_qrcodegenerator" FOREIGN KEY ("qrcode_generator") REFERENCES "qrcodegenerator" ("id")
);

CREATE TABLE "timerange" (
	"id" INT,
	"start" TIME,
	"end" TIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workschedule" (
	"id" INT,
	"description" VARCHAR,
	"workable" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workscheduletimerange" (
	"work_schedule" INT,
	"time_range" INT,
	"repeat_days" BIT,
	 PRIMARY KEY ("work_schedule","time_range"),
	 CONSTRAINT "fkeycon_workscheduletimerange_to_workschedule" FOREIGN KEY ("work_schedule") REFERENCES "workschedule" ("id"),
	 CONSTRAINT "fkeycon_workscheduletimerange_to_timerange" FOREIGN KEY ("time_range") REFERENCES "timerange" ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"user_role" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "overtimeworkapproval" (
	"id" INT,
	"start" TIMESTAMP,
	"end" TIMESTAMP,
	"approver" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_overtimeworkapproval_to_user" FOREIGN KEY ("approver") REFERENCES "user" ("id")
);

CREATE TABLE "company" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"name" VARCHAR,
	"user" INT,
	"company" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_user" FOREIGN KEY ("user") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_employee_to_company" FOREIGN KEY ("company") REFERENCES "company" ("id")
);

CREATE TABLE "workscheduleemployee" (
	"work_schedule" INT,
	"employee" INT,
	 PRIMARY KEY ("work_schedule","employee"),
	 CONSTRAINT "fkeycon_workscheduleemployee_to_workschedule" FOREIGN KEY ("work_schedule") REFERENCES "workschedule" ("id"),
	 CONSTRAINT "fkeycon_workscheduleemployee_to_employee" FOREIGN KEY ("employee") REFERENCES "employee" ("id")
);

CREATE TABLE "attendance" (
	"id" INT,
	"time" TIMESTAMP,
	"description" VARCHAR,
	"employee" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_attendance_to_employee" FOREIGN KEY ("employee") REFERENCES "employee" ("id")
);

CREATE TABLE "attendancevalidatorattendance" (
	"attendance_validator" INT,
	"attendence" INT,
	 PRIMARY KEY ("attendance_validator","attendence"),
	 CONSTRAINT "fkeycon_attendancevalidatorattendance_to_attendance" FOREIGN KEY ("attendence") REFERENCES "attendance" ("id"),
	 CONSTRAINT "fkeycon_attendancevalidatorattendance_to_attendancevalidator" FOREIGN KEY ("attendance_validator") REFERENCES "attendancevalidator" ("id")
);

CREATE TABLE "managerattendancesubmission" (
	"attendance" INT,
	"manager" INT,
	 PRIMARY KEY ("attendance","manager"),
	 CONSTRAINT "fkeycon_managerattendancesubmission_to_user" FOREIGN KEY ("manager") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_managerattendancesubmission_to_attendance" FOREIGN KEY ("attendance") REFERENCES "attendance" ("id")
);

CREATE TABLE "attendancecorrectionrequest" (
	"id" INT,
	"time" TIMESTAMP,
	"attendance" INT,
	"attester" INT,
	"accepted" BOOLEAN,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_attendancecorrectionrequest_to_user" FOREIGN KEY ("attester") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_attendancecorrectionrequest_to_attendance" FOREIGN KEY ("attendance") REFERENCES "attendance" ("id")
);
