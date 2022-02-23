DROP DATABASE IF EXISTS "schema1608";
CREATE DATABASE "schema1608";
USE "schema1608";
CREATE TABLE "user" (
	"iduser" INT,
	"user_name" VARCHAR,
	"user_age" INT,
	"researcherno" INT,
	"collegeid" INT,
	"noofpublishedpapers" INT,
	"dob" DATE,
	"address" VARCHAR,
	"email" VARCHAR,
	"phoneno" INT,
	 PRIMARY KEY ("iduser")
);

CREATE TABLE "save_visual_dependency" (
	"savingid" INT,
	"sizeoffile" INT,
	"noofcopies" INT,
	"totalsizeleft" INT,
	"savinglocation" VARCHAR,
	"useraccessno" INT,
	"usercontact" INT,
	 PRIMARY KEY ("savingid")
);

CREATE TABLE "output_visual_dependency" (
	"outputid" INT,
	"paperid" INT,
	"outputtime" DATETIME,
	"qualityindex" VARCHAR,
	"noofresearchers" INT,
	"fileformat" VARCHAR,
	 PRIMARY KEY ("outputid","paperid")
);

CREATE TABLE "input_paper" (
	"paperid" INT,
	"title" VARCHAR,
	"no_of_publishers" INT,
	"page_length" INT,
	"researchtopic" VARCHAR,
	"noofrefrences" INT,
	"submissiondate" DATE,
	"noofrevisions" INT,
	"fileformat" VARCHAR,
	 PRIMARY KEY ("paperid")
);

CREATE TABLE "edit_visual_dependency" (
	"updationid" INT,
	"updatenumber" INT,
	"publisherid" INT,
	"updatedlocation" VARCHAR,
	"updatedfilesize" INT,
	"updationdate" DATE,
	 PRIMARY KEY ("updationid","updatenumber","publisherid")
);

CREATE TABLE "citation_graph_tool" (
	"toolproductionid" INT,
	"toolname" VARCHAR,
	"visualoperations" TINYINT,
	"storagecapacity" INT,
	"typesofgraphs" VARCHAR,
	"typesofcitations" INT,
	"maxusersloadatonetime" INT,
	 PRIMARY KEY ("toolproductionid")
);

CREATE TABLE "checks_paper_refrences" (
	"checkingid" INT,
	"papername" VARCHAR,
	"publishername" VARCHAR,
	"refrencewebsites" VARCHAR,
	"percentagedependency" DOUBLE,
	"checkingtotaltime" DATETIME,
	 PRIMARY KEY ("checkingid")
);
