DROP DATABASE IF EXISTS "schema375";
CREATE DATABASE "schema375";
USE "schema375";
CREATE TABLE "buddy" (
	"buddy_id" INTEGER,
	"room_id" INTEGER,
	"inviter_id" INTEGER,
	"invitee_id" INTEGER,
	"sent" TIMESTAMP,
	"accepted" TIMESTAMP,
	 PRIMARY KEY ("buddy_id")
);

CREATE TABLE "room_member" (
	"member_id" INTEGER,
	"room_id" INTEGER,
	"user_id" INTEGER,
	"joined" TIMESTAMP,
	"departed" TIMESTAMP,
	 PRIMARY KEY ("member_id")
);

CREATE TABLE "activity" (
	"activity_id" INTEGER,
	"room_id" INTEGER,
	"user_id" INTEGER,
	"timestamp" TIMESTAMP,
	"performance" INTEGER,
	"effort" INTEGER,
	 PRIMARY KEY ("activity_id")
);

CREATE TABLE "room" (
	"room_id" INTEGER,
	"owner_id" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"units" TEXT,
	"access" TEXT,
	"absolute" BOOLEAN,
	"created" TIMESTAMP,
	 PRIMARY KEY ("room_id")
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"email" TEXT,
	"verified" BOOLEAN,
	"hashed_password" TEXT,
	"nickname" TEXT,
	"bio" TEXT,
	"gender" TEXT,
	"dob" TIMESTAMP,
	"active" BOOLEAN,
	"joined" TIMESTAMP,
	"administrator" BOOLEAN,
	 PRIMARY KEY ("user_id")
);
