DROP DATABASE IF EXISTS "schema236";
CREATE DATABASE "schema236";
USE "schema236";
CREATE TABLE "emp" (
	"empno" INT,
	"ename" VARCHAR,
	"job" VARCHAR,
	"age" SMALLINT,
	"mgr" BIGINT,
	"hiredate" DATE,
	"sal" DECIMAL,
	"comm" DECIMAL,
	"deptno" TINYINT,
	"email" VARCHAR,
	"create_datetime" DATETIME,
	"create_time" TIME,
	"upsert_time" TIMESTAMP,
	 PRIMARY KEY ("empno")
);

CREATE TABLE "dept" (
	"deptno" TINYINT,
	"dname" VARCHAR,
	"loc" VARCHAR
);
