DROP DATABASE IF EXISTS "schema2411";
CREATE DATABASE "schema2411";
USE "schema2411";
CREATE TABLE "classinformation" (
	"classid" VARCHAR,
	"class" VARCHAR,
	 PRIMARY KEY ("classid")
);

CREATE TABLE "stratificationinformation" (
	"stratificationid1" VARCHAR,
	"stratificationcategoryid1" VARCHAR,
	"stratification1" VARCHAR,
	"stratificationcategory1" VARCHAR,
	 PRIMARY KEY ("stratificationid1")
);

CREATE TABLE "datavaluetypeinformation" (
	"datavaluetypeid" VARCHAR,
	"datavaluetype" VARCHAR,
	 PRIMARY KEY ("datavaluetypeid")
);

CREATE TABLE "questioninformation" (
	"questionid" VARCHAR,
	"question" VARCHAR,
	 PRIMARY KEY ("questionid")
);

CREATE TABLE "topicinformation" (
	"topicid" VARCHAR,
	"topic" VARCHAR,
	 PRIMARY KEY ("topicid")
);

CREATE TABLE "location" (
	"locationid" INT,
	"locationabbr" CHAR,
	"locationdesc" VARCHAR,
	 PRIMARY KEY ("locationid")
);

CREATE TABLE "nutrition" (
	"yearstart" SMALLINT,
	"yearend" SMALLINT,
	"datasource" VARCHAR,
	"datavalueunit" VARCHAR,
	"datavalue" NUMERIC,
	"datavaluefootnotesymbol" VARCHAR,
	"datavaluefootnote" TEXT,
	"lowconfidencelimit" NUMERIC,
	"highconfidencelimit" NUMERIC,
	"samplesize" INT,
	"geolocation" VARCHAR,
	"classid" VARCHAR,
	"topicid" VARCHAR,
	"datavaluetypeid" VARCHAR,
	"stratificationid1" VARCHAR,
	"questionid" VARCHAR,
	"locationid" INT,
	 PRIMARY KEY ("yearstart","yearend","locationid","questionid","stratificationid1"),
	 CONSTRAINT "fkeycon_nutrition_to_location" FOREIGN KEY ("locationid") REFERENCES "location" ("locationid"),
	 CONSTRAINT "fkeycon_nutrition_to_questioninformation" FOREIGN KEY ("questionid") REFERENCES "questioninformation" ("questionid")
);

CREATE TABLE "chronicdiseaseindicator" (
	"yearstart" SMALLINT,
	"yearend" SMALLINT,
	"datasource" VARCHAR,
	"datavalueunit" VARCHAR,
	"datavalue" VARCHAR,
	"datavaluealt" NUMERIC,
	"datavaluefootnotesymbol" VARCHAR,
	"datavaluefootnote" TEXT,
	"lowconfidencelimit" NUMERIC,
	"highconfidencelimit" NUMERIC,
	"geolocation" VARCHAR,
	"topicid" VARCHAR,
	"stratificationid1" VARCHAR,
	"datavaluetypeid" VARCHAR,
	"questionid" VARCHAR,
	"locationid" INT,
	 PRIMARY KEY ("yearstart","yearend","locationid","questionid","stratificationid1"),
	 CONSTRAINT "fkeycon_chronicdiseaseindicator_to_stratificationinformation" FOREIGN KEY ("stratificationid1") REFERENCES "stratificationinformation" ("stratificationid1"),
	 CONSTRAINT "fkeycon_chronicdiseaseindicator_to_questioninformation" FOREIGN KEY ("questionid") REFERENCES "questioninformation" ("questionid"),
	 CONSTRAINT "fkeycon_chronicdiseaseindicator_to_location" FOREIGN KEY ("locationid") REFERENCES "location" ("locationid"),
	 CONSTRAINT "fkeycon_chronicdiseaseindicator_to_topicinformation" FOREIGN KEY ("topicid") REFERENCES "topicinformation" ("topicid")
);

CREATE TABLE "cause" (
	"causename" VARCHAR,
	"causenameexpanded" VARCHAR,
	 PRIMARY KEY ("causename")
);

CREATE TABLE "leadingcauseofdeath" (
	"year" SMALLINT,
	"causename" VARCHAR,
	"state" VARCHAR,
	"deaths" INT,
	"ageadjusteddeathrate" NUMERIC,
	 PRIMARY KEY ("year","state","causename"),
	 CONSTRAINT "fkeycon_leadingcauseofdeath_to_cause" FOREIGN KEY ("causename") REFERENCES "cause" ("causename")
);
