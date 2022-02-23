DROP DATABASE IF EXISTS "schema1565";
CREATE DATABASE "schema1565";
USE "schema1565";
CREATE TABLE "prefix_product_comment_report" (
	"id_product_comment" INT,
	"id_customer" INT,
	 PRIMARY KEY ("id_product_comment","id_customer")
);

CREATE TABLE "prefix_product_comment_usefulness" (
	"id_product_comment" INT,
	"id_customer" INT,
	"usefulness" TINYINT,
	 PRIMARY KEY ("id_product_comment","id_customer")
);

CREATE TABLE "prefix_product_comment_grade" (
	"id_product_comment" INT,
	"id_product_comment_criterion" INT,
	"grade" INT,
	 PRIMARY KEY ("id_product_comment","id_product_comment_criterion")
);

CREATE TABLE "prefix_product_comment_criterion_category" (
	"id_product_comment_criterion" INT,
	"id_category" INT,
	 PRIMARY KEY ("id_product_comment_criterion","id_category")
);

CREATE TABLE "prefix_product_comment_criterion_lang" (
	"id_product_comment_criterion" INT,
	"id_lang" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id_product_comment_criterion","id_lang")
);

CREATE TABLE "prefix_product_comment_criterion_product" (
	"id_product" INT,
	"id_product_comment_criterion" INT,
	 PRIMARY KEY ("id_product","id_product_comment_criterion")
);

CREATE TABLE "prefix_product_comment_criterion" (
	"id_product_comment_criterion" INT,
	"id_product_comment_criterion_type" TINYINT,
	"active" TINYINT,
	 PRIMARY KEY ("id_product_comment_criterion")
);

CREATE TABLE "prefix_product_comment" (
	"id_product_comment" INT,
	"id_product" INT,
	"id_customer" INT,
	"id_guest" INT,
	"title" VARCHAR,
	"content" TEXT,
	"customer_name" VARCHAR,
	"grade" FLOAT,
	"validate" TINYINT,
	"deleted" TINYINT,
	"date_add" DATETIME,
	 PRIMARY KEY ("id_product_comment")
);
