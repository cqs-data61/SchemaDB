DROP DATABASE IF EXISTS "schema2333";
CREATE DATABASE "schema2333";
USE "schema2333";
CREATE TABLE "users" (
	"id" STRING,
	"name" TEXT,
	"type" INTEGER,
	"username" STRING,
	"password" STRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "classes" (
	"id" STRING,
	"teacher_id" STRING,
	"name" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_classes_to_users" FOREIGN KEY ("teacher_id") REFERENCES "users" ("id")
);

CREATE TABLE "tasks" (
	"id" STRING,
	"class_id" STRING,
	"start" DATE,
	"end" DATE,
	"name" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tasks_to_classes" FOREIGN KEY ("class_id") REFERENCES "classes" ("id")
);

CREATE TABLE "attempts" (
	"id" STRING,
	"task_id" STRING,
	"user_id" STRING,
	"at" DATE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_attempts_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_attempts_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "questions" (
	"id" STRING,
	"task_id" STRING,
	"content" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_questions_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "answers" (
	"id" STRING,
	"question_id" STRING,
	"content" TEXT,
	"correct" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_answers_to_questions" FOREIGN KEY ("question_id") REFERENCES "questions" ("id")
);

CREATE TABLE "attemptanswers" (
	"attempt_id" STRING,
	"answer_id" STRING,
	 PRIMARY KEY ("attempt_id","answer_id"),
	 CONSTRAINT "fkeycon_attemptanswers_to_answers" FOREIGN KEY ("answer_id") REFERENCES "answers" ("id"),
	 CONSTRAINT "fkeycon_attemptanswers_to_attempts" FOREIGN KEY ("attempt_id") REFERENCES "attempts" ("id")
);

CREATE TABLE "members" (
	"class_id" STRING,
	"student_id" STRING,
	 PRIMARY KEY ("class_id","student_id"),
	 CONSTRAINT "fkeycon_members_to_users" FOREIGN KEY ("student_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_members_to_classes" FOREIGN KEY ("class_id") REFERENCES "classes" ("id")
);

CREATE TABLE "messages" (
	"id" STRING,
	"from_id" STRING,
	"to_id" STRING,
	"type" INTEGER,
	"at" DATE,
	"content" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("from_id") REFERENCES "users" ("id")
);
