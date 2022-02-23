DROP DATABASE IF EXISTS "schema1831";
CREATE DATABASE "schema1831";
USE "schema1831";
CREATE TABLE "students" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"allergies" TEXT,
	"additional_info" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "programs" (
	"id" SERIAL,
	"price" INTEGER,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"weekday" ENUM,
	"start_time_minutes" INTEGER,
	"duration_minutes" INTEGER,
	"space_total" INTEGER,
	"space_available" INTEGER,
	"volunteer_space_total" INTEGER,
	"volunteer_space_available" INTEGER,
	"is_archived" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "program_translations" (
	"program_id" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"language" ENUM,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("program_id"),
	 CONSTRAINT "fkeycon_program_translations_to_programs" FOREIGN KEY ("program_id") REFERENCES "programs" ("id")
);

CREATE TABLE "verification_requests" (
	"id" SERIAL,
	"identifier" TEXT,
	"token" TEXT,
	"expires" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" TEXT,
	"email" TEXT,
	"email_verified" DATETIME,
	"image" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teachers" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_teachers_to_users" FOREIGN KEY ("id") REFERENCES "users" ("id")
);

CREATE TABLE "teacher_regs" (
	"teacher_id" INTEGER,
	"program_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("program_id","teacher_id"),
	 CONSTRAINT "fkeycon_teacher_regs_to_teachers" FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id"),
	 CONSTRAINT "fkeycon_teacher_regs_to_programs" FOREIGN KEY ("program_id") REFERENCES "programs" ("id")
);

CREATE TABLE "program_admins" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_program_admins_to_users" FOREIGN KEY ("id") REFERENCES "users" ("id")
);

CREATE TABLE "volunteers" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"phone_number" VARCHAR,
	"is_valid" BOOLEAN,
	"background_form_link" TEXT,
	"address_line1" TEXT,
	"address_line2" TEXT,
	"postal_code" VARCHAR,
	"city_name" TEXT,
	"province" ENUM,
	"preferred_language" ENUM,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_volunteers_to_users" FOREIGN KEY ("id") REFERENCES "users" ("id")
);

CREATE TABLE "volunteer_regs" (
	"volunteer_id" INTEGER,
	"program_id" INTEGER,
	"is_valid" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("volunteer_id","program_id"),
	 CONSTRAINT "fkeycon_volunteer_regs_to_programs" FOREIGN KEY ("program_id") REFERENCES "programs" ("id"),
	 CONSTRAINT "fkeycon_volunteer_regs_to_volunteers" FOREIGN KEY ("volunteer_id") REFERENCES "volunteers" ("id")
);

CREATE TABLE "parents" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"phone_number" VARCHAR,
	"is_low_income" BOOLEAN,
	"address_line1" TEXT,
	"address_line2" TEXT,
	"postal_code" VARCHAR,
	"city_name" VARCHAR,
	"province" ENUM,
	"preferred_language" ENUM,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_parents_to_users" FOREIGN KEY ("id") REFERENCES "users" ("id")
);

CREATE TABLE "parent_regs" (
	"parent_id" INTEGER,
	"student_id" INTEGER,
	"program_id" INTEGER,
	"is_valid" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("student_id","program_id"),
	 CONSTRAINT "fkeycon_parent_regs_to_students" FOREIGN KEY ("student_id") REFERENCES "students" ("id"),
	 CONSTRAINT "fkeycon_parent_regs_to_programs" FOREIGN KEY ("program_id") REFERENCES "programs" ("id"),
	 CONSTRAINT "fkeycon_parent_regs_to_parents" FOREIGN KEY ("parent_id") REFERENCES "parents" ("id")
);

CREATE TABLE "parent_of_students" (
	"parent_id" INTEGER,
	"student_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("student_id","parent_id"),
	 CONSTRAINT "fkeycon_parent_of_students_to_parents" FOREIGN KEY ("parent_id") REFERENCES "parents" ("id"),
	 CONSTRAINT "fkeycon_parent_of_students_to_students" FOREIGN KEY ("student_id") REFERENCES "students" ("id")
);

CREATE TABLE "program_waitlists" (
	"program_id" INTEGER,
	"parent_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("parent_id","program_id"),
	 CONSTRAINT "fkeycon_program_waitlists_to_programs" FOREIGN KEY ("program_id") REFERENCES "programs" ("id"),
	 CONSTRAINT "fkeycon_program_waitlists_to_parents" FOREIGN KEY ("parent_id") REFERENCES "parents" ("id")
);

CREATE TABLE "coupon_users" (
	"program_id" INTEGER,
	"parent_id" INTEGER,
	"coupon_id" TEXT,
	 PRIMARY KEY ("parent_id","program_id"),
	 CONSTRAINT "fkeycon_coupon_users_to_parents" FOREIGN KEY ("parent_id") REFERENCES "parents" ("id"),
	 CONSTRAINT "fkeycon_coupon_users_to_programs" FOREIGN KEY ("program_id") REFERENCES "programs" ("id")
);
