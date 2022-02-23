DROP DATABASE IF EXISTS "schema1672";
CREATE DATABASE "schema1672";
USE "schema1672";
CREATE TABLE "section" (
	"id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"image" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" INT,
	"userid" INT,
	"name" VARCHAR,
	"gender" VARCHAR,
	"occupation" VARCHAR,
	"location" VARCHAR,
	"description" TEXT,
	"picture" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"link" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "Author.UserId" FOREIGN KEY ("userid") REFERENCES "user" ("id")
);

CREATE TABLE "post" (
	"id" INT,
	"sectionid" INT,
	"authorid" INT,
	"slug" VARCHAR,
	"title" VARCHAR,
	"excerpt" VARCHAR,
	"image" VARCHAR,
	"content" TEXT,
	"editedat" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "Post.AuthorId" FOREIGN KEY ("authorid") REFERENCES "author" ("id"),
	 CONSTRAINT "Post.SectionId" FOREIGN KEY ("sectionid") REFERENCES "section" ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"postid" INT,
	"authorid" INT,
	"content" TEXT,
	"editedat" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "Comment.AuthorId" FOREIGN KEY ("authorid") REFERENCES "author" ("id"),
	 CONSTRAINT "Comment.PostId" FOREIGN KEY ("postid") REFERENCES "post" ("id")
);

CREATE TABLE "userrole" (
	"userid" INT,
	"roleid" INT,
	 PRIMARY KEY ("userid","roleid"),
	 CONSTRAINT "UserRole.RoleId" FOREIGN KEY ("roleid") REFERENCES "role" ("id"),
	 CONSTRAINT "UserRole.UserId" FOREIGN KEY ("userid") REFERENCES "user" ("id")
);
