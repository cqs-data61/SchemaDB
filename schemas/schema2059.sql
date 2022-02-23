DROP DATABASE IF EXISTS "schema2059";
CREATE DATABASE "schema2059";
USE "schema2059";
CREATE TABLE "workentity" (
	"id" BIGINT,
	"centurymax" INT,
	"centurymin" INT,
	"exactdate" VARCHAR,
	"note" VARCHAR,
	"origin" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workauthor" (
	"id" BIGINT,
	"label" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workentity_workauthor" (
	"workentity_id" BIGINT,
	"authors_id" BIGINT,
	 PRIMARY KEY ("workentity_id","authors_id"),
	 CONSTRAINT "FK_aer19gihsii0cnljjcdbhv72c" FOREIGN KEY ("workentity_id") REFERENCES "workentity" ("id"),
	 CONSTRAINT "FK_ekryq9wkii5awir2d7r082amb" FOREIGN KEY ("authors_id") REFERENCES "workauthor" ("id")
);

CREATE TABLE "theme" (
	"id" BIGINT,
	"label" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workentity_theme" (
	"works_id" BIGINT,
	"theme_id" BIGINT,
	 PRIMARY KEY ("works_id","theme_id"),
	 CONSTRAINT "FK_p1ld4ixj2fnuwwpvwpu81n6js" FOREIGN KEY ("works_id") REFERENCES "workentity" ("id"),
	 CONSTRAINT "FK_dy8y7j0v1rtr2wa494mwccgjv" FOREIGN KEY ("theme_id") REFERENCES "theme" ("id")
);

CREATE TABLE "relationworksource" (
	"id" BIGINT,
	"extract" VARCHAR,
	"nature" VARCHAR,
	"note" VARCHAR,
	"tome" VARCHAR,
	"source_id" BIGINT,
	"workentity_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"dtype" VARCHAR,
	"id" BIGINT,
	"fistname" VARCHAR,
	"label" VARCHAR,
	"lastname" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "secondaryname" (
	"id" BIGINT,
	"person_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_r3e86fy82o266xatvra2cymxt" FOREIGN KEY ("person_id") REFERENCES "person" ("id")
);

CREATE TABLE "relationsourceperson" (
	"id" BIGINT,
	"rolepublication" VARCHAR,
	"person_id" BIGINT,
	"source_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_lpb3cvox12hxk1f7sykii93fn" FOREIGN KEY ("person_id") REFERENCES "person" ("id")
);

CREATE TABLE "bibliographictype" (
	"id" BIGINT,
	"label" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "source" (
	"id" BIGINT,
	"articletitle" VARCHAR,
	"editor" VARCHAR,
	"journal" VARCHAR,
	"num" INT,
	"publisher" VARCHAR,
	"releasetown" VARCHAR,
	"releaseyear" INT,
	"series" VARCHAR,
	"title" VARCHAR,
	"url" VARCHAR,
	"volume" INT,
	"bibliographictype_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_9dlp92cim9ohdbc5ip6u9pelg" FOREIGN KEY ("bibliographictype_id") REFERENCES "bibliographictype" ("id")
);

CREATE TABLE "authorityorganism" (
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authoritynotice" (
	"id" BIGINT,
	"noticeref" VARCHAR,
	"organisme_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person_authoritynotice" (
	"person_id" BIGINT,
	"notices_id" BIGINT,
	 CONSTRAINT "FK_qsvpj9vhcnjc0ees0f237olkp" FOREIGN KEY ("notices_id") REFERENCES "authoritynotice" ("id"),
	 CONSTRAINT "FK_revd7fkybpes9k5u63k9txb2d" FOREIGN KEY ("person_id") REFERENCES "person" ("id")
);

CREATE TABLE "article" (
	"id" BIGINT,
	"content" TEXT,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);
