DROP DATABASE IF EXISTS "schema1650";
CREATE DATABASE "schema1650";
USE "schema1650";
CREATE TABLE "queue" (
	"serial_number" INTEGER,
	"reservation_time" TEXT,
	"queue_type" TEXT,
	"content" TEXT,
	"add_time" TEXT,
	 PRIMARY KEY ("serial_number")
);

CREATE TABLE "keyvalue" (
	"key" TEXT,
	"value" TEXT,
	 PRIMARY KEY ("key")
);

CREATE TABLE "basedata" (
	"site" TEXT,
	"identifier" TEXT,
	"datetime" TEXT,
	"title" TEXT,
	"tags" TEXT,
	"body" TEXT,
	"jst" TEXT,
	 PRIMARY KEY ("site","identifier")
);

CREATE TABLE "task" (
	"連番" INTEGER,
	"状態" TEXT,
	"所有者" TEXT,
	"タスク名" TEXT,
	"重要度" INTEGER,
	"予定日" TEXT,
	"タグ" TEXT,
	"備考" TEXT,
	"親タスク" INTEGER,
	"追加日時" TEXT,
	"変更日時" TEXT,
	"完了日時" TEXT,
	"コスト" INTEGER,
	"実コスト" INTEGER,
	 PRIMARY KEY ("連番")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"body" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
