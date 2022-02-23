DROP DATABASE IF EXISTS "schema609";
CREATE DATABASE "schema609";
USE "schema609";
CREATE TABLE "member" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"phone_number" VARCHAR,
	"status" VARCHAR,
	"join_at" DATETIME,
	"exit_at" DATETIME
);

CREATE TABLE "writer" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"sex" VARCHAR,
	"join_at" DATETIME,
	"birthday" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"writer_id" INT,
	"category" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "writer_id_fk" FOREIGN KEY ("writer_id") REFERENCES "writer" ("id")
);

CREATE TABLE "memo" (
	"id" BIGINT,
	"writer_id" INT,
	"memo" TEXT,
	"category" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "memo_writer_id_fk" FOREIGN KEY ("writer_id") REFERENCES "writer" ("id")
);
