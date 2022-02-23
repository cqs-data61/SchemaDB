DROP DATABASE IF EXISTS "schema1122";
CREATE DATABASE "schema1122";
USE "schema1122";
CREATE TABLE "admin_user" (
	"name" VARCHAR,
	"realm" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "oauth_key" (
	"kid" VARCHAR,
	"ikm_key" VARCHAR,
	"timestamp" BIGINT,
	"lifetime" INTEGER,
	"as_rs_alg" VARCHAR,
	"realm" VARCHAR,
	 PRIMARY KEY ("kid")
);

CREATE TABLE "turn_realm_option" (
	"realm" VARCHAR,
	"opt" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("realm","opt")
);

CREATE TABLE "turn_origin_to_realm" (
	"origin" VARCHAR,
	"realm" VARCHAR,
	 PRIMARY KEY ("origin")
);

CREATE TABLE "denied_peer_ip" (
	"realm" VARCHAR,
	"ip_range" VARCHAR,
	 PRIMARY KEY ("realm","ip_range")
);

CREATE TABLE "allowed_peer_ip" (
	"realm" VARCHAR,
	"ip_range" VARCHAR,
	 PRIMARY KEY ("realm","ip_range")
);

CREATE TABLE "turn_secret" (
	"realm" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("realm","value")
);

CREATE TABLE "turnusers_lt" (
	"realm" VARCHAR,
	"name" VARCHAR,
	"hmackey" CHAR,
	 PRIMARY KEY ("realm","name")
);
