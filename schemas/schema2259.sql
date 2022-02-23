DROP DATABASE IF EXISTS "schema2259";
CREATE DATABASE "schema2259";
USE "schema2259";
CREATE TABLE "record_attribute" (
	"id" INTEGER,
	"busy" BOOL,
	"del" BOOL,
	"secret" BOOL,
	"dirty" BOOL
);

CREATE TABLE "db_meta" (
	"id" INTEGER,
	"name" TEXT,
	"version" INTEGER,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	"backup" BOOL,
	"backup" BOOL,
	"modnum" INTEGER,
	"type" TEXT,
	"creator" TEXT,
	"resdb" BOOL,
	"readonly" BOOL,
	"appinfodirty" BOOL,
	"oktoinstallnewer" BOOL,
	"resetafterinstall" BOOL,
	"copyprevention" BOOL,
	"stream" BOOL,
	"hidden" BOOL,
	"launchabledata" BOOL,
	"recyclable" BOOL,
	"bundle" BOOL,
	"opendb" BOOL
);

CREATE TABLE "categories" (
	"id" INTEGER,
	"name" TEXT
);
