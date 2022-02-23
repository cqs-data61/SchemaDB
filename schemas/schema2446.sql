DROP DATABASE IF EXISTS "schema2446";
CREATE DATABASE "schema2446";
USE "schema2446";
CREATE TABLE "group" (
	"group_id" INT,
	"group_name" VARCHAR,
	 PRIMARY KEY ("group_id")
);

CREATE TABLE "user" (
	"user_id" INT,
	"username" VARCHAR,
	"dob" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_group" (
	"user_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("user_id","group_id"),
	 CONSTRAINT "fkeycon_user_group_to_group" FOREIGN KEY ("group_id") REFERENCES "group" ("group_id"),
	 CONSTRAINT "fkeycon_user_group_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
);

CREATE TABLE "post" (
	"post_id" INT,
	"user_id" INT,
	"post_text" VARCHAR,
	 PRIMARY KEY ("post_id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
);

CREATE TABLE "comment" (
	"comment_id" INT,
	"post_id" INT,
	"user_id" INT,
	"comment_text" VARCHAR,
	 PRIMARY KEY ("comment_id"),
	 CONSTRAINT "fkeycon_comment_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
	 CONSTRAINT "fkeycon_comment_to_post" FOREIGN KEY ("post_id") REFERENCES "post" ("post_id")
);
