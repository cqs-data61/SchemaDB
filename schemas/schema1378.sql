DROP DATABASE IF EXISTS "schema1378";
CREATE DATABASE "schema1378";
USE "schema1378";
CREATE TABLE "m2m_cats_users" (
	"c_id" BIGSERIAL,
	"u_id" BIGSERIAL,
	 PRIMARY KEY ("c_id","u_id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cats" (
	"id" BIGSERIAL,
	"name" TEXT,
	"image_url" TEXT,
	"rating" NUMERIC,
	 PRIMARY KEY ("id")
);
