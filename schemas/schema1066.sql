DROP DATABASE IF EXISTS "schema1066";
CREATE DATABASE "schema1066";
USE "schema1066";
CREATE TABLE "pms_users_profile" (
	"userid" BIGINT,
	"realname" VARCHAR,
	"sex" TINYINT,
	"birth" VARCHAR,
	"email" VARCHAR,
	"webchat" VARCHAR,
	"qq" VARCHAR,
	"phone" VARCHAR,
	"tel" VARCHAR,
	"address" VARCHAR,
	"emercontact" VARCHAR,
	"emerphone" VARCHAR,
	"departid" BIGINT,
	"positionid" BIGINT,
	"lognum" INT,
	"ip" VARCHAR,
	"lasted" INT,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "pms_users_permissions" (
	"userid" BIGINT,
	"pid" INT
);

CREATE TABLE "pms_users" (
	"id" INT,
	"active_name" VARCHAR,
	"username" VARCHAR,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"email_validate_token" VARCHAR,
	"email" VARCHAR,
	"role" SMALLINT,
	"status" SMALLINT,
	"avatar" VARCHAR,
	"vip_lv" INT,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_resumes" (
	"resumeid" BIGINT,
	"realname" VARCHAR,
	"sex" TINYINT,
	"birth" INT,
	"edu" TINYINT,
	"work" TINYINT,
	"attachment" VARCHAR,
	"created" INT,
	"status" TINYINT,
	"note" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("resumeid")
);

CREATE TABLE "pms_projects_version" (
	"versionid" BIGINT,
	"projectid" BIGINT,
	"userid" BIGINT,
	"title" VARCHAR,
	"versioned" INT,
	"content" TEXT,
	"sourceurl" VARCHAR,
	"downurl" VARCHAR,
	"attachment" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("versionid")
);

CREATE TABLE "pms_projects_test_log" (
	"id" BIGINT,
	"testid" BIGINT,
	"userid" BIGINT,
	"note" TEXT,
	"created" INT
);

CREATE TABLE "pms_projects_test" (
	"testid" BIGINT,
	"taskid" BIGINT,
	"needsid" BIGINT,
	"userid" BIGINT,
	"projectid" BIGINT,
	"acceptid" BIGINT,
	"completeid" BIGINT,
	"ccid" VARCHAR,
	"name" VARCHAR,
	"desc" TEXT,
	"level" TINYINT,
	"os" VARCHAR,
	"browser" VARCHAR,
	"attachment" VARCHAR,
	"completed" INT,
	"created" INT,
	"changed" INT,
	"status" TINYINT,
	 PRIMARY KEY ("testid")
);

CREATE TABLE "pms_projects_team" (
	"id" BIGINT,
	"projectid" BIGINT,
	"userid" BIGINT,
	"created" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_projects_task_log" (
	"id" BIGINT,
	"taskid" BIGINT,
	"userid" BIGINT,
	"note" TEXT,
	"created" INT
);

CREATE TABLE "pms_projects_task" (
	"taskid" BIGINT,
	"needsid" BIGINT,
	"userid" BIGINT,
	"projectid" BIGINT,
	"acceptid" BIGINT,
	"ccid" VARCHAR,
	"completeid" BIGINT,
	"name" VARCHAR,
	"desc" TEXT,
	"note" TEXT,
	"type" TINYINT,
	"level" TINYINT,
	"tasktime" TINYINT,
	"ended" INT,
	"started" INT,
	"attachment" VARCHAR,
	"created" INT,
	"changed" INT,
	"status" TINYINT,
	"closeid" BIGINT,
	"cancelid" BIGINT,
	 PRIMARY KEY ("taskid")
);

CREATE TABLE "pms_projects_needs" (
	"needsid" BIGINT,
	"projectid" BIGINT,
	"userid" BIGINT,
	"name" VARCHAR,
	"desc" TEXT,
	"acceptid" BIGINT,
	"source" TINYINT,
	"acceptance" TEXT,
	"level" TINYINT,
	"tasktime" TINYINT,
	"attachment" VARCHAR,
	"created" INT,
	"changed" INT,
	"stage" TINYINT,
	"status" TINYINT,
	 PRIMARY KEY ("needsid")
);

CREATE TABLE "pms_projects_doc" (
	"docid" BIGINT,
	"projectid" BIGINT,
	"userid" BIGINT,
	"title" VARCHAR,
	"keyword" VARCHAR,
	"sort" TINYINT,
	"content" TEXT,
	"url" VARCHAR,
	"attachment" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("docid")
);

CREATE TABLE "pms_projects" (
	"projectid" BIGINT,
	"userid" BIGINT,
	"name" VARCHAR,
	"aliasname" VARCHAR,
	"started" INT,
	"ended" INT,
	"desc" TEXT,
	"created" INT,
	"status" TINYINT,
	"projuserid" BIGINT,
	"produserid" BIGINT,
	"testuserid" BIGINT,
	"publuserid" BIGINT,
	 PRIMARY KEY ("projectid")
);

CREATE TABLE "pms_positions" (
	"positionid" BIGINT,
	"name" VARCHAR,
	"desc" VARCHAR,
	"status" TINYINT,
	 PRIMARY KEY ("positionid")
);

CREATE TABLE "pms_permissions" (
	"id" INT,
	"permission" VARCHAR,
	"model" VARCHAR,
	"modelc" VARCHAR,
	"class" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_overtimes_approver" (
	"approverid" BIGINT,
	"overtimeid" BIGINT,
	"userid" BIGINT,
	"summary" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("approverid")
);

CREATE TABLE "pms_overtimes" (
	"overtimeid" BIGINT,
	"userid" BIGINT,
	"started" INT,
	"ended" INT,
	"longtime" TINYINT,
	"holiday" TINYINT,
	"way" TINYINT,
	"reason" VARCHAR,
	"result" TINYINT,
	"status" TINYINT,
	"approverids" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("overtimeid")
);

CREATE TABLE "pms_oagoods_approver" (
	"approverid" BIGINT,
	"oagoodid" BIGINT,
	"userid" BIGINT,
	"summary" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("approverid")
);

CREATE TABLE "pms_oagoods" (
	"oagoodid" BIGINT,
	"userid" BIGINT,
	"purpose" VARCHAR,
	"names" VARCHAR,
	"quantitys" VARCHAR,
	"content" VARCHAR,
	"picture" VARCHAR,
	"result" TINYINT,
	"status" TINYINT,
	"approverids" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("oagoodid")
);

CREATE TABLE "pms_notices" (
	"noticeid" BIGINT,
	"title" VARCHAR,
	"content" TEXT,
	"created" INT,
	"status" TINYINT,
	 PRIMARY KEY ("noticeid")
);

CREATE TABLE "pms_mission" (
	"mission_id" INT,
	"mission_content" VARCHAR,
	"mission_start" VARCHAR,
	"mission_end" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("mission_id")
);

CREATE TABLE "pms_messages" (
	"msgid" BIGINT,
	"userid" BIGINT,
	"touserid" BIGINT,
	"type" TINYINT,
	"subtype" TINYINT,
	"title" VARCHAR,
	"url" VARCHAR,
	"view" TINYINT,
	"created" INT,
	 PRIMARY KEY ("msgid")
);

CREATE TABLE "pms_leaves_approver" (
	"approverid" BIGINT,
	"leaveid" BIGINT,
	"userid" BIGINT,
	"summary" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("approverid")
);

CREATE TABLE "pms_leaves" (
	"leaveid" BIGINT,
	"userid" BIGINT,
	"type" TINYINT,
	"started" INT,
	"ended" INT,
	"days" FLOAT,
	"reason" VARCHAR,
	"picture" VARCHAR,
	"result" TINYINT,
	"status" TINYINT,
	"approverids" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("leaveid")
);

CREATE TABLE "pms_knowledges_sort" (
	"sortid" BIGINT,
	"name" VARCHAR,
	"desc" VARCHAR,
	"status" TINYINT,
	 PRIMARY KEY ("sortid")
);

CREATE TABLE "pms_knowledges_laud" (
	"laudid" BIGINT,
	"userid" BIGINT,
	"knowid" BIGINT,
	"created" INT,
	"status" TINYINT,
	 PRIMARY KEY ("laudid")
);

CREATE TABLE "pms_knowledges_comment" (
	"comtid" BIGINT,
	"userid" BIGINT,
	"knowid" BIGINT,
	"content" VARCHAR,
	"created" INT,
	"status" TINYINT,
	 PRIMARY KEY ("comtid")
);

CREATE TABLE "pms_knowledges" (
	"knowid" BIGINT,
	"userid" BIGINT,
	"sortid" BIGINT,
	"title" VARCHAR,
	"tag" VARCHAR,
	"summary" VARCHAR,
	"url" VARCHAR,
	"color" VARCHAR,
	"content" TEXT,
	"viewnum" INT,
	"comtnum" INT,
	"laudnum" INT,
	"ispublis" TINYINT,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("knowid")
);

CREATE TABLE "pms_groups_user" (
	"id" BIGINT,
	"groupid" BIGINT,
	"userid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_groups_permission" (
	"id" BIGINT,
	"groupid" BIGINT,
	"permissionid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pms_groups" (
	"groupid" BIGINT,
	"name" VARCHAR,
	"summary" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("groupid")
);

CREATE TABLE "pms_goouts_approver" (
	"approverid" BIGINT,
	"gooutid" BIGINT,
	"userid" BIGINT,
	"summary" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("approverid")
);

CREATE TABLE "pms_goouts" (
	"gooutid" BIGINT,
	"userid" BIGINT,
	"started" INT,
	"ended" INT,
	"hours" FLOAT,
	"reason" VARCHAR,
	"picture" VARCHAR,
	"result" TINYINT,
	"status" TINYINT,
	"approverids" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("gooutid")
);

CREATE TABLE "pms_expenses_approver" (
	"approverid" BIGINT,
	"expenseid" BIGINT,
	"userid" BIGINT,
	"summary" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("approverid")
);

CREATE TABLE "pms_expenses" (
	"expenseid" BIGINT,
	"userid" BIGINT,
	"amounts" VARCHAR,
	"types" VARCHAR,
	"contents" VARCHAR,
	"total" VARCHAR,
	"picture" VARCHAR,
	"result" TINYINT,
	"status" TINYINT,
	"approverids" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("expenseid")
);

CREATE TABLE "pms_departs" (
	"departid" BIGINT,
	"name" VARCHAR,
	"desc" VARCHAR,
	"status" TINYINT,
	 PRIMARY KEY ("departid")
);

CREATE TABLE "pms_checkworks" (
	"checkid" BIGINT,
	"userid" BIGINT,
	"clock" VARCHAR,
	"type" TINYINT,
	"ip" VARCHAR,
	"created" INT,
	 PRIMARY KEY ("checkid")
);

CREATE TABLE "pms_businesstrips_approver" (
	"approverid" BIGINT,
	"businesstripid" BIGINT,
	"userid" BIGINT,
	"summary" VARCHAR,
	"status" TINYINT,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("approverid")
);

CREATE TABLE "pms_businesstrips" (
	"businesstripid" BIGINT,
	"userid" BIGINT,
	"destinations" VARCHAR,
	"starteds" VARCHAR,
	"endeds" VARCHAR,
	"days" TINYINT,
	"reason" VARCHAR,
	"picture" VARCHAR,
	"result" TINYINT,
	"status" TINYINT,
	"approverids" VARCHAR,
	"created" INT,
	"changed" INT,
	 PRIMARY KEY ("businesstripid")
);

CREATE TABLE "pms_albums_laud" (
	"laudid" BIGINT,
	"userid" BIGINT,
	"albumid" BIGINT,
	"created" INT,
	"status" TINYINT,
	 PRIMARY KEY ("laudid")
);

CREATE TABLE "pms_albums_comment" (
	"comtid" BIGINT,
	"userid" BIGINT,
	"albumid" BIGINT,
	"content" VARCHAR,
	"created" INT,
	"status" TINYINT,
	 PRIMARY KEY ("comtid")
);

CREATE TABLE "pms_albums" (
	"albumid" BIGINT,
	"userid" BIGINT,
	"title" VARCHAR,
	"picture" VARCHAR,
	"keywords" VARCHAR,
	"summary" VARCHAR,
	"created" INT,
	"viewnum" INT,
	"comtnum" INT,
	"laudnum" INT,
	"status" TINYINT,
	 PRIMARY KEY ("albumid")
);
