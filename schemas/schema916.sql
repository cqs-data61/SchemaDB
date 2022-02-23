DROP DATABASE IF EXISTS "schema916";
CREATE DATABASE "schema916";
USE "schema916";
CREATE TABLE "pair" (
	"id" BIGINT,
	"group_id" BIGINT,
	"attendance_id" BIGINT
);

CREATE TABLE "attendance" (
	"id" BIGINT,
	"date" DATE,
	"member_id" BIGINT,
	"conference_time_id" BIGINT
);

CREATE TABLE "conference_time" (
	"id" BIGINT,
	"conference_time" TIME
);

CREATE TABLE "member" (
	"id" BIGINT,
	"name" VARCHAR
);
