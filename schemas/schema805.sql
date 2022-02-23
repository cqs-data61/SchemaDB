DROP DATABASE IF EXISTS "schema805";
CREATE DATABASE "schema805";
USE "schema805";
CREATE TABLE "widget_type" (
	"id" INT,
	"description" CHAR,
	"config" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "widget" (
	"id" INTEGER,
	"type" INTEGER,
	"data" LONGTEXT,
	"widget_order" INTEGER,
	"tab_id" INTEGER
);

CREATE TABLE "tab" (
	"id" INTEGER,
	"label" CHARACTER VARYING,
	"tab_order" INTEGER
);
