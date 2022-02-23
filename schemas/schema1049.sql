DROP DATABASE IF EXISTS "schema1049";
CREATE DATABASE "schema1049";
USE "schema1049";
CREATE TABLE "reports" (
	"report_id" SERIAL,
	"uid" INTEGER,
	"post_id" INTEGER,
	"reason" TEXT,
	"report_time" TIMESTAMP,
	"open" BOOLEAN,
	 PRIMARY KEY ("report_id")
);

CREATE TABLE "users" (
	"uid" SERIAL,
	"email" TEXT,
	"password" TEXT,
	"role" TEXT,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "favorites" (
	"fav_id" SERIAL,
	"post_id" INTEGER,
	"uid" INTEGER,
	 PRIMARY KEY ("fav_id"),
	 CONSTRAINT "fk_uid" FOREIGN KEY ("uid") REFERENCES "users" ("uid")
);

CREATE TABLE "posts" (
	"post_id" SERIAL,
	"uid" INTEGER,
	"title" TEXT,
	"content" TEXT,
	"thumbnail" TEXT,
	"vid_url" TEXT,
	"post_time" TIMESTAMP,
	"tags" TEXT,
	 PRIMARY KEY ("post_id"),
	 CONSTRAINT "fk_uid" FOREIGN KEY ("uid") REFERENCES "users" ("uid")
);

CREATE TABLE "quizzes" (
	"quiz_id" SERIAL,
	"post_id" INTEGER,
	"content" LONGTEXT,
	 PRIMARY KEY ("quiz_id"),
	 CONSTRAINT "fk_post" FOREIGN KEY ("post_id") REFERENCES "posts" ("post_id")
);

CREATE TABLE "faqs" (
	"faq_id" SERIAL,
	"uid" INTEGER,
	"content" LONGTEXT,
	 PRIMARY KEY ("faq_id"),
	 CONSTRAINT "fk_uid" FOREIGN KEY ("uid") REFERENCES "users" ("uid")
);

CREATE TABLE "userdetails" (
	"ud_id" SERIAL,
	"uid" INTEGER,
	"name" TEXT,
	"address" TEXT,
	"phone_numb" TEXT,
	"avatar" TEXT,
	 PRIMARY KEY ("ud_id"),
	 CONSTRAINT "fk_uid" FOREIGN KEY ("uid") REFERENCES "users" ("uid")
);
