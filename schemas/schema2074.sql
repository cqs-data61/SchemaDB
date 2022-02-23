DROP DATABASE IF EXISTS "schema2074";
CREATE DATABASE "schema2074";
USE "schema2074";
CREATE TABLE "salgrade" (
	"grade" INT,
	"losal" INT,
	"hisal" INT,
	 PRIMARY KEY ("grade")
);

CREATE TABLE "emp" (
	"empno" INT,
	"ename" VARCHAR,
	"job" VARCHAR,
	"mgr" INT,
	"hiredate" DATETIME,
	"sal" INT,
	"comm" INT,
	"deptno" INT,
	 PRIMARY KEY ("empno")
);

CREATE TABLE "dept" (
	"deptno" INT,
	"deptname" VARCHAR,
	"loc" VARCHAR,
	 PRIMARY KEY ("deptno")
);

CREATE TABLE "bonus" (
	"ename" VARCHAR,
	"job" VARCHAR,
	"sal" INT,
	"comm" INT
);
