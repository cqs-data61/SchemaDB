DROP DATABASE IF EXISTS "schema1881";
CREATE DATABASE "schema1881";
USE "schema1881";
CREATE TABLE "files" (
	"file_id" INTEGER,
	"contents" BLOB,
	 PRIMARY KEY ("file_id")
);

CREATE TABLE "plain_test_programs" (
	"test_program_id" INTEGER,
	"timeout" INTEGER
);

CREATE TABLE "atf_test_cases_multivalues" (
	"test_case_id" INTEGER,
	"property_name" TEXT,
	"property_value" TEXT
);

CREATE TABLE "atf_test_cases" (
	"test_case_id" INTEGER,
	"description" TEXT,
	"has_cleanup" TEXT,
	"timeout" INTEGER,
	"required_memory" INTEGER,
	"required_user" TEXT
);

CREATE TABLE "test_case_files" (
	"test_case_id" INTEGER,
	"file_name" TEXT,
	"file_id" INTEGER,
	 PRIMARY KEY ("test_case_id","file_name")
);

CREATE TABLE "test_results" (
	"test_case_id" INTEGER,
	"result_type" TEXT,
	"result_reason" TEXT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP
);

CREATE TABLE "test_cases" (
	"test_case_id" INTEGER,
	"test_program_id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("test_case_id")
);

CREATE TABLE "test_programs" (
	"test_program_id" INTEGER,
	"action_id" INTEGER,
	"absolute_path" NOT,
	"root" TEXT,
	"relative_path" NOT,
	"test_suite_name" TEXT,
	"interface" TEXT,
	 PRIMARY KEY ("test_program_id")
);

CREATE TABLE "actions" (
	"action_id" INTEGER,
	"context_id" INTEGER,
	 PRIMARY KEY ("action_id")
);

CREATE TABLE "env_vars" (
	"context_id" INTEGER,
	"var_name" TEXT,
	"var_value" TEXT,
	 PRIMARY KEY ("context_id","var_name")
);

CREATE TABLE "contexts" (
	"context_id" INTEGER,
	"cwd" TEXT,
	 PRIMARY KEY ("context_id")
);

CREATE TABLE "metadata" (
	"timestamp" TIMESTAMP,
	"schema_version" INTEGER
);
