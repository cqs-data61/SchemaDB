DROP DATABASE IF EXISTS "schema2396";
CREATE DATABASE "schema2396";
USE "schema2396";
CREATE TABLE "worksfor" (
	"employee" CHAR,
	"department" CHAR,
	"percentage" FLOAT,
	 PRIMARY KEY ("employee","department")
);

CREATE TABLE "deptmissions" (
	"department" CHAR,
	"keyword" VARCHAR,
	 PRIMARY KEY ("department","keyword")
);

CREATE TABLE "departments" (
	"id" CHAR,
	"name" VARCHAR,
	"manager" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employees" (
	"tfn" CHAR,
	"givenname" VARCHAR,
	"familyname" VARCHAR,
	"hourspweek" FLOAT,
	 PRIMARY KEY ("tfn")
);
