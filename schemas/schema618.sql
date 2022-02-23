DROP DATABASE IF EXISTS "schema618";
CREATE DATABASE "schema618";
USE "schema618";
CREATE TABLE "rotation" (
	"champid" INTEGER,
	 PRIMARY KEY ("champid")
);

CREATE TABLE "users" (
	"userid" VARCHAR,
	"summonerid" VARCHAR,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "preferences" (
	"userid" VARCHAR,
	"select_owned" BOOLEAN,
	"never_recommend" TEXT,
	 PRIMARY KEY ("userid"),
	 CONSTRAINT "fkeycon_preferences_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "sanity" (
	"champid" INTEGER,
	"userid" VARCHAR,
	"position" VARCHAR,
	"sane" BOOLEAN,
	"feas" INTEGER,
	 PRIMARY KEY ("champid","userid","position"),
	 CONSTRAINT "fkeycon_sanity_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "champs" (
	"champid" INTEGER,
	"userid" VARCHAR,
	"mastery" INTEGER,
	"owned" BOOLEAN,
	"champ" VARCHAR,
	"displayname" VARCHAR,
	 PRIMARY KEY ("champid","userid"),
	 CONSTRAINT "fkeycon_champs_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "aliases" (
	"champid" INTEGER,
	"userid" VARCHAR,
	"alias" VARCHAR,
	 PRIMARY KEY ("champid","userid","alias"),
	 CONSTRAINT "fkeycon_aliases_to_champs" FOREIGN KEY ("champid","userid") REFERENCES "champs" ("champid","userid")
);

CREATE TABLE "lists" (
	"userid" VARCHAR,
	"listname" VARCHAR,
	 PRIMARY KEY ("userid","listname"),
	 CONSTRAINT "fkeycon_lists_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "listdata" (
	"userid" VARCHAR,
	"listname" VARCHAR,
	"champid" INTEGER,
	 PRIMARY KEY ("userid","listname","champid"),
	 CONSTRAINT "fkeycon_listdata_to_lists" FOREIGN KEY ("userid","listname") REFERENCES "lists" ("userid","listname")
);
