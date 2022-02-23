DROP DATABASE IF EXISTS "schema908";
CREATE DATABASE "schema908";
USE "schema908";
CREATE TABLE "user" (
	"id" INT,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"email" VARCHAR,
	"status" INT,
	"rights" INT,
	"created_at" INT,
	"updated_at" INT,
	"scans_counter" INT,
	"scan_timeout" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tools_amount" (
	"id" SMALLINT,
	"amass" SMALLINT,
	"nmap" SMALLINT,
	"vhosts" SMALLINT,
	"dirscan" SMALLINT,
	"googlescan" SMALLINT,
	"gitscan" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"taskid" INT,
	"userid" INT,
	"notification_enabled" TINYINT,
	"status" VARCHAR,
	"host" MEDIUMTEXT,
	"nmap" LONGTEXT,
	"amass" LONGTEXT,
	"nuclei" LONGTEXT,
	"amass_intel" LONGTEXT,
	"subtakeover" MEDIUMTEXT,
	"aquatone" LONGTEXT,
	"dirscan" LONGTEXT,
	"wayback" LONGTEXT,
	"gitscan" LONGTEXT,
	"ips" MEDIUMTEXT,
	"vhost" LONGTEXT,
	"vhostwordlist" LONGTEXT,
	"js" LONGTEXT,
	"reverseip" LONGTEXT,
	"nmap_status" VARCHAR,
	"amass_status" VARCHAR,
	"dirscan_status" VARCHAR,
	"gitscan_status" VARCHAR,
	"ips_status" VARCHAR,
	"vhost_status" VARCHAR,
	"js_status" VARCHAR,
	"reverseip_status" VARCHAR,
	"date" DATETIME,
	"notified" MEDIUMINT,
	"notify_instrument" VARCHAR,
	"hidden" TINYINT,
	 PRIMARY KEY ("taskid")
);

CREATE TABLE "sent_email" (
	"emailid" INT,
	"userid" INT,
	"type" VARCHAR,
	"content" MEDIUMTEXT,
	"email" VARCHAR,
	"date" DATETIME,
	"scanid" INT,
	 PRIMARY KEY ("emailid")
);

CREATE TABLE "queue" (
	"id" INT,
	"taskid" INT,
	"passivescan" TINYINT,
	"instrument" INT,
	"working" INT,
	"todelete" INT,
	"amassdomain" VARCHAR,
	"wordlist" TINYINT,
	"dirscanurl" MEDIUMTEXT,
	"dirscanip" VARCHAR,
	"nucleiurl" VARCHAR,
	"nmap" VARCHAR,
	"vhostport" VARCHAR,
	"vhostip" VARCHAR,
	"vhostdomain" VARCHAR,
	"vhostssl" TINYINT
);

CREATE TABLE "passive_scan" (
	"passivescanid" INT,
	"userid" INT,
	"notifications_enabled" TINYINT,
	"scanday" TINYINT,
	"dirscanurl" VARCHAR,
	"dirscanip" VARCHAR,
	"amassdomain" VARCHAR,
	"nmapdomain" VARCHAR,
	"amass_previous" LONGTEXT,
	"amass_new" LONGTEXT,
	"nmap_previous" LONGTEXT,
	"nmap_new" LONGTEXT,
	"dirscan_previous" LONGTEXT,
	"dirscan_new" LONGTEXT,
	"gitscan" LONGTEXT,
	"is_active" TINYINT,
	"user_notified" TINYINT,
	"needs_to_notify" TINYINT,
	"notify_instrument" VARCHAR,
	"last_scan_monthday" INT,
	"viewed" TINYINT,
	 PRIMARY KEY ("passivescanid")
);

CREATE TABLE "gitscanpassive" (
	"id" INT,
	"companyid" INT,
	"companyname" VARCHAR,
	"repourl" VARCHAR,
	"companyurl" VARCHAR,
	"userid" INT,
	"is_active" INT,
	"last_scan_monthday" INT,
	"gitscan_previous" LONGTEXT,
	"gitscan_new" LONGTEXT,
	"needs_to_notify" INT,
	"token" VARCHAR,
	"viewed" INT,
	 PRIMARY KEY ("id")
);
