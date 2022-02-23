DROP DATABASE IF EXISTS "schema300";
CREATE DATABASE "schema300";
USE "schema300";
CREATE TABLE "messages" (
	"message_id" INTEGER,
	"sender" TEXT,
	"receiver" TEXT,
	"content" TEXT,
	 PRIMARY KEY ("message_id")
);

CREATE TABLE "online_users" (
	"email" TEXT,
	"token" TEXT,
	 PRIMARY KEY ("token")
);

CREATE TABLE "users" (
	"email" TEXT,
	"firstname" TEXT,
	"familyname" TEXT,
	"gender" TEXT,
	"city" TEXT,
	"country" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("email")
);
