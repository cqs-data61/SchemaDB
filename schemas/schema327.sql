DROP DATABASE IF EXISTS "schema327";
CREATE DATABASE "schema327";
USE "schema327";
CREATE TABLE "shareboard" (
	"s_board_no" INT,
	"content" VARCHAR,
	"content_type" VARCHAR,
	"nickname" VARCHAR,
	"ip" VARCHAR,
	"regdate" TIMESTAMP,
	 PRIMARY KEY ("s_board_no")
);

CREATE TABLE "most" (
	"most_no" INT,
	"most_count" INT,
	"most_name" VARCHAR,
	"most_type" VARCHAR,
	 PRIMARY KEY ("most_no")
);

CREATE TABLE "board" (
	"board_no" INT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"content_type" VARCHAR,
	"nickname" VARCHAR,
	"password" VARCHAR,
	"ip" VARCHAR,
	"good" INT,
	"regdate" TIMESTAMP,
	"view_cnt" INT,
	 PRIMARY KEY ("board_no")
);

CREATE TABLE "goodlist" (
	"good_no" INT,
	"board_no" INT,
	"ip" VARCHAR,
	 PRIMARY KEY ("good_no"),
	 CONSTRAINT "FK_goodlist_board_no_board_board_no" FOREIGN KEY ("board_no") REFERENCES "board" ("board_no")
);

CREATE TABLE "comment" (
	"comment_no" INT,
	"board_no" INT,
	"content" LONGTEXT,
	"nickname" VARCHAR,
	"password" VARCHAR,
	"ip" VARCHAR,
	"regdate" TIMESTAMP,
	 PRIMARY KEY ("comment_no"),
	 CONSTRAINT "FK_comment_board_no_board_board_no" FOREIGN KEY ("board_no") REFERENCES "board" ("board_no")
);
