DROP DATABASE IF EXISTS "schema1141";
CREATE DATABASE "schema1141";
USE "schema1141";
CREATE TABLE "craft_volumefolders" (
	"id" INT,
	"parentid" INT,
	"volumeid" INT,
	"name" VARCHAR,
	"path" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_volumefolders_parentId_fk" FOREIGN KEY ("parentid") REFERENCES "craft_volumefolders" ("id")
);

CREATE TABLE "craft_userpreferences" (
	"userid" INT,
	"preferences" TEXT,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "craft_userpermissions" (
	"id" INT,
	"name" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_userpermissions_users" (
	"id" INT,
	"permissionid" INT,
	"userid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_userpermissions_users_permissionId_fk" FOREIGN KEY ("permissionid") REFERENCES "craft_userpermissions" ("id")
);

CREATE TABLE "craft_usergroups" (
	"id" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_userpermissions_usergroups" (
	"id" INT,
	"permissionid" INT,
	"groupid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_userpermissions_usergroups_permissionId_fk" FOREIGN KEY ("permissionid") REFERENCES "craft_userpermissions" ("id"),
	 CONSTRAINT "craft_userpermissions_usergroups_groupId_fk" FOREIGN KEY ("groupid") REFERENCES "craft_usergroups" ("id")
);

CREATE TABLE "craft_usergroups_users" (
	"id" INT,
	"groupid" INT,
	"userid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_usergroups_users_groupId_fk" FOREIGN KEY ("groupid") REFERENCES "craft_usergroups" ("id")
);

CREATE TABLE "craft_tokens" (
	"id" INT,
	"token" CHAR,
	"route" TEXT,
	"usagelimit" SMALLINT,
	"usagecount" SMALLINT,
	"expirydate" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_templatecachequeries" (
	"id" INT,
	"cacheid" INT,
	"type" VARCHAR,
	"query" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_tasks" (
	"id" INT,
	"root" INT,
	"lft" INT,
	"rgt" INT,
	"level" SMALLINT,
	"currentstep" INT,
	"totalsteps" INT,
	"status" ENUM,
	"type" VARCHAR,
	"description" VARCHAR,
	"settings" MEDIUMTEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_taggroups" (
	"id" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"fieldlayoutid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_systemsettings" (
	"id" INT,
	"category" VARCHAR,
	"settings" TEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_structures" (
	"id" INT,
	"maxlevels" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_sites" (
	"id" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"language" VARCHAR,
	"hasurls" TINYINT,
	"baseurl" VARCHAR,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_templatecaches" (
	"id" INT,
	"siteid" INT,
	"cachekey" VARCHAR,
	"path" VARCHAR,
	"expirydate" DATETIME,
	"body" MEDIUMTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_templatecaches_siteId_fk" FOREIGN KEY ("siteid") REFERENCES "craft_sites" ("id")
);

CREATE TABLE "craft_shunnedmessages" (
	"id" INT,
	"userid" INT,
	"message" VARCHAR,
	"expirydate" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_sessions" (
	"id" INT,
	"userid" INT,
	"token" CHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_sections" (
	"id" INT,
	"structureid" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"type" ENUM,
	"enableversioning" TINYINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_sections_sites" (
	"id" INT,
	"sectionid" INT,
	"siteid" INT,
	"enabledbydefault" TINYINT,
	"hasurls" TINYINT,
	"uriformat" TEXT,
	"template" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_sections_i18n_sectionId_fk" FOREIGN KEY ("sectionid") REFERENCES "craft_sections" ("id")
);

CREATE TABLE "craft_searchindex" (
	"elementid" INT,
	"attribute" VARCHAR,
	"fieldid" INT,
	"siteid" INT,
	"keywords" TEXT,
	 PRIMARY KEY ("elementid","attribute","fieldid","siteid")
);

CREATE TABLE "craft_routes" (
	"id" INT,
	"siteid" INT,
	"uriparts" VARCHAR,
	"uripattern" VARCHAR,
	"template" VARCHAR,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_rackspaceaccess" (
	"id" INT,
	"connectionkey" VARCHAR,
	"token" VARCHAR,
	"storageurl" VARCHAR,
	"cdnurl" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_plugins" (
	"id" INT,
	"handle" VARCHAR,
	"version" VARCHAR,
	"schemaversion" VARCHAR,
	"licensekey" CHAR,
	"licensekeystatus" ENUM,
	"enabled" TINYINT,
	"settings" TEXT,
	"installdate" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_migrations" (
	"id" INT,
	"pluginid" INT,
	"type" ENUM,
	"name" VARCHAR,
	"applytime" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_info" (
	"id" INT,
	"version" VARCHAR,
	"build" INT,
	"schemaversion" VARCHAR,
	"releasedate" DATETIME,
	"edition" SMALLINT,
	"timezone" VARCHAR,
	"on" TINYINT,
	"maintenance" TINYINT,
	"track" VARCHAR,
	"fieldversion" CHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_fieldlayouts" (
	"id" INT,
	"type" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_volumes" (
	"id" INT,
	"fieldlayoutid" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"type" VARCHAR,
	"hasurls" TINYINT,
	"url" VARCHAR,
	"settings" TEXT,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_volumes_fieldLayoutId_fk" FOREIGN KEY ("fieldlayoutid") REFERENCES "craft_fieldlayouts" ("id")
);

CREATE TABLE "craft_fieldlayouttabs" (
	"id" INT,
	"layoutid" INT,
	"name" VARCHAR,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_fieldlayouttabs_layoutId_fk" FOREIGN KEY ("layoutid") REFERENCES "craft_fieldlayouts" ("id")
);

CREATE TABLE "craft_fieldlayoutfields" (
	"id" INT,
	"layoutid" INT,
	"tabid" INT,
	"fieldid" INT,
	"required" TINYINT,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_fieldgroups" (
	"id" INT,
	"name" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_fields" (
	"id" INT,
	"groupid" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"context" VARCHAR,
	"instructions" TEXT,
	"translationmethod" ENUM,
	"translationkeyformat" TEXT,
	"type" VARCHAR,
	"settings" TEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_fields_groupId_fk" FOREIGN KEY ("groupid") REFERENCES "craft_fieldgroups" ("id")
);

CREATE TABLE "craft_matrixblocktypes" (
	"id" INT,
	"fieldid" INT,
	"fieldlayoutid" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_matrixblocktypes_fieldId_fk" FOREIGN KEY ("fieldid") REFERENCES "craft_fields" ("id"),
	 CONSTRAINT "craft_matrixblocktypes_fieldLayoutId_fk" FOREIGN KEY ("fieldlayoutid") REFERENCES "craft_fieldlayouts" ("id")
);

CREATE TABLE "craft_entrytypes" (
	"id" INT,
	"sectionid" INT,
	"fieldlayoutid" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"hastitlefield" TINYINT,
	"titlelabel" VARCHAR,
	"titleformat" VARCHAR,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_emailmessages" (
	"id" INT,
	"language" VARCHAR,
	"key" VARCHAR,
	"subject" TEXT,
	"body" TEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_elements" (
	"id" INT,
	"type" VARCHAR,
	"enabled" TINYINT,
	"archived" TINYINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_templatecacheelements" (
	"cacheid" INT,
	"elementid" INT,
	 CONSTRAINT "craft_templatecacheelements_elementId_fk" FOREIGN KEY ("elementid") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_tags" (
	"id" INT,
	"groupid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_tags_groupId_fk" FOREIGN KEY ("groupid") REFERENCES "craft_taggroups" ("id"),
	 CONSTRAINT "craft_tags_id_fk" FOREIGN KEY ("id") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_structureelements" (
	"id" INT,
	"structureid" INT,
	"elementid" INT,
	"root" INT,
	"lft" INT,
	"rgt" INT,
	"level" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_structureelements_elementId_fk" FOREIGN KEY ("elementid") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_relations" (
	"id" INT,
	"fieldid" INT,
	"sourceid" INT,
	"sourcesiteid" INT,
	"targetid" INT,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_relations_sourceId_fk" FOREIGN KEY ("sourceid") REFERENCES "craft_elements" ("id"),
	 CONSTRAINT "craft_relations_fieldId_fk" FOREIGN KEY ("fieldid") REFERENCES "craft_fields" ("id"),
	 CONSTRAINT "craft_relations_targetId_fk" FOREIGN KEY ("targetid") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_matrixblocks" (
	"id" INT,
	"ownerid" INT,
	"ownersiteid" INT,
	"fieldid" INT,
	"typeid" INT,
	"sortorder" SMALLINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_matrixblocks_fieldId_fk" FOREIGN KEY ("fieldid") REFERENCES "craft_fields" ("id"),
	 CONSTRAINT "craft_matrixblocks_id_fk" FOREIGN KEY ("id") REFERENCES "craft_elements" ("id"),
	 CONSTRAINT "craft_matrixblocks_ownerId_fk" FOREIGN KEY ("ownerid") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_globalsets" (
	"id" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"fieldlayoutid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_globalsets_id_fk" FOREIGN KEY ("id") REFERENCES "craft_elements" ("id"),
	 CONSTRAINT "craft_globalsets_fieldLayoutId_fk" FOREIGN KEY ("fieldlayoutid") REFERENCES "craft_fieldlayouts" ("id")
);

CREATE TABLE "craft_entries" (
	"id" INT,
	"sectionid" INT,
	"typeid" INT,
	"authorid" INT,
	"postdate" DATETIME,
	"expirydate" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_entries_id_fk" FOREIGN KEY ("id") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_entryversions" (
	"id" INT,
	"entryid" INT,
	"sectionid" INT,
	"creatorid" INT,
	"siteid" INT,
	"num" SMALLINT,
	"notes" TEXT,
	"data" MEDIUMTEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_entryversions_entryId_fk" FOREIGN KEY ("entryid") REFERENCES "craft_entries" ("id")
);

CREATE TABLE "craft_entrydrafts" (
	"id" INT,
	"entryid" INT,
	"sectionid" INT,
	"creatorid" INT,
	"siteid" INT,
	"name" VARCHAR,
	"notes" TEXT,
	"data" MEDIUMTEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_entrydrafts_entryId_fk" FOREIGN KEY ("entryid") REFERENCES "craft_entries" ("id")
);

CREATE TABLE "craft_elements_sites" (
	"id" INT,
	"elementid" INT,
	"siteid" INT,
	"slug" VARCHAR,
	"uri" VARCHAR,
	"enabled" TINYINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_elements_i18n_elementId_fk" FOREIGN KEY ("elementid") REFERENCES "craft_elements" ("id")
);

CREATE TABLE "craft_elementindexsettings" (
	"id" INT,
	"type" VARCHAR,
	"settings" TEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_deprecationerrors" (
	"id" INT,
	"key" VARCHAR,
	"fingerprint" VARCHAR,
	"lastoccurrence" DATETIME,
	"file" VARCHAR,
	"line" SMALLINT,
	"class" VARCHAR,
	"method" VARCHAR,
	"template" VARCHAR,
	"templateline" SMALLINT,
	"message" VARCHAR,
	"traces" TEXT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_content" (
	"id" INT,
	"elementid" INT,
	"siteid" INT,
	"title" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_categorygroups" (
	"id" INT,
	"structureid" INT,
	"fieldlayoutid" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_categorygroups_sites" (
	"id" INT,
	"groupid" INT,
	"siteid" INT,
	"hasurls" TINYINT,
	"uriformat" TEXT,
	"template" VARCHAR,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_categorygroups_i18n_groupId_fk" FOREIGN KEY ("groupid") REFERENCES "craft_categorygroups" ("id")
);

CREATE TABLE "craft_categories" (
	"id" INT,
	"groupid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_assettransforms" (
	"id" INT,
	"name" VARCHAR,
	"handle" VARCHAR,
	"mode" ENUM,
	"position" ENUM,
	"width" INT,
	"height" INT,
	"format" VARCHAR,
	"quality" INT,
	"dimensionchangetime" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_assettransformindex" (
	"id" INT,
	"assetid" INT,
	"filename" VARCHAR,
	"format" VARCHAR,
	"location" VARCHAR,
	"volumeid" INT,
	"fileexists" TINYINT,
	"inprogress" TINYINT,
	"dateindexed" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_assets" (
	"id" INT,
	"volumeid" INT,
	"folderid" INT,
	"filename" VARCHAR,
	"kind" VARCHAR,
	"width" INT,
	"height" INT,
	"size" BIGINT,
	"datemodified" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "craft_users" (
	"id" INT,
	"username" VARCHAR,
	"photoid" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"admin" TINYINT,
	"client" TINYINT,
	"locked" TINYINT,
	"suspended" TINYINT,
	"pending" TINYINT,
	"archived" TINYINT,
	"lastlogindate" DATETIME,
	"lastloginattemptip" VARCHAR,
	"invalidloginwindowstart" DATETIME,
	"invalidlogincount" SMALLINT,
	"lastinvalidlogindate" DATETIME,
	"lockoutdate" DATETIME,
	"verificationcode" VARCHAR,
	"verificationcodeissueddate" DATETIME,
	"unverifiedemail" VARCHAR,
	"passwordresetrequired" TINYINT,
	"lastpasswordchangedate" DATETIME,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_users_id_fk" FOREIGN KEY ("id") REFERENCES "craft_elements" ("id"),
	 CONSTRAINT "craft_users_photoId_fk" FOREIGN KEY ("photoid") REFERENCES "craft_assets" ("id")
);

CREATE TABLE "craft_widgets" (
	"id" INT,
	"userid" INT,
	"type" VARCHAR,
	"sortorder" SMALLINT,
	"colspan" TINYINT,
	"settings" TEXT,
	"enabled" TINYINT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "craft_widgets_userId_fk" FOREIGN KEY ("userid") REFERENCES "craft_users" ("id")
);

CREATE TABLE "craft_assetindexdata" (
	"id" INT,
	"sessionid" VARCHAR,
	"volumeid" INT,
	"offset" INT,
	"uri" TEXT,
	"size" BIGINT,
	"timestamp" DATETIME,
	"recordid" INT,
	"datecreated" DATETIME,
	"dateupdated" DATETIME,
	"uid" CHAR,
	 PRIMARY KEY ("id")
);
