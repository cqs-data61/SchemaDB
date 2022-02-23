DROP DATABASE IF EXISTS "schema986";
CREATE DATABASE "schema986";
USE "schema986";
CREATE TABLE "preference" (
	"identifier" BIGINT,
	"confirmation" BOOLEAN,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "ban" (
	"identifier" BIGINT,
	"category" INTEGER,
	 PRIMARY KEY ("identifier","category")
);

CREATE TABLE "premium" (
	"identifier" BIGINT,
	"guild" BIGINT,
	"expiry" BIGINT,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "snippet" (
	"guild" BIGINT,
	"name" TEXT,
	"content" TEXT,
	 PRIMARY KEY ("guild","name")
);

CREATE TABLE "data" (
	"guild" BIGINT,
	"prefix" TEXT,
	"category" BIGINT,
	"accessrole" BIGINT,
	"logging" BIGINT,
	"welcome" TEXT,
	"goodbye" TEXT,
	"loggingplus" BOOLEAN,
	"pingrole" BIGINT,
	"blacklist" BIGINT,
	"anonymous" BOOLEAN,
	 PRIMARY KEY ("guild")
);
