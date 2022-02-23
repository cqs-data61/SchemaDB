DROP DATABASE IF EXISTS "schema2135";
CREATE DATABASE "schema2135";
USE "schema2135";
CREATE TABLE "categories" (
	"cat_id" INTEGER,
	"cat_name" VARCHAR,
	 PRIMARY KEY ("cat_id")
);

CREATE TABLE "photos" (
	"photo_id" INTEGER,
	"issue_id" INTEGER,
	"photo_info" VARCHAR,
	 PRIMARY KEY ("photo_id")
);

CREATE TABLE "user_resolved" (
	"user_resolved_id" INTEGER,
	"user_id" INTEGER,
	"issue_id" INTEGER,
	 PRIMARY KEY ("user_resolved_id")
);

CREATE TABLE "user_flag" (
	"user_flag_id" INTEGER,
	"user_id" INTEGER,
	"issue_id" INTEGER,
	 PRIMARY KEY ("user_flag_id")
);

CREATE TABLE "user_up_vote" (
	"user_vote_id" INTEGER,
	"user_id" INTEGER,
	"issue_id" INTEGER,
	 PRIMARY KEY ("user_vote_id")
);

CREATE TABLE "dispute_issues" (
	"dispute_issue_id" INTEGER,
	"issue_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("dispute_issue_id")
);

CREATE TABLE "watched_issues" (
	"watched_issue_id" INTEGER,
	"user_id" INTEGER,
	"issue_id" INTEGER,
	 PRIMARY KEY ("watched_issue_id")
);

CREATE TABLE "issues_category" (
	"issue_cat_id" INTEGER,
	"issue_id" INTEGER,
	"cat_id" INTEGER,
	 PRIMARY KEY ("issue_cat_id")
);

CREATE TABLE "comments" (
	"comment_id" INTEGER,
	"issue_id" INTEGER,
	"text" VARCHAR,
	"user_id" INTEGER,
	"date" VARCHAR,
	 PRIMARY KEY ("comment_id")
);

CREATE TABLE "users" (
	"user_id" INTEGER,
	"username" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "issues" (
	"issue_id" INTEGER,
	"user_id" INTEGER,
	"title" VARCHAR,
	"text" VARCHAR,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"rep_name" VARCHAR,
	"rep_email" VARCHAR,
	"rep_photo_url" VARCHAR,
	"resolved" INTEGER,
	"date" VARCHAR,
	"up_vote" INTEGER,
	"flag_count" INTEGER,
	"resolver" INTEGER,
	 PRIMARY KEY ("issue_id")
);
