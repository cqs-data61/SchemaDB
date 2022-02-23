DROP DATABASE IF EXISTS "schema641";
CREATE DATABASE "schema641";
USE "schema641";
CREATE TABLE "badges" (
	"badgeid" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("badgeid")
);

CREATE TABLE "category" (
	"categoryid" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("categoryid")
);

CREATE TABLE "chatmessage" (
	"messageid" INTEGER,
	"roomid" INTEGER,
	"userid" INTEGER,
	"message" TEXT,
	"chattype" INTEGER,
	"date" TIMESTAMP,
	 PRIMARY KEY ("messageid")
);

CREATE TABLE "groupchat" (
	"roomid" INTEGER,
	"groupid" INTEGER,
	"userid" INTEGER,
	 PRIMARY KEY ("roomid")
);

CREATE TABLE "userchat" (
	"roomid" INTEGER,
	"user1" INTEGER,
	"user2" INTEGER,
	 PRIMARY KEY ("roomid")
);

CREATE TABLE "usergroup" (
	"groupid" INTEGER,
	"ownerid" INTEGER,
	"name" TEXT,
	"logo" TEXT,
	"description" NOT,
	"categories" TEXT,
	"participants" TEXT,
	 PRIMARY KEY ("groupid")
);

CREATE TABLE "notification" (
	"notificationid" INTEGER,
	"recipientid" INTEGER,
	"type" TEXT,
	"date" TEXT,
	"eventid" INTEGER,
	"eventname" TEXT,
	"userid" INTEGER,
	"username" TEXT,
	"groupid" INTEGER,
	"groupname" TEXT,
	 PRIMARY KEY ("notificationid")
);

CREATE TABLE "profile" (
	"profileid" INTEGER,
	"userid" INTEGER,
	"tags" TEXT,
	"followers" TEXT,
	"following" TEXT,
	"bio" TEXT,
	"badges" TEXT,
	 PRIMARY KEY ("profileid")
);

CREATE TABLE "event" (
	"eventid" INTEGER,
	"eventname" TEXT,
	"userid" INTEGER,
	"description" TEXT,
	"tags" TEXT,
	"participants" TEXT,
	"reviews" TEXT,
	"favorites" TEXT,
	"type" TEXT,
	"zoomlink" TEXT,
	"eventimage" TEXT,
	"date" TEXT,
	"numparticipate" INTEGER,
	 PRIMARY KEY ("eventid")
);

CREATE TABLE "user" (
	"userid" INTEGER,
	"fullname" TEXT,
	"email" TEXT,
	"username" TEXT,
	"profileimage" TEXT,
	"sendnotification" BOOLEAN,
	 PRIMARY KEY ("userid")
);
