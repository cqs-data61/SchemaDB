DROP DATABASE IF EXISTS "schema578";
CREATE DATABASE "schema578";
USE "schema578";
CREATE TABLE "user_account" (
	"user_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "project" (
	"user_id" INT,
	"project_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_id"),
	 CONSTRAINT "fkeycon_project_to_user_account" FOREIGN KEY ("user_id") REFERENCES "user_account" ("user_id")
);

CREATE TABLE "state" (
	"project_id" INT,
	"state_name" VARCHAR,
	 PRIMARY KEY ("project_id","state_name"),
	 CONSTRAINT "fkeycon_state_to_project" FOREIGN KEY ("project_id") REFERENCES "project" ("project_id")
);

CREATE TABLE "issue" (
	"user_id" INT,
	"project_id" INT,
	"issue_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"opened_on" INT,
	"closed_on" INT,
	"state_name" VARCHAR,
	 PRIMARY KEY ("issue_id"),
	 CONSTRAINT "fkeycon_issue_to_user_account" FOREIGN KEY ("user_id") REFERENCES "user_account" ("user_id"),
	 CONSTRAINT "fkeycon_issue_to_state" FOREIGN KEY ("state_name","project_id") REFERENCES "state" ("state_name","project_id")
);

CREATE TABLE "comment" (
	"user_id" INT,
	"issue_id" INT,
	"comment_id" INT,
	"comment_text" VARCHAR,
	"creation_date" INT,
	 PRIMARY KEY ("user_id","issue_id","comment_id"),
	 CONSTRAINT "fkeycon_comment_to_user_account" FOREIGN KEY ("user_id") REFERENCES "user_account" ("user_id"),
	 CONSTRAINT "fkeycon_comment_to_issue" FOREIGN KEY ("issue_id") REFERENCES "issue" ("issue_id")
);

CREATE TABLE "state_transits_to" (
	"project_id" INT,
	"state_name" VARCHAR,
	"transits_to" VARCHAR,
	 PRIMARY KEY ("project_id","state_name","transits_to"),
	 CONSTRAINT "fkeycon_state_transits_to_to_state" FOREIGN KEY ("project_id","transits_to") REFERENCES "state" ("project_id","state_name")
);

CREATE TABLE "label" (
	"project_id" INT,
	"label_name" VARCHAR,
	 PRIMARY KEY ("project_id","label_name"),
	 CONSTRAINT "fkeycon_label_to_project" FOREIGN KEY ("project_id") REFERENCES "project" ("project_id")
);

CREATE TABLE "issue_has_labels" (
	"project_id" INT,
	"issue_id" INT,
	"label_name" VARCHAR,
	 PRIMARY KEY ("project_id","issue_id","label_name"),
	 CONSTRAINT "fkeycon_issue_has_labels_to_issue" FOREIGN KEY ("issue_id") REFERENCES "issue" ("issue_id"),
	 CONSTRAINT "fkeycon_issue_has_labels_to_label" FOREIGN KEY ("project_id","label_name") REFERENCES "label" ("project_id","label_name")
);
