DROP DATABASE IF EXISTS "schema653";
CREATE DATABASE "schema653";
USE "schema653";
CREATE TABLE "team_members" (
	"id" SERIAL,
	"team_id" INTEGER,
	"employee_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employees" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teams" (
	"id" SERIAL,
	"team_name" TEXT,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projects" (
	"id" SERIAL,
	"idea_id" INTEGER,
	"project_team_id" INTEGER,
	"start_datum" DATE,
	"target_datum" DATE,
	"completed" BOOLEAN,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ideas" (
	"id" SERIAL,
	"userid" INTEGER,
	"product_id" INTEGER,
	"idea" TEXT,
	"datum" DATE,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" SERIAL,
	"product" TEXT,
	"since" DATE,
	"until" DATE,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
