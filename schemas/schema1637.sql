DROP DATABASE IF EXISTS "schema1637";
CREATE DATABASE "schema1637";
USE "schema1637";
CREATE TABLE "gym" (
	"gym_id" INTEGER,
	"gym_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	 PRIMARY KEY ("gym_id")
);

CREATE TABLE "trainers" (
	"trainer_id" INTEGER,
	"gym_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("trainer_id"),
	 CONSTRAINT "fk_Trainers_Gym_ID" FOREIGN KEY ("gym_id") REFERENCES "gym" ("gym_id")
);

CREATE TABLE "classes" (
	"class_id" INTEGER,
	"trainer_id" INTEGER,
	"gym_id" INTEGER,
	"class_name" VARCHAR,
	"commission_percentage" FLOAT,
	 PRIMARY KEY ("class_id"),
	 CONSTRAINT "fk_Classes_Trainer_ID" FOREIGN KEY ("trainer_id") REFERENCES "trainers" ("trainer_id"),
	 CONSTRAINT "fk_Classes_Gym_ID" FOREIGN KEY ("gym_id") REFERENCES "gym" ("gym_id")
);

CREATE TABLE "members" (
	"member_id" INTEGER,
	"gym_id" INTEGER,
	"trainer_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	 PRIMARY KEY ("member_id"),
	 CONSTRAINT "fk_Members_Gym_ID" FOREIGN KEY ("gym_id") REFERENCES "gym" ("gym_id"),
	 CONSTRAINT "fk_Members_Trainer_ID" FOREIGN KEY ("trainer_id") REFERENCES "trainers" ("trainer_id")
);

CREATE TABLE "class_attendance" (
	"member_id" INTEGER,
	"class_id" INTEGER,
	 PRIMARY KEY ("member_id","class_id"),
	 CONSTRAINT "fk_Class_Attendance_Class_ID" FOREIGN KEY ("class_id") REFERENCES "classes" ("class_id"),
	 CONSTRAINT "fk_Class_Attendance_Member_ID" FOREIGN KEY ("member_id") REFERENCES "members" ("member_id")
);

CREATE TABLE "payments" (
	"payment_id" INTEGER,
	"member_id" INTEGER,
	"creditcard_info" INTEGER,
	"billing_zip" INTEGER,
	 PRIMARY KEY ("payment_id"),
	 CONSTRAINT "fk_Payments_Member_ID" FOREIGN KEY ("member_id") REFERENCES "members" ("member_id")
);
