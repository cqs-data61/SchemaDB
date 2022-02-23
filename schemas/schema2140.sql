DROP DATABASE IF EXISTS "schema2140";
CREATE DATABASE "schema2140";
USE "schema2140";
CREATE TABLE "tb_tag" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tb_resource" (
	"id" INT,
	"type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tb_resource_tags" (
	"resource_id" INT,
	"tag_id" INT,
	 PRIMARY KEY ("resource_id","tag_id"),
	 CONSTRAINT "fkeycon_tb_resource_tags_to_tb_resource" FOREIGN KEY ("resource_id") REFERENCES "tb_resource" ("id"),
	 CONSTRAINT "fkeycon_tb_resource_tags_to_tb_tag" FOREIGN KEY ("tag_id") REFERENCES "tb_tag" ("id")
);

CREATE TABLE "tb_ebook" (
	"id" INT,
	"google_id" VARCHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"description" TEXT,
	"url" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tb_ebook_to_tb_resource" FOREIGN KEY ("id") REFERENCES "tb_resource" ("id")
);

CREATE TABLE "tb_user" (
	"id" INT,
	"full_name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tb_opinion" (
	"id" INT,
	"rating" INT,
	"description" TEXT,
	"resource_id" INT,
	"author_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tb_opinion_to_tb_user" FOREIGN KEY ("author_id") REFERENCES "tb_user" ("id"),
	 CONSTRAINT "fkeycon_tb_opinion_to_tb_resource" FOREIGN KEY ("resource_id") REFERENCES "tb_resource" ("id")
);

CREATE TABLE "tb_book" (
	"id" INT,
	"title" VARCHAR,
	"author" VARCHAR,
	"description" TEXT,
	"owner_id" INT,
	"reader_id" INT,
	"available" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tb_book_to_tb_resource" FOREIGN KEY ("id") REFERENCES "tb_resource" ("id"),
	 CONSTRAINT "fkeycon_tb_book_to_tb_user" FOREIGN KEY ("reader_id") REFERENCES "tb_user" ("id")
);

CREATE TABLE "tb_book_user_request" (
	"id" INT,
	"requester_id" INT,
	"book_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tb_book_user_request_to_tb_book" FOREIGN KEY ("book_id") REFERENCES "tb_book" ("id"),
	 CONSTRAINT "fkeycon_tb_book_user_request_to_tb_user" FOREIGN KEY ("requester_id") REFERENCES "tb_user" ("id")
);
