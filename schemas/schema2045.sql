DROP DATABASE IF EXISTS "schema2045";
CREATE DATABASE "schema2045";
USE "schema2045";
CREATE TABLE "email_header" (
	"id" INT8,
	"body" TEXT,
	"fromaddress" VARCHAR,
	"language" VARCHAR,
	"replytoaddress" VARCHAR,
	"subject" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workiteminfo" (
	"workitemid" INT8,
	"creationdate" TIMESTAMP,
	"name" VARCHAR,
	"processinstanceid" INT8,
	"state" INT8,
	"optlock" INT4,
	"workitembytearray" OID,
	 PRIMARY KEY ("workitemid")
);

CREATE TABLE "variableinstancelog" (
	"id" INT8,
	"log_date" TIMESTAMP,
	"externalid" VARCHAR,
	"oldvalue" VARCHAR,
	"processid" VARCHAR,
	"processinstanceid" INT8,
	"value" VARCHAR,
	"variableid" VARCHAR,
	"variableinstanceid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taskvariableimpl" (
	"id" INT8,
	"modificationdate" TIMESTAMP,
	"name" VARCHAR,
	"processid" VARCHAR,
	"processinstanceid" INT8,
	"taskid" INT8,
	"type" INT4,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taskevent" (
	"id" INT8,
	"logtime" TIMESTAMP,
	"message" VARCHAR,
	"processinstanceid" INT8,
	"taskid" INT8,
	"type" VARCHAR,
	"userid" VARCHAR,
	"optlock" INT4,
	"workitemid" INT8,
	"correlationkey" VARCHAR,
	"processtype" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taskdef" (
	"id" INT8,
	"name" VARCHAR,
	"priority" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessioninfo" (
	"id" INT8,
	"lastmodificationdate" TIMESTAMP,
	"rulesbytearray" OID,
	"startdate" TIMESTAMP,
	"optlock" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "requestinfo" (
	"id" INT8,
	"commandname" VARCHAR,
	"deploymentid" VARCHAR,
	"executions" INT4,
	"businesskey" VARCHAR,
	"message" VARCHAR,
	"owner" VARCHAR,
	"priority" INT4,
	"processinstanceid" INT8,
	"requestdata" OID,
	"responsedata" OID,
	"retries" INT4,
	"status" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "errorinfo" (
	"id" INT8,
	"message" VARCHAR,
	"stacktrace" VARCHAR,
	"timestamp" TIMESTAMP,
	"request_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cms0met37ggfw5p5gci3otaq0" FOREIGN KEY ("request_id") REFERENCES "requestinfo" ("id")
);

CREATE TABLE "querydefinitionstore" (
	"id" INT8,
	"qexpression" TEXT,
	"qname" VARCHAR,
	"qsource" VARCHAR,
	"qtarget" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "processinstancelog" (
	"id" INT8,
	"correlationkey" VARCHAR,
	"duration" INT8,
	"end_date" TIMESTAMP,
	"externalid" VARCHAR,
	"user_identity" VARCHAR,
	"outcome" VARCHAR,
	"parentprocessinstanceid" INT8,
	"processid" VARCHAR,
	"processinstancedescription" VARCHAR,
	"processinstanceid" INT8,
	"processname" VARCHAR,
	"processtype" INT4,
	"processversion" VARCHAR,
	"sla_due_date" TIMESTAMP,
	"slacompliance" INT4,
	"start_date" TIMESTAMP,
	"status" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "processinstanceinfo" (
	"instanceid" INT8,
	"lastmodificationdate" TIMESTAMP,
	"lastreaddate" TIMESTAMP,
	"processid" VARCHAR,
	"processinstancebytearray" OID,
	"startdate" TIMESTAMP,
	"state" INT4,
	"optlock" INT4,
	 PRIMARY KEY ("instanceid")
);

CREATE TABLE "eventtypes" (
	"instanceid" INT8,
	"element" VARCHAR,
	 CONSTRAINT "fk_nrecj4617iwxlc65ij6m7lsl1" FOREIGN KEY ("instanceid") REFERENCES "processinstanceinfo" ("instanceid")
);

CREATE TABLE "organizationalentity" (
	"dtype" VARCHAR,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" INT8,
	"archived" VARCHAR,
	"allowedtodelegate" VARCHAR,
	"description" VARCHAR,
	"formname" VARCHAR,
	"name" VARCHAR,
	"priority" INT4,
	"subtaskstrategy" VARCHAR,
	"subject" VARCHAR,
	"activationtime" TIMESTAMP,
	"createdon" TIMESTAMP,
	"deploymentid" VARCHAR,
	"documentaccesstype" INT4,
	"documentcontentid" INT8,
	"documenttype" VARCHAR,
	"expirationtime" TIMESTAMP,
	"faultaccesstype" INT4,
	"faultcontentid" INT8,
	"faultname" VARCHAR,
	"faulttype" VARCHAR,
	"outputaccesstype" INT4,
	"outputcontentid" INT8,
	"outputtype" VARCHAR,
	"parentid" INT8,
	"previousstatus" INT4,
	"processid" VARCHAR,
	"processinstanceid" INT8,
	"processsessionid" INT8,
	"skipable" BOOLEAN,
	"status" VARCHAR,
	"workitemid" INT8,
	"tasktype" VARCHAR,
	"optlock" INT4,
	"taskinitiator_id" VARCHAR,
	"actualowner_id" VARCHAR,
	"createdby_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_k02og0u71obf1uxgcdjx9rcjc" FOREIGN KEY ("createdby_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_dpk0f9ucm14c78bsxthh7h8yh" FOREIGN KEY ("taskinitiator_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_nh9nnt47f3l61qjlyedqt05rf" FOREIGN KEY ("actualowner_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "task_comment" (
	"id" INT8,
	"addedat" TIMESTAMP,
	"text" TEXT,
	"addedby_id" VARCHAR,
	"taskdata_comments_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_1ws9jdmhtey6mxu7jb0r0ufvs" FOREIGN KEY ("taskdata_comments_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_aax378yjnsmw9kb9vsu994jjv" FOREIGN KEY ("addedby_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_stakeholders" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_4bh3ay74x6ql9usunubttfdf1" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_met63inaep6cq4ofb3nnxi4tm" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_recipients" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_enhk831fghf6akjilfn58okl4" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_4g7y3wx6gnokf6vycgpxs83d6" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_potowners" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_4dv2oji7pr35ru0w45trix02x" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_tee3ftir7xs6eo3fdvi3xw026" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_exclowners" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_b8owuxfrdng050ugpk0pdowa7" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_pth28a73rj6bxtlfc69kmqo0a" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "peopleassignments_bas" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_omjg5qh7uv8e9bolbaq7hv6oh" FOREIGN KEY ("task_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_t38xbkrq6cppifnxequhvjsl2" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "delegation_delegates" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_gn7ula51sk55wj1o1m57guqxb" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_fajq6kossbsqwr3opkrctxei3" FOREIGN KEY ("task_id") REFERENCES "task" ("id")
);

CREATE TABLE "deadline" (
	"id" INT8,
	"deadline_date" TIMESTAMP,
	"escalated" VARCHAR,
	"deadlines_startdeadline_id" INT8,
	"deadlines_enddeadline_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_euoohoelbqvv94d8a8rcg8s5n" FOREIGN KEY ("deadlines_enddeadline_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_68w742sge00vco2cq3jhbvmgx" FOREIGN KEY ("deadlines_startdeadline_id") REFERENCES "task" ("id")
);

CREATE TABLE "escalation" (
	"id" INT8,
	"name" VARCHAR,
	"deadline_escalation_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ay2gd4fvl9yaapviyxudwuvfg" FOREIGN KEY ("deadline_escalation_id") REFERENCES "deadline" ("id")
);

CREATE TABLE "reassignment" (
	"id" INT8,
	"escalation_reassignments_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_pnpeue9hs6kx2ep0sp16b6kfd" FOREIGN KEY ("escalation_reassignments_id") REFERENCES "escalation" ("id")
);

CREATE TABLE "reassignment_potentialowners" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_qbega5ncu6b9yigwlw55aeijn" FOREIGN KEY ("task_id") REFERENCES "reassignment" ("id"),
	 CONSTRAINT "fk_8frl6la7tgparlnukhp8xmody" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "notification" (
	"dtype" VARCHAR,
	"id" INT8,
	"priority" INT4,
	"escalation_notifications_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_bdbeml3768go5im41cgfpyso9" FOREIGN KEY ("escalation_notifications_id") REFERENCES "escalation" ("id")
);

CREATE TABLE "notification_email_header" (
	"notification_id" INT8,
	"emailheaders_id" INT8,
	"mapkey" VARCHAR,
	 PRIMARY KEY ("notification_id","mapkey"),
	 CONSTRAINT "fk_eth4nvxn21fk1vnju85vkjrai" FOREIGN KEY ("notification_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_ptaka5kost68h7l3wflv7w6y8" FOREIGN KEY ("emailheaders_id") REFERENCES "email_header" ("id")
);

CREATE TABLE "notification_recipients" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_blf9jsrumtrthdaqnpwxt25eu" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id"),
	 CONSTRAINT "fk_3l244pj8sh78vtn9imaymrg47" FOREIGN KEY ("task_id") REFERENCES "notification" ("id")
);

CREATE TABLE "notification_bas" (
	"task_id" INT8,
	"entity_id" VARCHAR,
	 CONSTRAINT "fk_fc0uuy76t2bvxaxqysoo8xts7" FOREIGN KEY ("task_id") REFERENCES "notification" ("id"),
	 CONSTRAINT "fk_mfbsnbrhth4rjhqc2ud338s4i" FOREIGN KEY ("entity_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "i18ntext" (
	"id" INT8,
	"language" VARCHAR,
	"shorttext" VARCHAR,
	"text" TEXT,
	"task_subjects_id" INT8,
	"task_names_id" INT8,
	"task_descriptions_id" INT8,
	"reassignment_documentation_id" INT8,
	"notification_subjects_id" INT8,
	"notification_names_id" INT8,
	"notification_documentation_id" INT8,
	"notification_descriptions_id" INT8,
	"deadline_documentation_id" INT8,
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
	"id" INT8,
	"expression" TEXT,
	"type" VARCHAR,
	"escalation_constraints_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_394nf2qoc0k9ok6omgd6jtpso" FOREIGN KEY ("escalation_constraints_id") REFERENCES "escalation" ("id")
);

CREATE TABLE "attachment" (
	"id" INT8,
	"accesstype" INT4,
	"attachedat" TIMESTAMP,
	"attachmentcontentid" INT8,
	"contenttype" VARCHAR,
	"name" VARCHAR,
	"attachment_size" INT4,
	"attachedby_id" VARCHAR,
	"taskdata_attachments_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_hqupx569krp0f0sgu9kh87513" FOREIGN KEY ("taskdata_attachments_id") REFERENCES "task" ("id"),
	 CONSTRAINT "fk_7ndpfa311i50bq7hy18q05va3" FOREIGN KEY ("attachedby_id") REFERENCES "organizationalentity" ("id")
);

CREATE TABLE "nodeinstancelog" (
	"id" INT8,
	"connection" VARCHAR,
	"log_date" TIMESTAMP,
	"externalid" VARCHAR,
	"nodeid" VARCHAR,
	"nodeinstanceid" VARCHAR,
	"nodename" VARCHAR,
	"nodetype" VARCHAR,
	"processid" VARCHAR,
	"processinstanceid" INT8,
	"sla_due_date" TIMESTAMP,
	"slacompliance" INT4,
	"type" INT4,
	"workitemid" INT8,
	"nodecontainerid" VARCHAR,
	"referenceid" INT8,
	 PRIMARY KEY ("id")
);

CREATE TABLE "executionerrorinfo" (
	"id" INT8,
	"error_ack" VARCHAR,
	"error_ack_at" TIMESTAMP,
	"error_ack_by" VARCHAR,
	"activity_id" INT8,
	"activity_name" VARCHAR,
	"deployment_id" VARCHAR,
	"error_info" TEXT,
	"error_date" TIMESTAMP,
	"error_id" VARCHAR,
	"error_msg" VARCHAR,
	"init_activity_id" INT8,
	"job_id" INT8,
	"process_id" VARCHAR,
	"process_inst_id" INT8,
	"error_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "deploymentstore" (
	"id" INT8,
	"attributes" VARCHAR,
	"deployment_id" VARCHAR,
	"deploymentunit" TEXT,
	"state" INT4,
	"updatedate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "correlationkeyinfo" (
	"keyid" INT8,
	"name" VARCHAR,
	"processinstanceid" INT8,
	"optlock" INT4,
	 PRIMARY KEY ("keyid")
);

CREATE TABLE "correlationpropertyinfo" (
	"propertyid" INT8,
	"name" VARCHAR,
	"value" VARCHAR,
	"optlock" INT4,
	"correlationkey_keyid" INT8,
	 PRIMARY KEY ("propertyid"),
	 CONSTRAINT "fk_hrmx1m882cejwj9c04ixh50i4" FOREIGN KEY ("correlationkey_keyid") REFERENCES "correlationkeyinfo" ("keyid")
);

CREATE TABLE "contextmappinginfo" (
	"mappingid" INT8,
	"context_id" VARCHAR,
	"ksession_id" INT8,
	"owner_id" VARCHAR,
	"optlock" INT4,
	 PRIMARY KEY ("mappingid")
);

CREATE TABLE "content" (
	"id" INT8,
	"content" OID,
	 PRIMARY KEY ("id")
);

CREATE TABLE "caseroleassignmentlog" (
	"id" INT8,
	"caseid" VARCHAR,
	"entityid" VARCHAR,
	"processinstanceid" INT8,
	"rolename" VARCHAR,
	"type" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "casefiledatalog" (
	"id" INT8,
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
	"id" INT8,
	"caseidprefix" VARCHAR,
	"currentvalue" INT8,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bamtasksummary" (
	"pk" INT8,
	"createddate" TIMESTAMP,
	"duration" INT8,
	"enddate" TIMESTAMP,
	"processinstanceid" INT8,
	"startdate" TIMESTAMP,
	"status" VARCHAR,
	"taskid" INT8,
	"taskname" VARCHAR,
	"userid" VARCHAR,
	"optlock" INT4,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "audittaskimpl" (
	"id" INT8,
	"activationtime" TIMESTAMP,
	"actualowner" VARCHAR,
	"createdby" VARCHAR,
	"createdon" TIMESTAMP,
	"deploymentid" VARCHAR,
	"description" VARCHAR,
	"duedate" TIMESTAMP,
	"name" VARCHAR,
	"parentid" INT8,
	"priority" INT4,
	"processid" VARCHAR,
	"processinstanceid" INT8,
	"processsessionid" INT8,
	"status" VARCHAR,
	"taskid" INT8,
	"workitemid" INT8,
	"lastmodificationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);
