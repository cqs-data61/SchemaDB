DROP DATABASE IF EXISTS "schema1676";
CREATE DATABASE "schema1676";
USE "schema1676";
CREATE TABLE "t_user" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"email" VARCHAR,
	"enabled" BOOLEAN,
	"locked" BOOLEAN,
	"password" VARCHAR,
	"user_role" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_confirmation_token" (
	"id" BIGINT,
	"confirmed_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"expires_at" TIMESTAMP,
	"token" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK2JVWPR7H0AXN8DVH32AGH3UK6" FOREIGN KEY ("user_id") REFERENCES "t_user" ("id")
);

CREATE TABLE "t_community" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"description" CLOB,
	"name" VARCHAR,
	"created_by_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK1UHTRSNPNJ2CU8WKW4DRRW1IQ" FOREIGN KEY ("created_by_id") REFERENCES "t_user" ("id")
);

CREATE TABLE "t_user_community" (
	"user_id" BIGINT,
	"community_id" BIGINT,
	 PRIMARY KEY ("user_id","community_id"),
	 CONSTRAINT "FK58L0CL8KBURTY2LQUXE59K7DH" FOREIGN KEY ("community_id") REFERENCES "t_community" ("id"),
	 CONSTRAINT "FKFQ5KMPO8U2UJPFAKLNW0F8T0T" FOREIGN KEY ("user_id") REFERENCES "t_user" ("id")
);

CREATE TABLE "t_post" (
	"id" BIGINT,
	"body" CLOB,
	"created_at" TIMESTAMP,
	"title" VARCHAR,
	"url" VARCHAR,
	"vote_count" INTEGER,
	"community_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK18F01T655NKCUPTQ9OXP04SGN" FOREIGN KEY ("user_id") REFERENCES "t_user" ("id"),
	 CONSTRAINT "FK37VFGVK1W6XGHYC80IWLY93BX" FOREIGN KEY ("community_id") REFERENCES "t_community" ("id")
);

CREATE TABLE "t_vote" (
	"id" BIGINT,
	"vote_type" VARCHAR,
	"post_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK2QOKO87N6900X9B8IQMMD9S7L" FOREIGN KEY ("post_id") REFERENCES "t_post" ("id"),
	 CONSTRAINT "FKJ7GXL5XKIKTOAN3AB6PD2GYFX" FOREIGN KEY ("user_id") REFERENCES "t_user" ("id")
);

CREATE TABLE "t_comment" (
	"id" BIGINT,
	"body" CLOB,
	"created_at" TIMESTAMP,
	"post_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKTAMAOACCTQ4QPKO6BVTV0KE1P" FOREIGN KEY ("user_id") REFERENCES "t_user" ("id"),
	 CONSTRAINT "FKSA3HL9A6MU30DCT1JNN2BWVEM" FOREIGN KEY ("post_id") REFERENCES "t_post" ("id")
);
