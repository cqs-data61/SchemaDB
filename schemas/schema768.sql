DROP DATABASE IF EXISTS "schema768";
CREATE DATABASE "schema768";
USE "schema768";
CREATE TABLE "codes" (
	"id" INTEGER,
	"code" VARCHAR,
	"displayname" VARCHAR,
	"codesystem" VARCHAR,
	"codesystemoid" VARCHAR,
	"active" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "valuesets" (
	"id" INTEGER,
	"code" VARCHAR,
	"displayname" VARCHAR,
	"codesystemname" VARCHAR,
	"codesystemversion" VARCHAR,
	"codesystem" VARCHAR,
	"tty" VARCHAR,
	"valuesetname" VARCHAR,
	"valuesetoid" VARCHAR,
	"valuesettype" VARCHAR,
	"valuesetdefinitionversion" VARCHAR,
	"valuesetsteward" VARCHAR,
	 PRIMARY KEY ("id")
);
