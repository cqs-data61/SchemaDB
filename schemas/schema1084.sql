DROP DATABASE IF EXISTS "schema1084";
CREATE DATABASE "schema1084";
USE "schema1084";
CREATE TABLE "email_header" (
	"id" BIGINT,
	"body" CLOB,
	"fromaddress" VARCHAR,
	"language" VARCHAR,
	"replytoaddress" VARCHAR,
	"subject" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workiteminfo" (
	"workitemid" BIGINT,
	"creationdate" TIMESTAMP,
	"name" VARCHAR,
	"processinstanceid" BIGINT,
	"state" BIGINT,
	"optlock" INTEGER,
	"workitembytearray" BLOB,
	 PRIMARY KEY ("workitemid")
);

CREATE TABLE "variableinstancelog" (
	"id" BIGINT,
	"log_date" TIMESTAMP,
	"externalid" VARCHAR,
	"oldvalue" VARCHAR,
	"processid" VARCHAR,
	"processinstanceid" BIGINT,
	"value" VARCHAR,
	"variableid" VARCHAR,
	"variableinstanceid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taskvariableimpl" (
	"id" BIGINT,
	"modificationdate" TIMESTAMP,
	"name" VARCHAR,
	"processid" VARCHAR,
	"processinstanceid" BIGINT,
	"taskid" BIGINT,
	"type" INTEGER,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taskevent" (
	"id" BIGINT,
	"logtime" TIMESTAMP,
	"message" VARCHAR,
	"processinstanceid" BIGINT,
	"taskid" BIGINT,
	"type" VARCHAR,
	"userid" VARCHAR,
	"optlock" INTEGER,
	"workitemid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taskdef" (
	"id" BIGINT,
	"name" VARCHAR,
	"priority" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessioninfo" (
	"id" BIGINT,
	"lastmodificationdate" TIMESTAMP,
	"rulesbytearray" BLOB,
	"startdate" TIMESTAMP,
	"optlock" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "requestinfo" (
	"id" BIGINT,
	"commandname" VARCHAR,
	"deploymentid" VARCHAR,
	"executions" INTEGER,
	"businesskey" VARCHAR,
	"message" VARCHAR,
	"owner" VARCHAR,
	"priority" INTEGER,
	"processinstanceid" BIGINT,
	"requestdata" BLOB,
	"responsedata" BLOB,
	"retries" INTEGER,
	"status" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "errorinfo" (
	"id" BIGINT,
	"message" VARCHAR,
	"stacktrace" VARCHAR,
	"timestamp" TIMESTAMP,
	"request_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cms0met37ggfw5p5gci3otaq0" FOREIGN KEY ("request_id") REFERENCES "requestinfo" ("id")
);

CREATE TABLE "querydefinitionstore" (
	"id" BIGINT,
	"qexpression" CLOB,
	"qname" VARCHAR,
	"qsource" VARCHAR,
	"qtarget" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "processinstancelog" (
	"id" BIGINT,
	"correlationkey" VARCHAR,
	"duration" BIGINT,
	"end_date" TIMESTAMP,
	"externalid" VARCHAR,
	"user_identity" VARCHAR,
	"outcome" VARCHAR,
	"parentprocessinstanceid" BIGINT,
	"processid" VARCHAR,
	"processinstancedescription" VARCHAR,
	"processinstanceid" BIGINT,
	"processname" VARCHAR,
	"processtype" INTEGER,
	"processversion" VARCHAR,
	"start_date" TIMESTAMP,
	"status" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "processinstanceinfo" (
	"instanceid" BIGINT,
	"lastmodificationdate" TIMESTAMP,
	"lastreaddate" TIMESTAMP,
	"processid" VARCHAR,
	"processinstancebytearray" BLOB,
	"startdate" TIMESTAMP,
	"state" INTEGER,
	"optlock" INTEGER,
	 PRIMARY KEY ("instanceid")
);

CREATE TABLE "eventtypes" (
	"instanceid" BIGINT,
	"element" VARCHAR,
	 CONSTRAINT "fk_nrecj4617iwxlc65ij6m7lsl1" FOREIGN KEY ("instanceid") REFERENCES "processinstanceinfo" ("instanceid")
);

CREATE TABLE "organizationalentity" (
	"dtype" VARCHAR,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" BIGINT,
	"archived" SMALLINT,
	"allowedtodelegate" VARCHAR,
	"description" VARCHAR,
	"formname" VARCHAR,
	"name" VARCHAR,
	"priority" INTEGER,
	"subtaskstrategy" VARCHAR,
	"subject" VARCHAR,
	"activationtime" TIMESTAMP,
	"createdon" TIMESTAMP,
	"deploymentid" VARCHAR,
	"documentaccesstype" INTEGER,
	"documentcontentid" BIGINT,
	"documenttype" VARCHAR,
	"expirationtime" TIMESTAMP,
	"faultaccesstype" INTEGER,
	"faultcontentid" BIGINT,
	"faultname" VARCHAR,
	"faulttype" VARCHAR,
	"outputaccesstype" INTEGER,
	"outputcontentid" BIGINT,
	"outputtype" VARCHAR,
	"parentid" BIGINT,
	"previousstatus" INTEGER,
	"processid" VARCHAR,
	"processinstanceid" BIGINT,
	"processsessionid" BIGINT,
	"skipable" BOOLEAN,
	"status" VARCHAR,
	"workitemid" BIGINT,
	"tasktype" VARCHAR,
	"optlock" INTEGER,
	"taskinitiator_id" VARCHAR,
	"actualowner_id" VARCHAR,
	"createdby_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_k02og0u71obf1uxgcdjx9rcjc" FOREIGN KEY ("createdby_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_dpk0f9ucm14c78bsxthh7h8yh" FOREIGN KEY ("taskinitiator_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_nh9nnt47f3l61qjlyedqt05rf" FOREIGN KEY ("actualowner_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "task_comment" (
	"id" BIGINT,
	"addedat" TIMESTAMP,
	"text" CLOB,
	"addedby_id" VARCHAR,
	"taskdata_comments_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_1ws9jdmhtey6mxu7jb0r0ufvs" FOREIGN KEY ("taskdata_comments_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_aax378yjnsmw9kb9vsu994jjv" FOREIGN KEY ("addedby_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_stakeholders" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_4bh3ay74x6ql9usunubttfdf1" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_met63inaep6cq4ofb3nnxi4tm" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_recipients" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_enhk831fghf6akjilfn58okl4" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_4g7y3wx6gnokf6vycgpxs83d6" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_potowners" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_4dv2oji7pr35ru0w45trix02x" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_tee3ftir7xs6eo3fdvi3xw026" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_exclowners" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_b8owuxfrdng050ugpk0pdowa7" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_pth28a73rj6bxtlfc69kmqo0a" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_bas" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_omjg5qh7uv8e9bolbaq7hv6oh" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_t38xbkrq6cppifnxequhvjsl2" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "delegation_delegates" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_gn7ula51sk55wj1o1m57guqxb" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_fajq6kossbsqwr3opkrctxei3" FOREIGN KEY ("task_id") REFERENCES "task" ("id")
);

CREATE TABLE "deadline" (
	"id" BIGINT,
	"deadline_date" TIMESTAMP,
	"escalated" SMALLINT,
	"deadlines_startdeadline_id" BIGINT,
	"deadlines_enddeadline_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_euoohoelbqvv94d8a8rcg8s5n" FOREIGN KEY ("deadlines_enddeadline_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_68w742sge00vco2cq3jhbvmgx" FOREIGN KEY ("deadlines_startdeadline_id") REFERENCES "task" ("id")
);

CREATE TABLE "escalation" (
	"id" BIGINT,
	"name" VARCHAR,
	"deadline_escalation_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ay2gd4fvl9yaapviyxudwuvfg" FOREIGN KEY ("deadline_escalation_id") REFERENCES "deadline" ("id")
);

CREATE TABLE "reassignment" (
	"id" BIGINT,
	"escalation_reassignments_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_pnpeue9hs6kx2ep0sp16b6kfd" FOREIGN KEY ("escalation_reassignments_id") REFERENCES "escalation" ("id")
);

CREATE TABLE "reassignment_potentialowners" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_qbega5ncu6b9yigwlw55aeijn" FOREIGN KEY ("task_id") REFERENCES "reassignment" ("id"),
	 CONSTRAINT "fk_8frl6la7tgparlnukhp8xmody" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "notification" (
	"dtype" VARCHAR,
	"id" BIGINT,
	"priority" INTEGER,
	"escalation_notifications_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_bdbeml3768go5im41cgfpyso9" FOREIGN KEY ("escalation_notifications_id") REFERENCES "escalation" ("id")
);

CREATE TABLE "notification_email_header" (
	"notification_id" BIGINT,
	"emailheaders_id" BIGINT,
	"mapkey" VARCHAR,
	 PRIMARY KEY ("notification_id","mapkey"),
	 CONSTRAINT "fk_eth4nvxn21fk1vnju85vkjrai" FOREIGN KEY ("notification_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_ptaka5kost68h7l3wflv7w6y8" FOREIGN KEY ("emailheaders_id") REFERENCES "email_header" ("id")
);

CREATE TABLE "notification_recipients" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_blf9jsrumtrthdaqnpwxt25eu" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_3l244pj8sh78vtn9imaymrg47" FOREIGN KEY ("task_id") REFERENCES "notification" ("id")
);

CREATE TABLE "notification_bas" (
	"task_id" BIGINT,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_fc0uuy76t2bvxaxqysoo8xts7" FOREIGN KEY ("task_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_mfbsnbrhth4rjhqc2ud338s4i" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "i18ntext" (
	"id" BIGINT,
	"language" VARCHAR,
	"shorttext" VARCHAR,
	"text" CLOB,
	"task_subjects_id" BIGINT,
	"task_names_id" BIGINT,
	"task_descriptions_id" BIGINT,
	"reassignment_documentation_id" BIGINT,
	"notification_subjects_id" BIGINT,
	"notification_names_id" BIGINT,
	"notification_documentation_id" BIGINT,
	"notification_descriptions_id" BIGINT,
	"deadline_documentation_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_qoce92c70adem3ccb3i7lec8x" FOREIGN KEY ("notification_documentation_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_21qvifarxsvuxeaw5sxwh473w" FOREIGN KEY ("deadline_documentation_id") REFERENCES "deadline" ("id"),
	 CONSTRAINT "fk_fd9uk6hemv2dx1ojovo7ms3vp" FOREIGN KEY ("task_names_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_4eyfp69ucrron2hr7qx4np2fp" FOREIGN KEY ("task_descriptions_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_g1trxri8w64enudw2t1qahhk5" FOREIGN KEY ("notification_names_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_bw8vmpekejxt1ei2ge26gdsry" FOREIGN KEY ("notification_descriptions_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_pqarjvvnwfjpeyb87yd7m0bfi" FOREIGN KEY ("reassignment_documentation_id") REFERENCES "reassignment" ("id"),
	 CONSTRAINT "fk_o84rkh69r47ti8uv4eyj7bmo2" FOREIGN KEY ("notification_subjects_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_k16jpgrh67ti9uedf6konsu1p" FOREIGN KEY ("task_subjects_id") REFERENCES "task" ("id")
);

CREATE TABLE "booleanexpression" (
	"id" BIGINT,
	"expression" CLOB,
	"type" VARCHAR,
	"escalation_constraints_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_394nf2qoc0k9ok6omgd6jtpso" FOREIGN KEY ("escalation_constraints_id") REFERENCES "escalation" ("id")
);

CREATE TABLE "attachment" (
	"id" BIGINT,
	"accesstype" INTEGER,
	"attachedat" TIMESTAMP,
	"attachmentcontentid" BIGINT,
	"contenttype" VARCHAR,
	"name" VARCHAR,
	"attachment_size" INTEGER,
	"attachedby_id" VARCHAR,
	"taskdata_attachments_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_hqupx569krp0f0sgu9kh87513" FOREIGN KEY ("taskdata_attachments_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_7ndpfa311i50bq7hy18q05va3" FOREIGN KEY ("attachedby_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "nodeinstancelog" (
	"id" BIGINT,
	"connection" VARCHAR,
	"log_date" TIMESTAMP,
	"externalid" VARCHAR,
	"nodeid" VARCHAR,
	"nodeinstanceid" VARCHAR,
	"nodename" VARCHAR,
	"nodetype" VARCHAR,
	"processid" VARCHAR,
	"processinstanceid" BIGINT,
	"type" INTEGER,
	"workitemid" BIGINT,
	"nodecontainerid" VARCHAR,
	"referenceid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "deploymentstore" (
	"id" BIGINT,
	"attributes" VARCHAR,
	"deployment_id" VARCHAR,
	"deploymentunit" CLOB,
	"state" INTEGER,
	"updatedate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "correlationkeyinfo" (
	"keyid" BIGINT,
	"name" VARCHAR,
	"processinstanceid" BIGINT,
	"optlock" INTEGER,
	 PRIMARY KEY ("keyid")
);

CREATE TABLE "correlationpropertyinfo" (
	"propertyid" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	"optlock" INTEGER,
	"correlationkey_keyid" BIGINT,
	 PRIMARY KEY ("propertyid"),
	 CONSTRAINT "fk_hrmx1m882cejwj9c04ixh50i4" FOREIGN KEY ("correlationkey_keyid") REFERENCES "correlationkeyinfo" ("keyid")
);

CREATE TABLE "contextmappinginfo" (
	"mappingid" BIGINT,
	"context_id" VARCHAR,
	"ksession_id" BIGINT,
	"owner_id" VARCHAR,
	"optlock" INTEGER,
	 PRIMARY KEY ("mappingid")
);

CREATE TABLE "content" (
	"id" BIGINT,
	"content" BLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "caseroleassignmentlog" (
	"id" BIGINT,
	"caseid" VARCHAR,
	"entityid" VARCHAR,
	"processinstanceid" BIGINT,
	"rolename" VARCHAR,
	"type" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "casefiledatalog" (
	"id" BIGINT,
	"casedefid" VARCHAR,
	"caseid" VARCHAR,
	"itemname" VARCHAR,
	"itemtype" VARCHAR,
	"itemvalue" VARCHAR,
	"lastmodified" TIMESTAMP,
	"lastmodifiedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "caseidinfo" (
	"id" BIGINT,
	"caseidprefix" VARCHAR,
	"currentvalue" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bamtasksummary" (
	"pk" BIGINT,
	"createddate" TIMESTAMP,
	"duration" BIGINT,
	"enddate" TIMESTAMP,
	"processinstanceid" BIGINT,
	"startdate" TIMESTAMP,
	"status" VARCHAR,
	"taskid" BIGINT,
	"taskname" VARCHAR,
	"userid" VARCHAR,
	"optlock" INTEGER,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "audittaskimpl" (
	"id" BIGINT,
	"activationtime" TIMESTAMP,
	"actualowner" VARCHAR,
	"createdby" VARCHAR,
	"createdon" TIMESTAMP,
	"deploymentid" VARCHAR,
	"description" VARCHAR,
	"duedate" TIMESTAMP,
	"name" VARCHAR,
	"parentid" BIGINT,
	"priority" INTEGER,
	"processid" VARCHAR,
	"processinstanceid" BIGINT,
	"processsessionid" BIGINT,
	"status" VARCHAR,
	"taskid" BIGINT,
	"workitemid" BIGINT,
	"lastmodificationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);
