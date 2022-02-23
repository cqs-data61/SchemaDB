DROP DATABASE IF EXISTS "schema1720";
CREATE DATABASE "schema1720";
USE "schema1720";
CREATE TABLE "user_visit_log" (
	"id" INT,
	"token" VARCHAR,
	"ip" VARCHAR,
	"language" CHAR,
	"user_agent" VARCHAR,
	"user_id" INT,
	"visit_time" INT,
	"browser" VARCHAR,
	"os" VARCHAR
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"confirmation_token" VARCHAR,
	"status" INT,
	"superadmin" SMALLINT,
	"created_at" INT,
	"updated_at" INT,
	"registration_ip" VARCHAR,
	"bind_to_ip" VARCHAR,
	"email" VARCHAR,
	"email_confirmed" SMALLINT
);

CREATE TABLE "stateoffice" (
	"idstateoffice" INT,
	"state" VARCHAR
);

CREATE TABLE "sendoffice" (
	"fkprofile" INT,
	"fkoffice" INT
);

CREATE TABLE "profile" (
	"idprofile" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"gender" VARCHAR,
	"birthdate" DATE,
	"phone" VARCHAR,
	"address" VARCHAR,
	"photo" VARCHAR,
	"review" TEXT,
	"fkjobtitle" INT,
	"fkworksin" INT,
	"fkuser" INT
);

CREATE TABLE "officefile" (
	"idoffice" INT,
	"idfile" INT
);

CREATE TABLE "office" (
	"idoffice" INT,
	"expedient" VARCHAR,
	"nooffice" INT,
	"subject" VARCHAR,
	"creationdate" DATETIME,
	"category" VARCHAR,
	"fkstateoffice" INT,
	"fkadministrativeunit" INT,
	"shifteddate" DATETIME,
	"fkto" INT,
	"reviseddate" DATETIME,
	"observations" TEXT,
	"tracing" TEXT
);

CREATE TABLE "notifications" (
	"idnotifications" INT,
	"title" VARCHAR,
	"message" VARCHAR,
	"datatime" DATETIME,
	"read" TINYINT,
	"fkprofile" INT,
	"fkoffice" INT,
	"fkadministrativeunit" INT
);

CREATE TABLE "jobtitle" (
	"idjobtitle" INT,
	"jobtitle" VARCHAR
);

CREATE TABLE "guest" (
	"idguest" INT,
	"email" VARCHAR,
	"nameandlastname" VARCHAR,
	"code" VARCHAR,
	"fkoffice" INT
);

CREATE TABLE "file" (
	"idfile" INT,
	"name" VARCHAR,
	"file" VARCHAR,
	"format" VARCHAR,
	"size" VARCHAR
);

CREATE TABLE "auth_rule" (
	"name" VARCHAR,
	"data" TEXT,
	"created_at" INT,
	"updated_at" INT
);

CREATE TABLE "auth_item_group" (
	"code" VARCHAR,
	"name" VARCHAR,
	"created_at" INT,
	"updated_at" INT
);

CREATE TABLE "auth_item_child" (
	"parent" VARCHAR,
	"child" VARCHAR
);

CREATE TABLE "auth_item" (
	"name" VARCHAR,
	"type" INT,
	"description" TEXT,
	"rule_name" VARCHAR,
	"data" TEXT,
	"created_at" INT,
	"updated_at" INT,
	"group_code" VARCHAR
);

CREATE TABLE "auth_assignment" (
	"item_name" VARCHAR,
	"user_id" INT,
	"created_at" INT
);

CREATE TABLE "administrativeunit" (
	"idadministrativeunit" INT,
	"image" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"note" VARCHAR,
	"fkheadline" INT
);
