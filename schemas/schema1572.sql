DROP DATABASE IF EXISTS "schema1572";
CREATE DATABASE "schema1572";
USE "schema1572";
CREATE TABLE "uierror" (
	"eid" SERIAL,
	"errormessage" TEXT,
	"widget" TEXT,
	"lastoccured" DATE,
	"errorcount" INTEGER,
	 PRIMARY KEY ("eid")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"loginname" TEXT,
	"email" TEXT,
	"password" TEXT,
	"secretquestion" TEXT,
	"secretanswer" TEXT,
	"apikey" TEXT,
	"webhook" TEXT,
	"confirmemaillink" TEXT,
	"emailconfirmed" BOOLEAN,
	"resetpasswordlink" TEXT,
	"passwordconfirmed" BOOLEAN,
	"exchangelist" TEXT,
	"defaultexchange" TEXT,
	"ratelimit" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "newemail" (
	"userid" INTEGER,
	"newemail" TEXT,
	"querystring" TEXT,
	 CONSTRAINT "fk_users" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "menusetup" (
	"id" SERIAL,
	"userid" INTEGER,
	"defaultmenu" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menus" (
	"mid" SERIAL,
	"menukey" INTEGER,
	"columnid" INTEGER,
	"columnorder" INTEGER,
	"widgetconfig" TEXT,
	"widgetheader" TEXT,
	"widgetid" TEXT,
	"widgettype" TEXT,
	"xaxis" TEXT,
	"yaxis" TEXT,
	 PRIMARY KEY ("mid"),
	 CONSTRAINT "fk_menusetup" FOREIGN KEY ("menukey") REFERENCES "menusetup" ("id")
);

CREATE TABLE "dashboard" (
	"id" SERIAL,
	"userid" INTEGER,
	"dashboardname" TEXT,
	"globalstocklist" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "widgets" (
	"wid" SERIAL,
	"dashboardkey" INTEGER,
	"columnid" INTEGER,
	"columnorder" INTEGER,
	"filters" TEXT,
	"trackedstocks" TEXT,
	"widgetconfig" TEXT,
	"widgetheader" TEXT,
	"widgetid" TEXT,
	"widgettype" TEXT,
	"xaxis" TEXT,
	"yaxis" TEXT,
	 PRIMARY KEY ("wid"),
	 CONSTRAINT "fk_dashboard" FOREIGN KEY ("dashboardkey") REFERENCES "dashboard" ("id")
);
