DROP DATABASE IF EXISTS "schema2453";
CREATE DATABASE "schema2453";
USE "schema2453";
CREATE TABLE "full_time_employees" (
	"eid" INTEGER,
	"monthly_salary" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "part_time_employees" (
	"eid" INTEGER,
	"num_work_hours" INTEGER,
	"hourly_rate" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "packages" (
	"package_id" SERIAL,
	"name" TEXT,
	"num_free_reg" INTEGER,
	"price" INTEGER,
	"sale_start_date" DATE,
	"sale_end_date" DATE,
	 PRIMARY KEY ("package_id")
);

CREATE TABLE "credit_cards" (
	"cc_number" VARCHAR,
	"cvv" INTEGER,
	"expiry_date" DATE,
	 PRIMARY KEY ("cc_number")
);

CREATE TABLE "customers" (
	"cust_id" SERIAL,
	"name" TEXT,
	"address" TEXT,
	"email" TEXT,
	"phone" VARCHAR,
	 PRIMARY KEY ("cust_id")
);

CREATE TABLE "owns" (
	"cc_number" VARCHAR,
	"cust_id" INTEGER,
	"owns_ts" TIMESTAMP,
	 PRIMARY KEY ("cc_number"),
	 CONSTRAINT "fkeycon_owns_to_customers" FOREIGN KEY ("cust_id") REFERENCES "customers" ("cust_id"),
	 CONSTRAINT "fkeycon_owns_to_credit_cards" FOREIGN KEY ("cc_number") REFERENCES "credit_cards" ("cc_number")
);

CREATE TABLE "buys" (
	"buys_ts" TIMESTAMP,
	"package_id" INTEGER,
	"cc_number" VARCHAR,
	"num_remain_redeem" INTEGER,
	 PRIMARY KEY ("buys_ts"),
	 CONSTRAINT "fkeycon_buys_to_owns" FOREIGN KEY ("cc_number") REFERENCES "owns" ("cc_number"),
	 CONSTRAINT "fkeycon_buys_to_packages" FOREIGN KEY ("package_id") REFERENCES "packages" ("package_id")
);

CREATE TABLE "rooms" (
	"rid" INTEGER,
	"location" TEXT,
	"seating_capacity" INTEGER,
	 PRIMARY KEY ("rid")
);

CREATE TABLE "course_areas" (
	"area_name" TEXT,
	 PRIMARY KEY ("area_name")
);

CREATE TABLE "specializes" (
	"eid" INTEGER,
	"area_name" TEXT,
	 PRIMARY KEY ("area_name","eid"),
	 CONSTRAINT "fkeycon_specializes_to_course_areas" FOREIGN KEY ("area_name") REFERENCES "course_areas" ("area_name")
);

CREATE TABLE "manages" (
	"eid" INTEGER,
	"area_name" TEXT,
	 PRIMARY KEY ("area_name","eid"),
	 CONSTRAINT "fkeycon_manages_to_course_areas" FOREIGN KEY ("area_name") REFERENCES "course_areas" ("area_name")
);

CREATE TABLE "courses" (
	"course_id" SERIAL,
	"area_name" TEXT,
	"title" TEXT,
	"description" TEXT,
	"duration" INTEGER,
	 PRIMARY KEY ("course_id"),
	 CONSTRAINT "fkeycon_courses_to_course_areas" FOREIGN KEY ("area_name") REFERENCES "course_areas" ("area_name")
);

CREATE TABLE "administrators" (
	"eid" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "offerings" (
	"course_id" INTEGER,
	"offering_id" INTEGER,
	"launch_date" DATE,
	"start_date" DATE,
	"end_date" DATE,
	"reg_deadline" DATE,
	"fees" INTEGER,
	"seating_capacity" INTEGER,
	"target_num_reg" INTEGER,
	"eid" INTEGER,
	 PRIMARY KEY ("course_id","offering_id"),
	 CONSTRAINT "fkeycon_offerings_to_administrators" FOREIGN KEY ("eid") REFERENCES "administrators" ("eid"),
	 CONSTRAINT "fkeycon_offerings_to_courses" FOREIGN KEY ("course_id") REFERENCES "courses" ("course_id")
);

CREATE TABLE "managers" (
	"eid" INTEGER,
	"course_areas" TEXT,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "instructors" (
	"eid" INTEGER,
	"num_teach_hours" INTEGER,
	"course_areas" TEXT,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "sessions" (
	"course_id" INTEGER,
	"offering_id" INTEGER,
	"session_id" INTEGER,
	"session_date" DATE,
	"start_time" TIME,
	"end_time" TIME,
	"eid" INTEGER,
	"rid" INTEGER,
	 PRIMARY KEY ("course_id","offering_id","session_id"),
	 CONSTRAINT "fkeycon_sessions_to_instructors" FOREIGN KEY ("eid") REFERENCES "instructors" ("eid"),
	 CONSTRAINT "fkeycon_sessions_to_offerings" FOREIGN KEY ("course_id","offering_id") REFERENCES "offerings" ("course_id","offering_id"),
	 CONSTRAINT "fkeycon_sessions_to_rooms" FOREIGN KEY ("rid") REFERENCES "rooms" ("rid")
);

CREATE TABLE "redeems" (
	"redeems_ts" TIMESTAMP,
	"buys_ts" TIMESTAMP,
	"course_id" INTEGER,
	"offering_id" INTEGER,
	"session_id" INTEGER,
	 PRIMARY KEY ("redeems_ts"),
	 CONSTRAINT "fkeycon_redeems_to_buys" FOREIGN KEY ("buys_ts") REFERENCES "buys" ("buys_ts"),
	 CONSTRAINT "fkeycon_redeems_to_sessions" FOREIGN KEY ("course_id","offering_id","session_id") REFERENCES "sessions" ("course_id","offering_id","session_id")
);

CREATE TABLE "registers" (
	"registers_ts" TIMESTAMP,
	"cc_number" VARCHAR,
	"course_id" INTEGER,
	"offering_id" INTEGER,
	"session_id" INTEGER,
	 PRIMARY KEY ("registers_ts"),
	 CONSTRAINT "fkeycon_registers_to_owns" FOREIGN KEY ("cc_number") REFERENCES "owns" ("cc_number"),
	 CONSTRAINT "fkeycon_registers_to_sessions" FOREIGN KEY ("course_id","offering_id","session_id") REFERENCES "sessions" ("course_id","offering_id","session_id")
);

CREATE TABLE "cancels" (
	"cancel_ts" TIMESTAMP,
	"cust_id" INTEGER,
	"course_id" INTEGER,
	"offering_id" INTEGER,
	"session_id" INTEGER,
	"refund_amt" INTEGER,
	"package_credit" BOOLEAN,
	 PRIMARY KEY ("cancel_ts"),
	 CONSTRAINT "fkeycon_cancels_to_customers" FOREIGN KEY ("cust_id") REFERENCES "customers" ("cust_id"),
	 CONSTRAINT "fkeycon_cancels_to_sessions" FOREIGN KEY ("course_id","offering_id","session_id") REFERENCES "sessions" ("course_id","offering_id","session_id")
);

CREATE TABLE "employees" (
	"eid" SERIAL,
	"ename" TEXT,
	"phone_number" VARCHAR,
	"home_address" TEXT,
	"email_address" TEXT,
	"join_date" DATE,
	"depart_date" DATE,
	"category" TEXT,
	"salary" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "salary_payment_records" (
	"eid" INTEGER,
	"ename" TEXT,
	"e_status" TEXT,
	"num_work_days" INTEGER,
	"num_work_hours" INTEGER,
	"monthly_salary" INTEGER,
	"hourly_rate" INTEGER,
	"salary_amount" INTEGER,
	"payment_date" DATE,
	 PRIMARY KEY ("eid","payment_date"),
	 CONSTRAINT "fkeycon_salary_payment_records_to_employees" FOREIGN KEY ("eid") REFERENCES "employees" ("eid")
);
