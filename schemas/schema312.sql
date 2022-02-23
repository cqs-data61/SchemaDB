DROP DATABASE IF EXISTS "schema312";
CREATE DATABASE "schema312";
USE "schema312";
CREATE TABLE "security_teams" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "configurations" (
	"property" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("property")
);

CREATE TABLE "pn_regex" (
	"id" INTEGER,
	"note" VARCHAR,
	"regex" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pn_template" (
	"id" INTEGER,
	"primary_properties" VARCHAR,
	"notify_trigger" VARCHAR,
	"youngest_message_time" INTEGER,
	"oldest_message_time" INTEGER,
	"name" VARCHAR,
	"sender" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pn_template_regex" (
	"regex_id" INTEGER,
	"template_id" INTEGER,
	"id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pn_tmplrgx_tmpl_fk" FOREIGN KEY ("template_id") REFERENCES "pn_template" ("id"),
	 CONSTRAINT "pn_tmplrgx_rgx_fk" FOREIGN KEY ("regex_id") REFERENCES "pn_regex" ("id")
);

CREATE TABLE "pn_template_message" (
	"id" INTEGER,
	"template_id" INTEGER,
	"locale" VARCHAR,
	"message" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"subject" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pn_tmplmsg_tmpl_fk" FOREIGN KEY ("template_id") REFERENCES "pn_template" ("id")
);

CREATE TABLE "pn_receiver" (
	"id" INTEGER,
	"target" VARCHAR,
	"type_of_receiver" VARCHAR,
	"template_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"locale" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pn_receiver_tmpl_fk" FOREIGN KEY ("template_id") REFERENCES "pn_template" ("id")
);

CREATE TABLE "pn_pool_message" (
	"id" INTEGER,
	"regex_id" INTEGER,
	"template_id" INTEGER,
	"key_attributes" VARCHAR,
	"created" TIMESTAMP,
	"notif_message" TEXT,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pn_poolmsg_tmpl_fk" FOREIGN KEY ("template_id") REFERENCES "pn_template" ("id")
);

CREATE TABLE "pn_object" (
	"id" INTEGER,
	"name" VARCHAR,
	"properties" VARCHAR,
	"class_name" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pn_regex_object" (
	"id" INTEGER,
	"regex_id" INTEGER,
	"object_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pn_rgxobj_rgx_fk" FOREIGN KEY ("regex_id") REFERENCES "pn_regex" ("id"),
	 CONSTRAINT "pn_rgxobj_obj_fk" FOREIGN KEY ("object_id") REFERENCES "pn_object" ("id")
);

CREATE TABLE "pn_audit_message" (
	"message" TEXT,
	"id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reserved_logins" (
	"login" VARCHAR,
	"namespace" VARCHAR,
	"application" VARCHAR,
	"id" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("login","namespace")
);

CREATE TABLE "auditer_log" (
	"id" INTEGER,
	"msg" TEXT,
	"actor" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service_packages" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ext_sources" (
	"id" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ext_sources_attributes" (
	"ext_sources_id" INTEGER,
	"attr_name" VARCHAR,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 CONSTRAINT "usrcatt_usrc_fk" FOREIGN KEY ("ext_sources_id") REFERENCES "ext_sources" ("id")
);

CREATE TABLE "services" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"delay" INTEGER,
	"recurrence" INTEGER,
	"enabled" BOOLEAN,
	"script" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service_service_packages" (
	"service_id" INTEGER,
	"package_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("service_id","package_id"),
	 CONSTRAINT "srvpkg_pkg_fk" FOREIGN KEY ("package_id") REFERENCES "service_packages" ("id"),
	 CONSTRAINT "srvpkg_srv_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id")
);

CREATE TABLE "auditer_consumers" (
	"id" INTEGER,
	"name" VARCHAR,
	"last_processed_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "attr_names" (
	"id" INTEGER,
	"attr_name" VARCHAR,
	"friendly_name" VARCHAR,
	"namespace" VARCHAR,
	"type" VARCHAR,
	"dsc" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"display_name" VARCHAR,
	"is_unique" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entityless_attr_values" (
	"subject" VARCHAR,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("subject","attr_id"),
	 CONSTRAINT "entlatval_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id")
);

CREATE TABLE "service_required_attrs" (
	"service_id" INTEGER,
	"attr_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("service_id","attr_id"),
	 CONSTRAINT "srvreqattr_srv_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id"),
	 CONSTRAINT "srvreqattr_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id")
);

CREATE TABLE "membership_types" (
	"id" INTEGER,
	"membership_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "action_types" (
	"id" INTEGER,
	"action_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"name" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "attributes_authz" (
	"attr_id" INTEGER,
	"role_id" INTEGER,
	"action_type_id" INTEGER,
	 PRIMARY KEY ("attr_id","role_id","action_type_id"),
	 CONSTRAINT "attrauthz_role_fk" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "attrauthz_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "attrauthz_actiontyp_fk" FOREIGN KEY ("action_type_id") REFERENCES "action_types" ("id")
);

CREATE TABLE "destinations" (
	"id" INTEGER,
	"destination" VARCHAR,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "facilities" (
	"id" INTEGER,
	"name" VARCHAR,
	"dsc" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "security_teams_facilities" (
	"security_team_id" INTEGER,
	"facility_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("security_team_id","facility_id"),
	 CONSTRAINT "security_teams_facilities_security_team_fk" FOREIGN KEY ("security_team_id") REFERENCES "security_teams" ("id"),
	 CONSTRAINT "security_teams_facilities_facilities_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "tasks" (
	"id" INTEGER,
	"service_id" INTEGER,
	"facility_id" INTEGER,
	"schedule" TIMESTAMP,
	"recurrence" INTEGER,
	"delay" INTEGER,
	"status" VARCHAR,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"engine_id" INTEGER,
	"created_at" TIMESTAMP,
	"err_message" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "task_srv_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id"),
	 CONSTRAINT "task_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "tasks_results" (
	"id" INTEGER,
	"task_id" INTEGER,
	"destination_id" INTEGER,
	"status" VARCHAR,
	"err_message" VARCHAR,
	"std_message" VARCHAR,
	"return_code" INTEGER,
	"timestamp" TIMESTAMP,
	"engine_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "taskres_dest_fk" FOREIGN KEY ("destination_id") REFERENCES "destinations" ("id"),
	 CONSTRAINT "taskres_task_fk" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "facility_attr_values" (
	"facility_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("facility_id","attr_id"),
	 CONSTRAINT "facattval_nam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "facattval_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "facility_attr_u_values" (
	"facility_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_facility_attr_u_values_to_facility_attr_values" FOREIGN KEY ("facility_id","attr_id") REFERENCES "facility_attr_values" ("facility_id","attr_id")
);

CREATE TABLE "facility_service_destinations" (
	"service_id" INTEGER,
	"facility_id" INTEGER,
	"destination_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"propagation_type" VARCHAR,
	 CONSTRAINT "dest_srv_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id"),
	 CONSTRAINT "dest_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id"),
	 CONSTRAINT "dest_dest_fk" FOREIGN KEY ("destination_id") REFERENCES "destinations" ("id")
);

CREATE TABLE "service_denials" (
	"id" INTEGER,
	"service_id" INTEGER,
	"facility_id" INTEGER,
	"destination_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "srvden_dest_fk" FOREIGN KEY ("destination_id") REFERENCES "destinations" ("id"),
	 CONSTRAINT "srvden_srv_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id"),
	 CONSTRAINT "srvden_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "hosts" (
	"id" INTEGER,
	"hostname" VARCHAR,
	"facility_id" INTEGER,
	"dsc" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "host_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "host_attr_values" (
	"host_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("host_id","attr_id"),
	 CONSTRAINT "hostav_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "hostav_host_fk" FOREIGN KEY ("host_id") REFERENCES "hosts" ("id")
);

CREATE TABLE "host_attr_u_values" (
	"host_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_host_attr_u_values_to_host_attr_values" FOREIGN KEY ("host_id","attr_id") REFERENCES "host_attr_values" ("host_id","attr_id")
);

CREATE TABLE "cabinet_publication_systems" (
	"id" INTEGER,
	"friendlyname" VARCHAR,
	"url" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"loginnamespace" VARCHAR,
	"type" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cabinet_categories" (
	"id" INTEGER,
	"name" VARCHAR,
	"rank" NUMERIC,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cabinet_publications" (
	"id" INTEGER,
	"externalid" INTEGER,
	"publicationsystemid" INTEGER,
	"title" VARCHAR,
	"year" INTEGER,
	"main" VARCHAR,
	"isbn" VARCHAR,
	"categoryid" INTEGER,
	"createdby" VARCHAR,
	"createddate" TIMESTAMP,
	"rank" NUMERIC,
	"doi" VARCHAR,
	"locked" BOOLEAN,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "catpub_sys_fk" FOREIGN KEY ("publicationsystemid") REFERENCES "cabinet_publication_systems" ("id"),
	 CONSTRAINT "cabpub_cat_fk" FOREIGN KEY ("categoryid") REFERENCES "cabinet_categories" ("id")
);

CREATE TABLE "cabinet_thanks" (
	"id" INTEGER,
	"publicationid" INTEGER,
	"ownerid" INTEGER,
	"createdby" VARCHAR,
	"createddate" TIMESTAMP,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cabthank_pub_fk" FOREIGN KEY ("publicationid") REFERENCES "cabinet_publications" ("id")
);

CREATE TABLE "owners" (
	"id" INTEGER,
	"name" VARCHAR,
	"contact" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"type" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "facility_owners" (
	"facility_id" INTEGER,
	"owner_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("facility_id","owner_id"),
	 CONSTRAINT "facow_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id"),
	 CONSTRAINT "facow_ow_fk" FOREIGN KEY ("owner_id") REFERENCES "owners" ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"uu_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"middle_name" VARCHAR,
	"title_before" VARCHAR,
	"title_after" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"service_acc" BOOLEAN,
	"sponsored_acc" BOOLEAN,
	"anonymized" BOOLEAN,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "facilities_bans" (
	"id" INTEGER,
	"user_id" INTEGER,
	"facility_id" INTEGER,
	"description" VARCHAR,
	"banned_to" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fac_bans_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id"),
	 CONSTRAINT "fac_bans_usr_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "blacklists" (
	"security_team_id" INTEGER,
	"user_id" INTEGER,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("security_team_id","user_id"),
	 CONSTRAINT "bllist_secteam_fk" FOREIGN KEY ("security_team_id") REFERENCES "security_teams" ("id"),
	 CONSTRAINT "bllist_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "pwdreset" (
	"id" INTEGER,
	"uu_id" VARCHAR,
	"namespace" TEXT,
	"mail" TEXT,
	"user_id" INTEGER,
	"validity_to" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"created_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pwdreset_u_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "mailchange" (
	"id" INTEGER,
	"value" TEXT,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"created_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "mailchange_u_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_ext_sources" (
	"id" INTEGER,
	"user_id" INTEGER,
	"login_ext" VARCHAR,
	"ext_sources_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"loa" INTEGER,
	"last_access" TIMESTAMP,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "usrex_usersrc_fk" FOREIGN KEY ("ext_sources_id") REFERENCES "ext_sources" ("id"),
	 CONSTRAINT "usrex_usr_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_ext_source_attr_values" (
	"user_ext_source_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("user_ext_source_id","attr_id"),
	 CONSTRAINT "uesattrval_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "uesattrval_ues_fk" FOREIGN KEY ("user_ext_source_id") REFERENCES "user_ext_sources" ("id")
);

CREATE TABLE "user_ext_source_attr_u_values" (
	"user_ext_source_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_user_ext_source_attr_u_values_to_user_ext_source_attr_values" FOREIGN KEY ("user_ext_source_id","attr_id") REFERENCES "user_ext_source_attr_values" ("user_ext_source_id","attr_id")
);

CREATE TABLE "user_facility_attr_values" (
	"user_id" INTEGER,
	"facility_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("user_id","facility_id","attr_id"),
	 CONSTRAINT "usrfacav_mem_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "usrfacav_accattnam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "usrfacav_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "user_facility_attr_u_values" (
	"user_id" INT,
	"facility_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_user_facility_attr_u_values_to_user_facility_attr_values" FOREIGN KEY ("user_id","facility_id","attr_id") REFERENCES "user_facility_attr_values" ("user_id","facility_id","attr_id")
);

CREATE TABLE "user_attr_values" (
	"user_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("user_id","attr_id"),
	 CONSTRAINT "usrav_accattnam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "usrav_usr_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_attr_u_values" (
	"user_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_user_attr_u_values_to_user_attr_values" FOREIGN KEY ("user_id","attr_id") REFERENCES "user_attr_values" ("user_id","attr_id")
);

CREATE TABLE "specific_user_users" (
	"user_id" INTEGER,
	"specific_user_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"modified_at" TIMESTAMP,
	"type" VARCHAR,
	"status" INTEGER,
	 PRIMARY KEY ("user_id","specific_user_id"),
	 CONSTRAINT "acc_specifu_u_uid_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "acc_specifu_u_suid_fk" FOREIGN KEY ("specific_user_id") REFERENCES "users" ("id")
);

CREATE TABLE "cabinet_authorships" (
	"id" INTEGER,
	"publicationid" INTEGER,
	"userid" INTEGER,
	"createdby" VARCHAR,
	"createddate" TIMESTAMP,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cabaut_usr_fk" FOREIGN KEY ("userid") REFERENCES "users" ("id"),
	 CONSTRAINT "cabaut_pub_fk" FOREIGN KEY ("publicationid") REFERENCES "cabinet_publications" ("id")
);

CREATE TABLE "vos" (
	"id" INTEGER,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "res_tags" (
	"id" INTEGER,
	"vo_id" INTEGER,
	"tag_name" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "restags_vos_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id")
);

CREATE TABLE "vo_ext_sources" (
	"vo_id" INTEGER,
	"ext_sources_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("vo_id","ext_sources_id"),
	 CONSTRAINT "vousrsrc_usrsrc_fk" FOREIGN KEY ("ext_sources_id") REFERENCES "ext_sources" ("id"),
	 CONSTRAINT "vousrsrc_vos_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id")
);

CREATE TABLE "vo_attr_values" (
	"vo_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("vo_id","attr_id"),
	 CONSTRAINT "voattval_nam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "voattval_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id")
);

CREATE TABLE "vo_attr_u_values" (
	"vo_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_vo_attr_u_values_to_vo_attr_values" FOREIGN KEY ("vo_id","attr_id") REFERENCES "vo_attr_values" ("vo_id","attr_id")
);

CREATE TABLE "members" (
	"id" INTEGER,
	"user_id" INTEGER,
	"vo_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"status" INTEGER,
	"sponsored" BOOLEAN,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "mem_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "mem_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id")
);

CREATE TABLE "members_sponsored" (
	"active" BOOLEAN,
	"sponsored_id" INTEGER,
	"sponsor_id" INTEGER,
	"validity_to" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"modified_by_uid" INTEGER,
	 CONSTRAINT "memspons_usr_fk" FOREIGN KEY ("sponsor_id") REFERENCES "users" ("id"),
	 CONSTRAINT "memspons_mem_fk" FOREIGN KEY ("sponsored_id") REFERENCES "members" ("id")
);

CREATE TABLE "vos_bans" (
	"id" INTEGER,
	"member_id" INTEGER,
	"vo_id" INTEGER,
	"description" VARCHAR,
	"banned_to" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "vos_bans_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id"),
	 CONSTRAINT "vos_bans_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id")
);

CREATE TABLE "member_attr_values" (
	"member_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("member_id","attr_id"),
	 CONSTRAINT "memattval_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id"),
	 CONSTRAINT "memattval_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id")
);

CREATE TABLE "member_attr_u_values" (
	"member_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_member_attr_u_values_to_member_attr_values" FOREIGN KEY ("member_id","attr_id") REFERENCES "member_attr_values" ("member_id","attr_id")
);

CREATE TABLE "groups" (
	"id" INTEGER,
	"uu_id" VARCHAR,
	"name" TEXT,
	"dsc" VARCHAR,
	"vo_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"parent_group_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "grp_grp_fk" FOREIGN KEY ("parent_group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "grp_vos_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id")
);

CREATE TABLE "groups_to_register" (
	"group_id" INTEGER,
	 CONSTRAINT "grpreg_group_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_groups" (
	"result_gid" INTEGER,
	"operand_gid" INTEGER,
	"parent_flag" BOOLEAN,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	 PRIMARY KEY ("result_gid","operand_gid"),
	 CONSTRAINT "grp_grp_rgid_fk" FOREIGN KEY ("result_gid") REFERENCES "groups" ("id"),
	 CONSTRAINT "grp_grp_ogid_fk" FOREIGN KEY ("operand_gid") REFERENCES "groups" ("id")
);

CREATE TABLE "group_ext_sources" (
	"group_id" INTEGER,
	"ext_source_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("group_id","ext_source_id"),
	 CONSTRAINT "groupsrc_src_fk" FOREIGN KEY ("ext_source_id") REFERENCES "ext_sources" ("id"),
	 CONSTRAINT "groupsrc_groups_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id")
);

CREATE TABLE "member_group_attr_values" (
	"member_id" INTEGER,
	"group_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("member_id","group_id","attr_id"),
	 CONSTRAINT "memgav_grp_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "memgav_accattnam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "memgav_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id")
);

CREATE TABLE "member_group_attr_u_values" (
	"member_id" INT,
	"group_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_member_group_attr_u_values_to_member_group_attr_values" FOREIGN KEY ("member_id","group_id","attr_id") REFERENCES "member_group_attr_values" ("member_id","group_id","attr_id")
);

CREATE TABLE "groups_members" (
	"group_id" INTEGER,
	"member_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"source_group_status" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"membership_type" INTEGER,
	"source_group_id" INTEGER,
	 PRIMARY KEY ("member_id","group_id","source_group_id"),
	 CONSTRAINT "grpmem_memtype_fk" FOREIGN KEY ("membership_type") REFERENCES "membership_types" ("id"),
	 CONSTRAINT "grpmem_gr_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "grpmem_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id")
);

CREATE TABLE "group_attr_values" (
	"group_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("group_id","attr_id"),
	 CONSTRAINT "grpattval_grp_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "grpattval_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id")
);

CREATE TABLE "group_attr_u_values" (
	"group_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_group_attr_u_values_to_group_attr_values" FOREIGN KEY ("group_id","attr_id") REFERENCES "group_attr_values" ("group_id","attr_id")
);

CREATE TABLE "application_form" (
	"id" INTEGER,
	"vo_id" INTEGER,
	"automatic_approval" BOOLEAN,
	"automatic_approval_extension" BOOLEAN,
	"automatic_approval_embedded" BOOLEAN,
	"module_name" VARCHAR,
	"group_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "applform_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id"),
	 CONSTRAINT "applform_group_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id")
);

CREATE TABLE "application_mails" (
	"id" INTEGER,
	"form_id" INTEGER,
	"app_type" VARCHAR,
	"mail_type" VARCHAR,
	"send" BOOLEAN,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "appmail_appform_fk" FOREIGN KEY ("form_id") REFERENCES "application_form" ("id")
);

CREATE TABLE "application_mail_texts" (
	"mail_id" INTEGER,
	"locale" VARCHAR,
	"subject" VARCHAR,
	"text" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("mail_id","locale"),
	 CONSTRAINT "appmailtxt_appmails_fk" FOREIGN KEY ("mail_id") REFERENCES "application_mails" ("id")
);

CREATE TABLE "application_form_items" (
	"id" INTEGER,
	"form_id" INTEGER,
	"hidden" ENUM,
	"disabled" ENUM,
	"updatable" BOOLEAN,
	"hidden_dependency_item_id" INTEGER,
	"disabled_dependency_item_id" INTEGER,
	"ordnum" INTEGER,
	"shortname" VARCHAR,
	"required" BOOLEAN,
	"type" VARCHAR,
	"fed_attr" VARCHAR,
	"src_attr" VARCHAR,
	"dst_attr" VARCHAR,
	"regex" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "applfrmit_dd" FOREIGN KEY ("disabled_dependency_item_id") REFERENCES "application_form_items" ("id"),
	 CONSTRAINT "applfrmit_hd" FOREIGN KEY ("hidden_dependency_item_id") REFERENCES "application_form_items" ("id"),
	 CONSTRAINT "applfrmit_applform" FOREIGN KEY ("form_id") REFERENCES "application_form" ("id")
);

CREATE TABLE "application_form_item_texts" (
	"item_id" INTEGER,
	"locale" VARCHAR,
	"label" TEXT,
	"options" TEXT,
	"help" VARCHAR,
	"error_message" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("item_id","locale"),
	 CONSTRAINT "applfrmittxt_applfrmit_fk" FOREIGN KEY ("item_id") REFERENCES "application_form_items" ("id")
);

CREATE TABLE "application_form_item_apptypes" (
	"item_id" INTEGER,
	"apptype" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 CONSTRAINT "applfrmittyp_applfrmit_fk" FOREIGN KEY ("item_id") REFERENCES "application_form_items" ("id")
);

CREATE TABLE "application" (
	"id" INTEGER,
	"vo_id" INTEGER,
	"user_id" INTEGER,
	"apptype" VARCHAR,
	"extsourcename" VARCHAR,
	"extsourcetype" VARCHAR,
	"fed_info" TEXT,
	"state" VARCHAR,
	"extsourceloa" INTEGER,
	"group_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "app_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "app_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id"),
	 CONSTRAINT "app_group_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id")
);

CREATE TABLE "application_reserved_logins" (
	"login" VARCHAR,
	"namespace" VARCHAR,
	"app_id" INTEGER,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("login","namespace"),
	 CONSTRAINT "applogin_appid_fk" FOREIGN KEY ("app_id") REFERENCES "application" ("id")
);

CREATE TABLE "application_data" (
	"id" INTEGER,
	"app_id" INTEGER,
	"item_id" INTEGER,
	"shortname" VARCHAR,
	"value" VARCHAR,
	"assurance_level" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "appdata_applfrmit_fk" FOREIGN KEY ("item_id") REFERENCES "application_form_items" ("id"),
	 CONSTRAINT "appdata_app_fk" FOREIGN KEY ("app_id") REFERENCES "application" ("id")
);

CREATE TABLE "facility_contacts" (
	"name" VARCHAR,
	"facility_id" INTEGER,
	"owner_id" INTEGER,
	"user_id" INTEGER,
	"group_id" INTEGER,
	 CONSTRAINT "faccont_own_fk" FOREIGN KEY ("owner_id") REFERENCES "owners" ("id"),
	 CONSTRAINT "faccont_grp_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "faccont_usr_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "faccont_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "resources" (
	"id" INTEGER,
	"uu_id" VARCHAR,
	"facility_id" INTEGER,
	"name" VARCHAR,
	"dsc" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"vo_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "rsrc_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id"),
	 CONSTRAINT "rsrc_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id")
);

CREATE TABLE "authz" (
	"user_id" INTEGER,
	"role_id" INTEGER,
	"vo_id" INTEGER,
	"facility_id" INTEGER,
	"member_id" INTEGER,
	"group_id" INTEGER,
	"service_id" INTEGER,
	"resource_id" INTEGER,
	"sponsored_user_id" INTEGER,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	"authorized_group_id" INTEGER,
	"security_team_id" INTEGER,
	 CONSTRAINT "authz_service_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id"),
	 CONSTRAINT "authz_authz_group_fk" FOREIGN KEY ("authorized_group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "authz_sec_team_fk" FOREIGN KEY ("security_team_id") REFERENCES "security_teams" ("id"),
	 CONSTRAINT "authz_role_fk" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "authz_vo_fk" FOREIGN KEY ("vo_id") REFERENCES "vos" ("id"),
	 CONSTRAINT "authz_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "authz_fac_fk" FOREIGN KEY ("facility_id") REFERENCES "facilities" ("id"),
	 CONSTRAINT "authz_group_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "authz_res_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id"),
	 CONSTRAINT "authz_sponsu_fk" FOREIGN KEY ("sponsored_user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "authz_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id")
);

CREATE TABLE "resources_bans" (
	"id" INTEGER,
	"member_id" INTEGER,
	"resource_id" INTEGER,
	"description" VARCHAR,
	"banned_to" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "res_bans_res_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id"),
	 CONSTRAINT "res_bans_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id")
);

CREATE TABLE "tags_resources" (
	"tag_id" INTEGER,
	"resource_id" INTEGER,
	 PRIMARY KEY ("tag_id","resource_id"),
	 CONSTRAINT "tags_res_tags_fk" FOREIGN KEY ("tag_id") REFERENCES "res_tags" ("id"),
	 CONSTRAINT "tags_res_res_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id")
);

CREATE TABLE "member_resource_attr_values" (
	"member_id" INTEGER,
	"resource_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("member_id","resource_id","attr_id"),
	 CONSTRAINT "memrav_rsrc_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id"),
	 CONSTRAINT "memrav_accattnam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "memrav_mem_fk" FOREIGN KEY ("member_id") REFERENCES "members" ("id")
);

CREATE TABLE "member_resource_attr_u_values" (
	"member_id" INT,
	"resource_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_member_resource_attr_u_values_to_member_resource_attr_values" FOREIGN KEY ("member_id","resource_id","attr_id") REFERENCES "member_resource_attr_values" ("member_id","resource_id","attr_id")
);

CREATE TABLE "groups_resources" (
	"group_id" INTEGER,
	"resource_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 CONSTRAINT "grres_gr_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "grres_res_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id")
);

CREATE TABLE "group_resource_attr_values" (
	"group_id" INTEGER,
	"resource_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("group_id","resource_id","attr_id"),
	 CONSTRAINT "grpresav_attr_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id"),
	 CONSTRAINT "grpresav_grp_fk" FOREIGN KEY ("group_id") REFERENCES "groups" ("id"),
	 CONSTRAINT "grpresav_res_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id")
);

CREATE TABLE "group_resource_attr_u_values" (
	"group_id" INT,
	"resource_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_group_resource_attr_u_values_to_group_resource_attr_values" FOREIGN KEY ("group_id","resource_id","attr_id") REFERENCES "group_resource_attr_values" ("group_id","resource_id","attr_id")
);

CREATE TABLE "resource_attr_values" (
	"resource_id" INTEGER,
	"attr_id" INTEGER,
	"attr_value" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("resource_id","attr_id"),
	 CONSTRAINT "resatval_res_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id"),
	 CONSTRAINT "resatval_resatnam_fk" FOREIGN KEY ("attr_id") REFERENCES "attr_names" ("id")
);

CREATE TABLE "resource_attr_u_values" (
	"resource_id" INT,
	"attr_id" INT,
	"attr_value" TEXT,
	 CONSTRAINT "fkeycon_resource_attr_u_values_to_resource_attr_values" FOREIGN KEY ("resource_id","attr_id") REFERENCES "resource_attr_values" ("resource_id","attr_id")
);

CREATE TABLE "resource_services" (
	"service_id" INTEGER,
	"resource_id" INTEGER,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"modified_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"created_by_uid" INTEGER,
	"modified_by_uid" INTEGER,
	 PRIMARY KEY ("service_id","resource_id"),
	 CONSTRAINT "resrcsrv_rsrc_fk" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id"),
	 CONSTRAINT "resrcsrv_srv_fk" FOREIGN KEY ("service_id") REFERENCES "services" ("id")
);
