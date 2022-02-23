DROP DATABASE IF EXISTS "schema553";
CREATE DATABASE "schema553";
USE "schema553";
CREATE TABLE "termsofservice" (
	"uuid" BINARY,
	"dateupdated" TIMESTAMP,
	"content" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "role" (
	"uuid" BINARY,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "connection" (
	"uuid" BINARY,
	"label" VARCHAR,
	"id" VARCHAR,
	"subprefix" VARCHAR,
	"requiredfields" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "usermetadatamapping" (
	"uuid" BINARY,
	"auth0metadatajsonpath" VARCHAR,
	"connectionid" BINARY,
	"generalmetadatajsonpath" VARCHAR,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "FKayr8vrvvwpgsdhxdyryt6k590" FOREIGN KEY ("connectionid") REFERENCES "connection" ("uuid")
);

CREATE TABLE "user" (
	"uuid" BINARY,
	"uuid" BINARY,
	"roles" VARCHAR,
	"subject" VARCHAR,
	"subject" VARCHAR,
	"userid" VARCHAR,
	"auth0_metadata" LONGTEXT,
	"general_metadata" LONGTEXT,
	"acceptedtos" DATETIME,
	"connectionid" BINARY,
	"email" VARCHAR,
	"matched" BIT,
	"is_active" BIT,
	"long_term_token" VARCHAR,
	"isgateanyrelation" BIT,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "FKn8bku0vydfcnuwbqwgnbgg8ry" FOREIGN KEY ("connectionid") REFERENCES "connection" ("uuid")
);

CREATE TABLE "user_role" (
	"user_id" BINARY,
	"role_id" BINARY,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "FKa68196081fvovjhkek5m97n3y" FOREIGN KEY ("role_id") REFERENCES "role" ("uuid"),
	 CONSTRAINT "FK859n2jvi8ivhui0rl0esws6o" FOREIGN KEY ("user_id") REFERENCES "user" ("uuid")
);

CREATE TABLE "application" (
	"uuid" BINARY,
	"description" VARCHAR,
	"enable" BIT,
	"name" VARCHAR,
	"token" VARCHAR,
	"url" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "privilege" (
	"uuid" BINARY,
	"description" VARCHAR,
	"name" VARCHAR,
	"application_id" BINARY,
	"querytemplate" VARCHAR,
	"queryscope" VARCHAR,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "FK61h3jewffk70b5ni4tsi5rhoy" FOREIGN KEY ("application_id") REFERENCES "application" ("uuid")
);

CREATE TABLE "role_privilege" (
	"role_id" BINARY,
	"privilege_id" BINARY,
	 PRIMARY KEY ("role_id","privilege_id"),
	 CONSTRAINT "FKsykrtrdngu5iexmbti7lu9xa" FOREIGN KEY ("role_id") REFERENCES "role" ("uuid"),
	 CONSTRAINT "FKdkwbrwb5r8h74m1v7dqmhp99c" FOREIGN KEY ("privilege_id") REFERENCES "privilege" ("uuid")
);

CREATE TABLE "access_rule" (
	"uuid" BINARY,
	"name" VARCHAR,
	"description" VARCHAR,
	"rule" VARCHAR,
	"type" INT,
	"value" VARCHAR,
	"checkmapkeyonly" BIT,
	"checkmapnode" BIT,
	"subaccessruleparent_uuid" BINARY,
	"isgateanyrelation" BIT,
	"isevaluateonlybygates" BIT,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "FK8rovvx363ui99ce21sksmg6uy" FOREIGN KEY ("subaccessruleparent_uuid") REFERENCES "access_rule" ("uuid")
);

CREATE TABLE "accessrule_subrule" (
	"accessrule_id" BINARY,
	"subrule_id" BINARY,
	 PRIMARY KEY ("accessrule_id","subrule_id"),
	 CONSTRAINT "fkeycon_accessrule_subrule_to_access_rule" FOREIGN KEY ("accessrule_id") REFERENCES "access_rule" ("uuid")
);

CREATE TABLE "accessrule_privilege" (
	"privilege_id" BINARY,
	"accessrule_id" BINARY,
	 PRIMARY KEY ("privilege_id","accessrule_id")
);

CREATE TABLE "accessrule_gate" (
	"accessrule_id" BINARY,
	"gate_id" BINARY,
	 PRIMARY KEY ("accessrule_id","gate_id")
);

CREATE TABLE "resource" (
	"uuid" BINARY,
	"targeturl" VARCHAR,
	"resourcerspath" VARCHAR,
	"description" VARCHAR,
	"name" VARCHAR,
	"token" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "query" (
	"uuid" BINARY,
	"query" LONGBLOB,
	"readytime" DATE,
	"resourceresultid" VARCHAR,
	"starttime" DATE,
	"status" INT,
	"resourceid" BINARY,
	"metadata" BLOB,
	 PRIMARY KEY ("uuid")
);
