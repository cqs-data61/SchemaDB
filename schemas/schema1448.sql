DROP DATABASE IF EXISTS "schema1448";
CREATE DATABASE "schema1448";
USE "schema1448";
CREATE TABLE "admin" (
	"admin_id" INTEGER,
	"admin_name" TEXT,
	"admin_pwd" TEXT,
	"role" TEXT,
	 PRIMARY KEY ("admin_id")
);

CREATE TABLE "subject" (
	"subject_id" INTEGER,
	"subject_name" TEXT,
	"subject_modify_date" TIMESTAMP,
	"admin_id" INTEGER,
	 PRIMARY KEY ("subject_id"),
	 CONSTRAINT "fkeycon_subject_to_admin" FOREIGN KEY ("admin_id") REFERENCES "admin" ("admin_id")
);

CREATE TABLE "student" (
	"student_id" INTEGER,
	"student_name" TEXT,
	"student_email" TEXT,
	"student_pwd" TEXT,
	"student_modify_date" TIMESTAMP,
	"role" TEXT,
	"admin_id" INTEGER,
	 PRIMARY KEY ("student_id"),
	 CONSTRAINT "fkeycon_student_to_admin" FOREIGN KEY ("admin_id") REFERENCES "admin" ("admin_id")
);

CREATE TABLE "lecturer" (
	"lect_id" INTEGER,
	"lect_name" TEXT,
	"lect_email" TEXT,
	"lect_pwd" TEXT,
	"lecturer_modify_date" TIMESTAMP,
	"role" TEXT,
	"admin_id" INTEGER,
	 PRIMARY KEY ("lect_id"),
	 CONSTRAINT "fkeycon_lecturer_to_admin" FOREIGN KEY ("admin_id") REFERENCES "admin" ("admin_id")
);

CREATE TABLE "lecturer_workload" (
	"workload_id" INTEGER,
	"subject_id" INTEGER,
	"lect_id" INTEGER,
	 PRIMARY KEY ("workload_id"),
	 CONSTRAINT "fkeycon_lecturer_workload_to_subject" FOREIGN KEY ("subject_id") REFERENCES "subject" ("subject_id"),
	 CONSTRAINT "fkeycon_lecturer_workload_to_lecturer" FOREIGN KEY ("lect_id") REFERENCES "lecturer" ("lect_id")
);

CREATE TABLE "quiz_obj" (
	"quizobj_id" INTEGER,
	"quizobj_questions" TEXT,
	"quiz_answera" INTEGER,
	"quiz_answerb" INTEGER,
	"quiz_answerc" INTEGER,
	"quiz_answerd" INTEGER,
	"quiz_correct_ans" TEXT,
	"quizobj_modify_date" TIMESTAMP,
	"workload_id" INTEGER,
	 PRIMARY KEY ("quizobj_id"),
	 CONSTRAINT "fkeycon_quiz_obj_to_lecturer_workload" FOREIGN KEY ("workload_id") REFERENCES "lecturer_workload" ("workload_id")
);

CREATE TABLE "quiz_tf" (
	"quiztf_id" INTEGER,
	"quiztf_true" INTEGER,
	"quiztf_modify_date" TIMESTAMP,
	"quiztf_questions" TEXT,
	"workload_id" INTEGER,
	 PRIMARY KEY ("quiztf_id"),
	 CONSTRAINT "fkeycon_quiz_tf_to_lecturer_workload" FOREIGN KEY ("workload_id") REFERENCES "lecturer_workload" ("workload_id")
);

CREATE TABLE "subject_registered" (
	"subj_reg_id" INTEGER,
	"quiztf_mark" INTEGER,
	"quizobj_mark" INTEGER,
	"workload_id" INTEGER,
	"student_id" INTEGER,
	 PRIMARY KEY ("subj_reg_id"),
	 CONSTRAINT "fkeycon_subject_registered_to_lecturer_workload" FOREIGN KEY ("workload_id") REFERENCES "lecturer_workload" ("workload_id"),
	 CONSTRAINT "fkeycon_subject_registered_to_student" FOREIGN KEY ("student_id") REFERENCES "student" ("student_id")
);
