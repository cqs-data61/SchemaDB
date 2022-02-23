DROP DATABASE IF EXISTS "schema423";
CREATE DATABASE "schema423";
USE "schema423";
CREATE TABLE "citizen" (
	"citizen_id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"document_type" VARCHAR,
	"document_number" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"age" INTEGER,
	 PRIMARY KEY ("citizen_id")
);

CREATE TABLE "complaint" (
	"complaint_id" BIGINT,
	"address" VARCHAR,
	"latitude" FLOAT8,
	"longitude" FLOAT8,
	"complaint_type" VARCHAR,
	"commentary" VARCHAR,
	"citizen_id" BIGINT,
	 PRIMARY KEY ("complaint_id"),
	 CONSTRAINT "complaint_citizen_fk" FOREIGN KEY ("citizen_id") REFERENCES "citizen" ("citizen_id")
);

CREATE TABLE "parameter" (
	"parameter_id" BIGINT,
	"code" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("parameter_id")
);
