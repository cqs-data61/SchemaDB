DROP DATABASE IF EXISTS "schema1467";
CREATE DATABASE "schema1467";
USE "schema1467";
CREATE TABLE "salgrade" (
	"grade" NUMBER,
	"losal" NUMBER,
	"hisal" NUMBER
);

CREATE TABLE "bonus" (
	"ename" VARCHAR,
	"job" VARCHAR,
	"sal" NUMBER,
	"comm" NUMBER
);

CREATE TABLE "emp" (
	"empno" NUMBER,
	"ename" VARCHAR,
	"job" VARCHAR,
	"mgr" NUMBER,
	"hiredate" DATE,
	"sal" NUMBER,
	"comm" NUMBER,
	"deptno" NUMBER,
	 PRIMARY KEY ("empno")
);

CREATE TABLE "dept" (
	"deptno" NUMBER,
	"dname" VARCHAR,
	"loc" VARCHAR,
	 PRIMARY KEY ("deptno")
);
