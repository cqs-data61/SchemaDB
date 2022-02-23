DROP DATABASE IF EXISTS "schema839";
CREATE DATABASE "schema839";
USE "schema839";
CREATE TABLE "competition" (
	"cid" INTEGER,
	"cname" VARCHAR,
	"start" DATE,
	"stop" DATE,
	"win_condition" INTEGER,
	 PRIMARY KEY ("cid")
);

CREATE TABLE "cardio_exercise" (
	"eid" INTEGER,
	"speed" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "strength_exercise" (
	"eid" INTEGER,
	"sets" INTEGER,
	"reps" INTEGER,
	"weight" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "exercise" (
	"eid" INTEGER,
	"ename" VARCHAR,
	"cal_expend_per_lb" REAL,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "workout_program" (
	"wid" INTEGER,
	"wname" VARCHAR,
	 PRIMARY KEY ("wid")
);

CREATE TABLE "uses" (
	"wid" INTEGER,
	"eid" INTEGER,
	 PRIMARY KEY ("wid","eid"),
	 CONSTRAINT "fkeycon_uses_to_workout_program" FOREIGN KEY ("wid") REFERENCES "workout_program" ("wid"),
	 CONSTRAINT "fkeycon_uses_to_exercise" FOREIGN KEY ("eid") REFERENCES "exercise" ("eid")
);

CREATE TABLE "diet" (
	"did" INTEGER,
	"dname" VARCHAR,
	 PRIMARY KEY ("did")
);

CREATE TABLE "food" (
	"fid" INTEGER,
	"fname" VARCHAR,
	"calories" INTEGER,
	"serving_size" INTEGER,
	"proteins" INTEGER,
	"carbs" INTEGER,
	"fats" INTEGER,
	 PRIMARY KEY ("fid")
);

CREATE TABLE "consists_of" (
	"did" INTEGER,
	"fid" INTEGER,
	 PRIMARY KEY ("did","fid"),
	 CONSTRAINT "fkeycon_consists_of_to_food" FOREIGN KEY ("fid") REFERENCES "food" ("fid"),
	 CONSTRAINT "fkeycon_consists_of_to_diet" FOREIGN KEY ("did") REFERENCES "diet" ("did")
);

CREATE TABLE "person" (
	"email" VARCHAR,
	"pname" VARCHAR,
	"gender" CHAR,
	"dob" DATE,
	"weight" REAL,
	"height" INTEGER,
	"did" INTEGER,
	"wid" INTEGER,
	 PRIMARY KEY ("email")
);

CREATE TABLE "participates" (
	"email" VARCHAR,
	"cid" INTEGER,
	"start" DATE,
	"date_created" DATE,
	 PRIMARY KEY ("email","cid"),
	 CONSTRAINT "fkeycon_participates_to_person" FOREIGN KEY ("email") REFERENCES "person" ("email"),
	 CONSTRAINT "fkeycon_participates_to_competition" FOREIGN KEY ("cid") REFERENCES "competition" ("cid")
);
