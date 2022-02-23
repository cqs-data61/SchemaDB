DROP DATABASE IF EXISTS "schema1662";
CREATE DATABASE "schema1662";
USE "schema1662";
CREATE TABLE "user_to_creator_or_organizer_rating" (
	"userid" BIGINT,
	"organizerorcreatorid" BIGINT,
	"rating" SMALLINT
);

CREATE TABLE "creative_association_invitations" (
	"creativeassociationid" BIGINT,
	"invitedcreatorid" BIGINT,
	"isanswered" BOOLEAN,
	"acceptance" BOOLEAN,
	 PRIMARY KEY ("creativeassociationid","invitedcreatorid")
);

CREATE TABLE "creative_association_members" (
	"creativeassociationid" BIGINT,
	"memberid" BIGINT,
	 PRIMARY KEY ("creativeassociationid","memberid")
);

CREATE TABLE "creative_association_images" (
	"id" BIGINT,
	"image" VARCHAR
);

CREATE TABLE "creative_association" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"bosscreator" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_with_recommendations" (
	"userid" BIGINT,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "recommendations" (
	"userid" BIGINT,
	"eventid" BIGINT,
	"coefficient" FLOAT,
	 PRIMARY KEY ("userid","eventid")
);

CREATE TABLE "notifications" (
	"notificationid" BIGSERIAL,
	"notificationreceiverid" BIGINT,
	"notificationproducerid" BIGINT,
	"notificationtype" VARCHAR,
	 PRIMARY KEY ("notificationid")
);

CREATE TABLE "user_viewed_events" (
	"userid" BIGINT,
	"eventid" BIGINT,
	 PRIMARY KEY ("userid","eventid")
);

CREATE TABLE "event_applications" (
	"eventid" BIGINT,
	"creatorid" BIGINT,
	"message" TEXT,
	"accepted" BOOL
);

CREATE TABLE "creators_invites" (
	"creatorid" BIGINT,
	"organizerid" BIGINT,
	"eventid" BIGINT,
	"message" TEXT,
	"accepted" BOOL
);

CREATE TABLE "users_subscriptions" (
	"userid" BIGINT,
	"subscriptionid" BIGINT,
	 PRIMARY KEY ("userid","subscriptionid")
);

CREATE TABLE "likes" (
	"userid" BIGINT,
	"eventid" BIGINT,
	 PRIMARY KEY ("userid","eventid")
);

CREATE TABLE "users_images" (
	"userid" BIGINT,
	"image" VARCHAR
);

CREATE TABLE "events_images" (
	"eventid" BIGINT,
	"image" VARCHAR
);

CREATE TABLE "events_participants" (
	"eventid" BIGINT,
	"participantid" BIGINT,
	 PRIMARY KEY ("eventid","participantid")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"userrole" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"patronymic" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"specialization" VARCHAR,
	"rating" REAL,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"organizerid" BIGINT,
	"geodata" VARCHAR,
	"specialization" VARCHAR,
	"date" TIMESTAMP,
	"passed" BOOL,
	 PRIMARY KEY ("id")
);
