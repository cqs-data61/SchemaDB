DROP DATABASE IF EXISTS "schema1566";
CREATE DATABASE "schema1566";
USE "schema1566";
CREATE TABLE "subscription" (
	"id" INTEGER,
	"name" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_permission" (
	"user_id" INTEGER,
	"permission_id" INTEGER,
	 PRIMARY KEY ("user_id","permission_id")
);

CREATE TABLE "user_group" (
	"user_id" INTEGER,
	"group_id" INTEGER,
	 PRIMARY KEY ("user_id","group_id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"test" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "unique_test" (
	"id" INTEGER,
	"unique_test1" VARCHAR,
	"unique_test2" VARCHAR,
	"unique_test3" VARCHAR,
	"unique_test4" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "setting" (
	"id" INTEGER,
	"name" VARCHAR,
	"value" TEXT,
	"weight" DOUBLE,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "resource_type" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profile" (
	"id" INTEGER,
	"user_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "model_with_number_in_column" (
	"id" INTEGER,
	"column_1" VARCHAR,
	"column2" VARCHAR,
	"column__3" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "model_from_linked_schema" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group_permission" (
	"group_id" INTEGER,
	"permission_id" INTEGER,
	 PRIMARY KEY ("group_id","permission_id")
);

CREATE TABLE "groups" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "form_generator_test3" (
	"id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "form_generator_test2" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "form_generator_test" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "default_value_test" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "camel_case" (
	"id" INTEGER,
	"article_id" INTEGER,
	"testcamelcase" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author_inheritance_concrete" (
	"id" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"additional" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "attachment" (
	"id" INTEGER,
	"file_path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "article" (
	"id" INTEGER,
	"author_id" INTEGER,
	"is_on_homepage" INTEGER,
	"views" INTEGER,
	"type" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
