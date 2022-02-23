DROP DATABASE IF EXISTS "schema324";
CREATE DATABASE "schema324";
USE "schema324";
CREATE TABLE "tblreferrals" (
	"id" SMALLINT,
	"refererckey" VARCHAR,
	"ipaddress" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbleventlogs" (
	"id" SMALLINT,
	"name" VARCHAR,
	"timestamp" INT,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tblclients" (
	"client_id" INT,
	"email_address" VARCHAR,
	"name" VARCHAR,
	"password_salt" CHAR,
	"password_hash" CHAR,
	"email_verified" TINYINT,
	"date_registered" TIMESTAMP,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "tblplayinglogs" (
	"ckey" VARCHAR,
	"day" TINYINT,
	"month" TINYINT,
	"year" TINYINT,
	"00" TINYINT,
	"01" TINYINT,
	"02" TINYINT,
	"03" TINYINT,
	"04" TINYINT,
	"05" TINYINT,
	"06" TINYINT,
	"07" TINYINT,
	"08" TINYINT,
	"09" TINYINT,
	"10" TINYINT,
	"11" TINYINT,
	"12" TINYINT,
	"13" TINYINT,
	"14" TINYINT,
	"15" TINYINT,
	"16" TINYINT,
	"17" TINYINT,
	"18" TINYINT,
	"19" TINYINT,
	"20" TINYINT,
	"21" TINYINT,
	"22" TINYINT,
	"23" TINYINT
);

CREATE TABLE "tblplayers" (
	"ckey" VARCHAR,
	"name" VARCHAR,
	"level" SMALLINT,
	"house" VARCHAR,
	"rank" TINYTEXT,
	"ip" INT,
	"timeloggedin" INT,
	"dateregistered" TIMESTAMP,
	"lastloggedin" DATE,
	"isauror" TINYINT,
	"isde" TINYINT,
	"ccanadd" TINYINT,
	"ccanfire" TINYINT,
	"ccanedit" TINYINT,
	"ccanpost" TINYINT,
	"ccanview" TINYINT,
	"cstore" TINYINT,
	"cspecverb" TINYINT,
	"clanrank" VARCHAR,
	"refererckey" VARCHAR,
	 PRIMARY KEY ("ckey")
);

CREATE TABLE "tblposts" (
	"id" TINYINT,
	"body" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tblwarnings" (
	"id" MEDIUMINT,
	"ckey" VARCHAR,
	"code" CHAR,
	"msg" TEXT,
	"timestamp" BIGINT,
	"length" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tblalerts" (
	"ckey" VARCHAR,
	"type" TINYINT
);

CREATE TABLE "tblreferralamounts" (
	"id" SMALLINT,
	"earnerckey" VARCHAR,
	"refererckey" VARCHAR,
	"amount" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tblmultikey" (
	"ckey" VARCHAR,
	"ip" INT,
	"id" INT,
	 PRIMARY KEY ("ckey","ip","id")
);
