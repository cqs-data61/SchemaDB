DROP DATABASE IF EXISTS "schema2220";
CREATE DATABASE "schema2220";
USE "schema2220";
CREATE TABLE "userextra" (
	"id" TEXT,
	"interests" TEXT,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usercredentials" (
	"id" TEXT,
	"password" TEXT,
	"userid" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" TEXT,
	"realm" TEXT,
	"username" TEXT,
	"email" TEXT,
	"description" TEXT,
	"emailverified" BOOLEAN,
	"verificationtoken" TEXT,
	"roles" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "templatebuttonnetwork" (
	"id" INTEGER,
	"networkid" INTEGER,
	"templatebuttonid" INTEGER,
	"created" TIMESTAMP,
	"modified" TIMESTAMP
);

CREATE TABLE "templatebutton" (
	"id" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"fields" TEXT,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	"owner" TEXT
);

CREATE TABLE "tag" (
	"id" TEXT,
	"modelname" TEXT,
	"modelid" TEXT,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	 PRIMARY KEY ("id","modelname","modelid")
);

CREATE TABLE "role" (
	"id" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"created" TIMESTAMP,
	"modified" TIMESTAMP
);

CREATE TABLE "network" (
	"name" TEXT,
	"id" INTEGER,
	"url" TEXT,
	"avatar" TEXT,
	"description" TEXT,
	"privacy" TEXT,
	"place" TEXT,
	"geoplace" TEXT,
	"radius" INTEGER,
	"tags" TEXT,
	"friendnetworks" TEXT,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	"owner" TEXT
);

CREATE TABLE "file" (
	"id" TEXT,
	"filename" TEXT,
	"originalname" TEXT,
	"encoding" TEXT,
	"mimetype" TEXT,
	"size" TEXT,
	"url" TEXT,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "buttonsnetwork" (
	"id" INTEGER,
	"networkid" INTEGER,
	"buttonid" INTEGER,
	"created" TIMESTAMP,
	"modified" TIMESTAMP
);

CREATE TABLE "button" (
	"id" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"tags" TEXT,
	"description" TEXT,
	"geoplace" TEXT,
	"templatebuttonid" INTEGER,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	"owner" TEXT
);
