DROP DATABASE IF EXISTS "schema734";
CREATE DATABASE "schema734";
USE "schema734";
CREATE TABLE "nas" (
	"id" SERIAL,
	"nasname" TEXT,
	"shortname" TEXT,
	"type" TEXT,
	"ports" INTEGER,
	"secret" TEXT,
	"server" TEXT,
	"community" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radpostauth" (
	"id" BIGSERIAL,
	"username" TEXT,
	"pass" TEXT,
	"reply" TEXT,
	"calledstationid" TEXT,
	"callingstationid" TEXT,
	"authdate" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radusergroup" (
	"id" SERIAL,
	"username" TEXT,
	"groupname" TEXT,
	"priority" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radreply" (
	"id" SERIAL,
	"username" TEXT,
	"attribute" TEXT,
	"op" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radgroupreply" (
	"id" SERIAL,
	"groupname" TEXT,
	"attribute" TEXT,
	"op" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radgroupcheck" (
	"id" SERIAL,
	"groupname" TEXT,
	"attribute" TEXT,
	"op" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radcheck" (
	"id" SERIAL,
	"username" TEXT,
	"attribute" TEXT,
	"op" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "radacct" (
	"radacctid" BIGSERIAL,
	"acctsessionid" TEXT,
	"acctuniqueid" TEXT,
	"username" TEXT,
	"realm" TEXT,
	"nasipaddress" VARCHAR,
	"nasportid" TEXT,
	"nasporttype" TEXT,
	"acctstarttime" DATETIME,
	"acctupdatetime" DATETIME,
	"acctstoptime" DATETIME,
	"acctinterval" BIGINT,
	"acctsessiontime" BIGINT,
	"acctauthentic" TEXT,
	"connectinfo_start" TEXT,
	"connectinfo_stop" TEXT,
	"acctinputoctets" BIGINT,
	"acctoutputoctets" BIGINT,
	"calledstationid" TEXT,
	"callingstationid" TEXT,
	"acctterminatecause" TEXT,
	"servicetype" TEXT,
	"framedprotocol" TEXT,
	"framedipaddress" VARCHAR,
	"framedipv6address" VARCHAR,
	"framedipv6prefix" VARCHAR,
	"framedinterfaceid" TEXT,
	"delegatedipv6prefix" VARCHAR,
	 PRIMARY KEY ("radacctid")
);
