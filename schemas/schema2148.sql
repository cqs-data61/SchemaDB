DROP DATABASE IF EXISTS "schema2148";
CREATE DATABASE "schema2148";
USE "schema2148";
CREATE TABLE "useraccounts" (
	"acc_id" VARCHAR,
	"firstname" TEXT,
	"middlename" TEXT,
	"lastname" TEXT,
	"username" TEXT,
	"password" TEXT,
	"role" TEXT,
	"status" TEXT,
	"create_at" VARCHAR,
	"ispaswordchanged" INT
);

CREATE TABLE "tuition_fee" (
	"tf_id" INT,
	"grade_level" TEXT,
	"tuition_fee" DOUBLE,
	"mode_of_payment" TEXT,
	"sy_id" INT
);

CREATE TABLE "timestamp" (
	"timestamp_id" INT,
	"start_time" TIME,
	"end_time" TIME
);

CREATE TABLE "subjectype" (
	"sub_type_id" INT,
	"subject_type" VARCHAR
);

CREATE TABLE "subjects" (
	"subject_id" INT,
	"grade_level" TEXT,
	"subject_name" TEXT,
	"subject_type_id" INT
);

CREATE TABLE "stud_history_details" (
	"stud_his_id" INT,
	"sno" VARCHAR,
	"nameschool" TEXT,
	"past_school_add" TEXT,
	"past_level" VARCHAR,
	"year_attended" VARCHAR,
	"iscompletedvacine" VARCHAR,
	"vacination_details" TEXT
);

CREATE TABLE "student_reservepay" (
	"reservepay" INT,
	"sno" VARCHAR,
	"payment" FLOAT,
	"syid" INT
);

CREATE TABLE "student_grades" (
	"studentgrade_id" INT,
	"sno" VARCHAR,
	"grade_first" DOUBLE,
	"grade_second" DOUBLE,
	"grade_third" DOUBLE,
	"grade_fourth" DECIMAL,
	"avg" DOUBLE,
	"subject_id" INT,
	"sect_id" INT,
	"teacher_id" INT,
	"sy_id" INT
);

CREATE TABLE "student_family_details" (
	"student_fam_id" INT,
	"sno" VARCHAR,
	"father_name" VARCHAR,
	"father_no" VARCHAR,
	"father_occu" VARCHAR,
	"father_comp_name" VARCHAR,
	"father_ctel_no" VARCHAR,
	"father_office_address" TEXT,
	"mother_name" VARCHAR,
	"mother_no" VARCHAR,
	"mother_occu" VARCHAR,
	"mother_comp_name" TEXT,
	"mother_ctel_no" VARCHAR,
	"mother_office_add" TEXT,
	"guardian_name" VARCHAR,
	"guardian_add" TEXT,
	"guardian_relation" VARCHAR,
	"guardian_no" VARCHAR,
	"parent_status" VARCHAR
);

CREATE TABLE "student_detail" (
	"student_id" INT,
	"sno" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"middlename" VARCHAR,
	"gender" VARCHAR,
	"age" INT,
	"birthdate" VARCHAR,
	"pob" VARCHAR,
	"contact_no" VARCHAR,
	"nationality" VARCHAR,
	"religion" VARCHAR,
	"address" TEXT,
	"studentype" VARCHAR
);

CREATE TABLE "student_balance" (
	"balance_id" INT,
	"sno" VARCHAR,
	"balance" DOUBLE,
	"totalpayment" DOUBLE,
	"modeofpayment" VARCHAR,
	"need_to_pay" DOUBLE,
	"disc" FLOAT,
	"upon_pay" FLOAT,
	"sy_id" INT
);

CREATE TABLE "students_requirement" (
	"student_req_id" INT,
	"student_no" VARCHAR,
	"req_id" INT
);

CREATE TABLE "studentenrolledinfo" (
	"studentenrolled_id" INT,
	"sno" VARCHAR,
	"grade_level" VARCHAR,
	"sect_id" INT,
	"is_enrolled" INT,
	"sy_id" INT
);

CREATE TABLE "specialization" (
	"teacher_id" INT,
	"acc_id" VARCHAR,
	"subject_id" INT,
	"teaching_type" VARCHAR
);

CREATE TABLE "sections" (
	"sect_id" INT,
	"grade_level" TEXT,
	"teacher_id" INT,
	"section_name" TEXT,
	"limit_capacity" INT,
	"sy_id" INT
);

CREATE TABLE "school_year" (
	"id" INT,
	"school_year" VARCHAR,
	"sy_status" VARCHAR
);

CREATE TABLE "school_requirements" (
	"req_id" INT,
	"type_of_student" TEXT,
	"requirement_name" TEXT
);

CREATE TABLE "sched_section" (
	"ss_id" INT,
	"timestamp_id" INT,
	"subject_id" INT,
	"teacher_id" INT,
	"classroom_id" INT,
	"sect_id" INT,
	"sy_id" INT
);

CREATE TABLE "orno" (
	"orno" INT,
	"oror" VARCHAR,
	"sno" VARCHAR,
	"amount" FLOAT,
	"date_pay" VARCHAR,
	"syid" INT
);

CREATE TABLE "misc_fee" (
	"miscfee_id" INT,
	"details" TEXT,
	"price" INT,
	"grade_level" TEXT,
	"sy_id" INT
);

CREATE TABLE "grade_level" (
	"gradelvl_id" INT,
	"grade_type" TEXT,
	"grade_level" TEXT,
	"sy_id" INT
);

CREATE TABLE "enrollment_schedule" (
	"enrollment_sched_id" INT,
	"start_date" TEXT,
	"end_date" TEXT,
	"is_open" INT,
	"sy_id" INT
);

CREATE TABLE "classroom_type" (
	"classroom_type_id" INT,
	"name" VARCHAR
);

CREATE TABLE "classroom" (
	"classroom_id" INT,
	"classroom_type" INT,
	"classroom_no" INT
);

CREATE TABLE "audit_trail" (
	"audit_id" INT,
	"date_time" VARCHAR,
	"user" TEXT,
	"action" TEXT,
	"user_type" TEXT,
	"username" TEXT
);
