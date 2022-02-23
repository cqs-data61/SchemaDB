DROP DATABASE IF EXISTS "schema1673";
CREATE DATABASE "schema1673";
USE "schema1673";
CREATE TABLE "trainers" (
	"trainerid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"subject" VARCHAR,
	 PRIMARY KEY ("trainerid")
);

CREATE TABLE "students" (
	"studentid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"dateofbirth" DATE,
	"tuitionfees" DECIMAL,
	 PRIMARY KEY ("studentid")
);

CREATE TABLE "courses" (
	"courseid" INT,
	"title" VARCHAR,
	"stream" VARCHAR,
	"type" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	 PRIMARY KEY ("courseid")
);

CREATE TABLE "courses_have_trainers" (
	"courseid" INT,
	"trainerid" INT,
	 PRIMARY KEY ("courseid","trainerid"),
	 CONSTRAINT "fk_trainerId" FOREIGN KEY ("trainerid") REFERENCES "trainers" ("trainerid"),
	 CONSTRAINT "fk_courseId" FOREIGN KEY ("courseid") REFERENCES "courses" ("courseid")
);

CREATE TABLE "courses_have_students" (
	"courseid" INT,
	"studentid" INT,
	 PRIMARY KEY ("courseid","studentid"),
	 CONSTRAINT "courseId" FOREIGN KEY ("courseid") REFERENCES "courses" ("courseid"),
	 CONSTRAINT "studentId" FOREIGN KEY ("studentid") REFERENCES "students" ("studentid")
);

CREATE TABLE "assignments" (
	"assignmentid" INT,
	"title" VARCHAR,
	"description" TEXT,
	"subdatetime" DATE,
	"oralmark" INT,
	"totalmark" INT,
	"courseid" INT,
	 PRIMARY KEY ("assignmentid"),
	 CONSTRAINT "fk_Assignments_Courses1" FOREIGN KEY ("courseid") REFERENCES "courses" ("courseid")
);
