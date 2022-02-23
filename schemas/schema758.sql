DROP DATABASE IF EXISTS "schema758";
CREATE DATABASE "schema758";
USE "schema758";
CREATE TABLE "tasks" (
	"taskid" SERIAL,
	"assigner" INT,
	"reciever" INT,
	"title" TEXT,
	"body" TEXT,
	"currentstatus" INTEGER,
	"evidencelocation" TEXT,
	 PRIMARY KEY ("taskid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"usertype" INT,
	"username" VARCHAR,
	"userpassword" VARCHAR,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"manager" INT,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "usertypes" (
	"usertypeid" SERIAL,
	"typename" VARCHAR,
	 PRIMARY KEY ("usertypeid")
);
