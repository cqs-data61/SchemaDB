DROP DATABASE IF EXISTS "schema2356";
CREATE DATABASE "schema2356";
USE "schema2356";
CREATE TABLE "reviews" (
	"reviewid" INT,
	"reviewtitle" VARCHAR,
	"reviewtext" VARCHAR,
	"nrofhelpful" INT,
	"nrofplus" INT,
	"nrofminus" INT,
	 PRIMARY KEY ("reviewid")
);

CREATE TABLE "tags" (
	"tagid" INT,
	"tagname" VARCHAR,
	"tagimportance" ENUM,
	"tagcolor" VARCHAR,
	 PRIMARY KEY ("tagid")
);

CREATE TABLE "forumcategories" (
	"categoryid" INT,
	"categoryname" VARCHAR,
	"categorydescription" VARCHAR,
	 PRIMARY KEY ("categoryid")
);

CREATE TABLE "threads" (
	"threadid" INT,
	"title" VARCHAR,
	"threadtext" VARCHAR,
	"status" ENUM,
	"nrofposts" INT,
	"creation" DATETIME,
	"modification" DATETIME,
	"creatorid" VARCHAR,
	"categoryid" INT,
	 PRIMARY KEY ("threadid"),
	 CONSTRAINT "FK_3" FOREIGN KEY ("categoryid") REFERENCES "forumcategories" ("categoryid")
);

CREATE TABLE "threadtags" (
	"threadid" INT,
	"tagid" INT,
	 PRIMARY KEY ("threadid","tagid"),
	 CONSTRAINT "FK_4" FOREIGN KEY ("tagid") REFERENCES "tags" ("tagid"),
	 CONSTRAINT "FK_5" FOREIGN KEY ("threadid") REFERENCES "threads" ("threadid")
);

CREATE TABLE "achievements" (
	"achievementid" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"iconpath" VARCHAR,
	"achievementpoints" INT,
	 PRIMARY KEY ("achievementid")
);

CREATE TABLE "users" (
	"userid" VARCHAR,
	"username" VARCHAR,
	"nrofposts" SMALLINT,
	"watchtime" INT,
	"achievementpoints" MEDIUMINT,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "animeuserinfos" (
	"userid" VARCHAR,
	"animeid" INT,
	"status" ENUM,
	"watchstartdate" DATE,
	"watchenddate" DATE,
	"nrofepisodesseen" SMALLINT,
	"isfavourite" BOOLEAN,
	"modification" DATETIME,
	"didreview" BOOLEAN,
	"grade" INT,
	"reviewid" INT,
	 PRIMARY KEY ("userid","animeid"),
	 CONSTRAINT "FK_51" FOREIGN KEY ("userid") REFERENCES "users" ("userid"),
	 CONSTRAINT "FK_177" FOREIGN KEY ("reviewid") REFERENCES "reviews" ("reviewid")
);

CREATE TABLE "posts" (
	"postid" INT,
	"title" VARCHAR,
	"posttext" VARCHAR,
	"isblocked" BOOLEAN,
	"nrofplus" INT,
	"nrofminus" INT,
	"nrofreports" INT,
	"creation" DATETIME,
	"modification" DATETIME,
	"userid" VARCHAR,
	"threadid" INT,
	 PRIMARY KEY ("postid"),
	 CONSTRAINT "FK_9" FOREIGN KEY ("userid") REFERENCES "users" ("userid"),
	 CONSTRAINT "FK_8" FOREIGN KEY ("threadid") REFERENCES "threads" ("threadid")
);

CREATE TABLE "postuserstatus" (
	"userid" VARCHAR,
	"postid" INT,
	"isliked" BOOLEAN,
	"isdisliked" BOOLEAN,
	"isreported" BOOLEAN,
	 PRIMARY KEY ("userid","postid"),
	 CONSTRAINT "FK_10" FOREIGN KEY ("userid") REFERENCES "users" ("userid"),
	 CONSTRAINT "FK_11" FOREIGN KEY ("postid") REFERENCES "posts" ("postid")
);

CREATE TABLE "threaduserstatus" (
	"userid" VARCHAR,
	"threadid" INT,
	"iswatching" BOOLEAN,
	"isblocked" BOOLEAN,
	 PRIMARY KEY ("userid","threadid"),
	 CONSTRAINT "FK_6" FOREIGN KEY ("threadid") REFERENCES "threads" ("threadid"),
	 CONSTRAINT "FK_7" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);

CREATE TABLE "userachievements" (
	"achievementid" INT,
	"userid" VARCHAR,
	 PRIMARY KEY ("userid","achievementid"),
	 CONSTRAINT "FK_1" FOREIGN KEY ("achievementid") REFERENCES "achievements" ("achievementid"),
	 CONSTRAINT "FK_2" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
