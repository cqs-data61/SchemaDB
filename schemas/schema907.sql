DROP DATABASE IF EXISTS "schema907";
CREATE DATABASE "schema907";
USE "schema907";
CREATE TABLE "users" (
	"username" VARCHAR,
	"fullname" VARCHAR,
	"email" VARCHAR,
	"filename" VARCHAR,
	"password" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("username")
);

CREATE TABLE "following" (
	"username1" VARCHAR,
	"username2" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("username1","username2"),
	 CONSTRAINT "fkeycon_following_to_users" FOREIGN KEY ("username1") REFERENCES "users" ("username")
);

CREATE TABLE "posts" (
	"postid" INTEGER,
	"filename" VARCHAR,
	"owner" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("postid"),
	 CONSTRAINT "fkeycon_posts_to_users" FOREIGN KEY ("owner") REFERENCES "users" ("username")
);

CREATE TABLE "likes" (
	"owner" VARCHAR,
	"postid" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("owner","postid"),
	 CONSTRAINT "fkeycon_likes_to_posts" FOREIGN KEY ("postid") REFERENCES "posts" ("postid"),
	 CONSTRAINT "fkeycon_likes_to_users" FOREIGN KEY ("owner") REFERENCES "users" ("username")
);

CREATE TABLE "comments" (
	"commentid" INTEGER,
	"owner" VARCHAR,
	"created" TIMESTAMP,
	"text" VARCHAR,
	"postid" INTEGER,
	 PRIMARY KEY ("commentid"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("owner") REFERENCES "users" ("username"),
	 CONSTRAINT "fkeycon_comments_to_posts" FOREIGN KEY ("postid") REFERENCES "posts" ("postid")
);
