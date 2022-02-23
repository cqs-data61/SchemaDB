DROP DATABASE IF EXISTS "schema877";
CREATE DATABASE "schema877";
USE "schema877";
CREATE TABLE "sys_beacons_beacon#8e99cfb8_data_sets" (
	"order" INTEGER,
	"id" VARCHAR,
	"data_sets" VARCHAR
);

CREATE TABLE "sys_beacons_beacon#8e99cfb8" (
	"id" VARCHAR,
	"name" VARCHAR,
	"api_version" VARCHAR,
	"beacon_organization" VARCHAR,
	"description" TEXT,
	"version" VARCHAR,
	"welcome_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_genomebrowser_geno#294012a4_molgenis_reference_tracks" (
	"order" INTEGER,
	"id" VARCHAR,
	"molgenis_reference_tracks" VARCHAR
);

CREATE TABLE "sys_genomebrowser_genomebrowsersettings#294012a4" (
	"id" VARCHAR,
	"label" VARCHAR,
	"entity" VARCHAR,
	"genome_browser_attrs" VARCHAR,
	"labelattr" VARCHAR,
	"track_type" VARCHAR,
	"exon_key" VARCHAR,
	"scoreattr" VARCHAR,
	"attrs" VARCHAR,
	"molgenis_reference_tracks_mode" VARCHAR,
	"actions" TEXT,
	"feature_info_plugin" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_negotiator_negotiatorentityconfig#9a61747d" (
	"id" VARCHAR,
	"entity" VARCHAR,
	"negotiatorconfig" VARCHAR,
	"collectionid" VARCHAR,
	"biobankid" VARCHAR,
	"enabledexpression" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_rolemembership#2f0e0432" (
	"id" VARCHAR,
	"user" VARCHAR,
	"role" VARCHAR,
	"from" DATETIME,
	"to" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_vogrouprolemembership#b5b67558" (
	"id" VARCHAR,
	"vogroup" VARCHAR,
	"role" VARCHAR,
	"from" DATETIME,
	"to" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_membershipinvitation#27f7958b" (
	"id" VARCHAR,
	"token" VARCHAR,
	"email" VARCHAR,
	"from" DATETIME,
	"to" DATETIME,
	"role" VARCHAR,
	"invitedby" VARCHAR,
	"issued" DATETIME,
	"lastupdate" DATETIME,
	"invitationtext" TEXT,
	"declinereason" TEXT,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_job_scheduledjob#d2aed7e4" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"cronexpression" VARCHAR,
	"active" BOOLEAN,
	"user" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"type" VARCHAR,
	"parameters" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_ts_dataexplorerentitysettings#a7f151bf" (
	"id" VARCHAR,
	"table" VARCHAR,
	"card_template" TEXT,
	"detail_template" TEXT,
	"shop" BOOLEAN,
	"template_attrs" VARCHAR,
	"collapse_limit" VARCHAR,
	"default_filters" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_beacons_beacondataset#17b7de29" (
	"id" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	"data_set_entity_type" VARCHAR,
	"genome_browser_attributes" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_role#b6639604_includes" (
	"order" INTEGER,
	"id" VARCHAR,
	"includes" VARCHAR
);

CREATE TABLE "sys_sec_role#b6639604" (
	"id" VARCHAR,
	"name" VARCHAR,
	"label" VARCHAR,
	"labelen" VARCHAR,
	"labelnl" VARCHAR,
	"labelde" VARCHAR,
	"labeles" VARCHAR,
	"labelit" VARCHAR,
	"labelpt" VARCHAR,
	"labelfr" VARCHAR,
	"labelxx" VARCHAR,
	"description" VARCHAR,
	"descriptionen" TEXT,
	"descriptionnl" TEXT,
	"descriptionde" TEXT,
	"descriptiones" TEXT,
	"descriptionit" TEXT,
	"descriptionpt" TEXT,
	"descriptionfr" TEXT,
	"descriptionxx" TEXT,
	"group" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_job_scheduledjobtype#d68c491a" (
	"name" VARCHAR,
	"label" VARCHAR,
	"description" TEXT,
	"jobexecutiontype" VARCHAR,
	"schema" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "sys_map_mappingproject#c2f22991_mappingtargets" (
	"order" INTEGER,
	"identifier" VARCHAR,
	"mappingtargets" VARCHAR
);

CREATE TABLE "sys_map_mappingproject#c2f22991" (
	"identifier" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_sec_group#d325f6e2" (
	"id" VARCHAR,
	"name" VARCHAR,
	"label" VARCHAR,
	"labelen" VARCHAR,
	"labelnl" VARCHAR,
	"labelde" VARCHAR,
	"labeles" VARCHAR,
	"labelit" VARCHAR,
	"labelpt" VARCHAR,
	"labelfr" VARCHAR,
	"labelxx" VARCHAR,
	"description" TEXT,
	"descriptionen" TEXT,
	"descriptionnl" TEXT,
	"descriptionde" TEXT,
	"descriptiones" TEXT,
	"descriptionit" TEXT,
	"descriptionpt" TEXT,
	"descriptionfr" TEXT,
	"descriptionxx" TEXT,
	"public" BOOLEAN,
	"rootpackage" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_map_mappingtarget#8e135dd7_entitymappings" (
	"order" INTEGER,
	"identifier" VARCHAR,
	"entitymappings" VARCHAR
);

CREATE TABLE "sys_map_mappingtarget#8e135dd7" (
	"identifier" VARCHAR,
	"target" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_dec_decoratorconfi#e9347da9_parameters" (
	"order" INTEGER,
	"id" VARCHAR,
	"parameters" VARCHAR
);

CREATE TABLE "sys_dec_decoratorconfiguration#e9347da9" (
	"id" VARCHAR,
	"entitytypeid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_mail_javamailproperty#ddcd42a8" (
	"mailsettings" VARCHAR,
	"key" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("key")
);

CREATE TABLE "sys_set_mailsettings#6daa44ed" (
	"host" VARCHAR,
	"port" INTEGER,
	"protocol" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"defaultencoding" VARCHAR,
	"starttlsenabled" VARCHAR,
	"waitquit" VARCHAR,
	"auth" VARCHAR,
	"fromaddress" VARCHAR,
	"testconnection" BOOLEAN,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_job_resourcecopyjobexecution#79e3e597" (
	"resources" TEXT,
	"targetpackage" VARCHAR,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_mappingjobexecution#9d59355f" (
	"mappingprojectid" VARCHAR,
	"targetentitytypeid" VARCHAR,
	"addsourceattribute" BOOLEAN,
	"packageid" VARCHAR,
	"label" VARCHAR,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_map_entitymapping#4c287e1a_attributemappings" (
	"order" INTEGER,
	"identifier" VARCHAR,
	"attributemappings" VARCHAR
);

CREATE TABLE "sys_map_entitymapping#4c287e1a" (
	"identifier" VARCHAR,
	"sourceentitytype" VARCHAR,
	"targetentitytype" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_set_aud#77b13408" (
	"audit_system" BOOLEAN,
	"audit_data" VARCHAR,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_job_metadatadeletejobexecution#4ed53e2d" (
	"ids" TEXT,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_scr_script#354cd12b_parameters" (
	"order" INTEGER,
	"name" VARCHAR,
	"parameters" VARCHAR
);

CREATE TABLE "sys_scr_script#354cd12b" (
	"name" VARCHAR,
	"type" VARCHAR,
	"content" TEXT,
	"generatetoken" BOOLEAN,
	"resultfileextension" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "sys_job_amazonbucketjobexecution#f9fb2a28" (
	"bucket" VARCHAR,
	"key" VARCHAR,
	"expression" BOOLEAN,
	"accesskey" VARCHAR,
	"secretkey" VARCHAR,
	"region" VARCHAR,
	"targetentityid" VARCHAR,
	"file" VARCHAR,
	"extension" VARCHAR,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_resourcedeletejobexecution#5d6022b0" (
	"resources" TEXT,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_oneclickimportjobexecution#c6636b72" (
	"file" VARCHAR,
	"entitytypes" TEXT,
	"package" VARCHAR,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_fileingestjobexecution#091fdb52" (
	"file" VARCHAR,
	"url" VARCHAR,
	"loader" VARCHAR,
	"targetentityid" VARCHAR,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_metadataupsertjobexecution#0b27aef6" (
	"action" VARCHAR,
	"entitytypedata" TEXT,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_ont_ontologyterm#f0034aa0_nodepath" (
	"order" INTEGER,
	"id" VARCHAR,
	"nodepath" VARCHAR
);

CREATE TABLE "sys_ont_ontologyterm#f0034aa0_ontologytermdynamicannotation" (
	"order" INTEGER,
	"id" VARCHAR,
	"ontologytermdynamicannotation" VARCHAR
);

CREATE TABLE "sys_ont_ontologyterm#f0034aa0_ontologytermsynonym" (
	"order" INTEGER,
	"id" VARCHAR,
	"ontologytermsynonym" VARCHAR
);

CREATE TABLE "sys_ont_ontologyterm#f0034aa0" (
	"id" VARCHAR,
	"ontologytermiri" VARCHAR,
	"ontologytermname" TEXT,
	"ontology" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_set_app#4f91996f" (
	"title" VARCHAR,
	"logo_href_navbar" VARCHAR,
	"logo_href_top" VARCHAR,
	"logotopmaxheight" INTEGER,
	"footer" TEXT,
	"molgenis_menu" TEXT,
	"language_code" VARCHAR,
	"legacy_theme_url" VARCHAR,
	"theme_url" VARCHAR,
	"css_href" VARCHAR,
	"aggregate_threshold" INTEGER,
	"custom_javascript" TEXT,
	"ga_privacy_friendly" BOOLEAN,
	"ga_tracking_id" VARCHAR,
	"ga_acc_privacy_friendly" BOOLEAN,
	"ga_tracking_id_mgs" VARCHAR,
	"ga_acc_privacy_friendly_mgs" BOOLEAN,
	"tracking_code_footer" TEXT,
	"recaptcha_private_key" VARCHAR,
	"recaptcha_public_key" VARCHAR,
	"recaptcha_is_enabled" BOOLEAN,
	"recaptcha_verify_uri" VARCHAR,
	"recaptcha_bot_threshold" DOUBLE PRECISION,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_job_indexjobexecution#1d1bc397" (
	"indexactionjobid" VARCHAR,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_set_auth#98c4c015_oidcclients" (
	"order" INTEGER,
	"id" VARCHAR,
	"oidcclients" VARCHAR
);

CREATE TABLE "sys_set_auth#98c4c015" (
	"signup" BOOLEAN,
	"signup_moderation" BOOLEAN,
	"sign_in_2fa" VARCHAR,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_idx_indexaction#43bbc99b" (
	"id" VARCHAR,
	"creationdatetime" DATETIME,
	"indexactiongroup" VARCHAR,
	"actionorder" INTEGER,
	"entitytypeid" VARCHAR,
	"entityid" TEXT,
	"indexstatus" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_token#2dc001d0" (
	"id" VARCHAR,
	"user" VARCHAR,
	"token" VARCHAR,
	"expirationdate" DATETIME,
	"creationdate" DATETIME,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_ont_ontologytermhi#9ce87f6a_nodepath" (
	"order" INTEGER,
	"id" VARCHAR,
	"nodepath" VARCHAR
);

CREATE TABLE "sys_ont_ontologytermhi#9ce87f6a_ontologytermdynamicannotation" (
	"order" INTEGER,
	"id" VARCHAR,
	"ontologytermdynamicannotation" VARCHAR
);

CREATE TABLE "sys_ont_ontologytermhi#9ce87f6a_ontologytermsynonym" (
	"order" INTEGER,
	"id" VARCHAR,
	"ontologytermsynonym" VARCHAR
);

CREATE TABLE "sys_ont_ontologytermhit#9ce87f6a" (
	"id" VARCHAR,
	"score" DOUBLE PRECISION,
	"combined_score" DOUBLE PRECISION,
	"ontologytermiri" VARCHAR,
	"ontologytermname" TEXT,
	"ontology" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_passwordresettoken#a04705dd" (
	"id" VARCHAR,
	"token" VARCHAR,
	"user" VARCHAR,
	"expirationdate" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_set_dataexplorer#76c80fb0" (
	"searchbox" BOOLEAN,
	"item_select_panel" BOOLEAN,
	"launch_wizard" BOOLEAN,
	"header_abbreviate" INTEGER,
	"show_navigator_link" BOOLEAN,
	"mod_aggregates" BOOLEAN,
	"agg_distinct" BOOLEAN,
	"agg_distinct_overrides" TEXT,
	"mod_data" BOOLEAN,
	"gb_init_browser_links" TEXT,
	"gb_init_coord_system" TEXT,
	"gb_init_location" TEXT,
	"gb_init_sources" TEXT,
	"gb_init_highlight_region" BOOLEAN,
	"data_genome_browser" BOOLEAN,
	"use_vue_data_row_edit" BOOLEAN,
	"mod_reports" BOOLEAN,
	"mod_standalone_reports" BOOLEAN,
	"reports_entities" TEXT,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dec_decoratorparameters#0c01537a" (
	"id" VARCHAR,
	"decorator" VARCHAR,
	"parameters" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_set_opencpusettings#0ec0e4e8" (
	"scheme" VARCHAR,
	"host" VARCHAR,
	"port" INTEGER,
	"rootpath" VARCHAR,
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_job_resourcedownloadjobexecution#3d0dbc70" (
	"resources" TEXT,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_scriptjobexecution#26f219e1" (
	"name" VARCHAR,
	"parameters" TEXT,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_job_sortajobexecution#3df661b2" (
	"name" VARCHAR,
	"resultentity" VARCHAR,
	"sourceentity" VARCHAR,
	"ontologyiri" VARCHAR,
	"deleteurl" VARCHAR,
	"threshold" DOUBLE PRECISION,
	"identifier" VARCHAR,
	"user" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"submissiondate" DATETIME,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"progressint" INTEGER,
	"progressmax" INTEGER,
	"progressmessage" VARCHAR,
	"log" TEXT,
	"resulturl" VARCHAR,
	"failureemail" VARCHAR,
	"successemail" VARCHAR,
	"scheduledjobid" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_sec_oidc_oidcusermapping#72060861" (
	"id" VARCHAR,
	"label" VARCHAR,
	"oidcclient" VARCHAR,
	"oidcusername" VARCHAR,
	"user" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_map_attributemapping#fdffac26" (
	"identifier" VARCHAR,
	"targetattribute" VARCHAR,
	"sourceattributes" TEXT,
	"algorithm" TEXT,
	"algorithmstate" VARCHAR,
	 PRIMARY KEY ("identifier")
);

CREATE TABLE "sys_app#1723bf4f" (
	"id" VARCHAR,
	"label" VARCHAR,
	"description" TEXT,
	"isactive" BOOLEAN,
	"appversion" VARCHAR,
	"apidependency" VARCHAR,
	"templatecontent" TEXT,
	"resourcefolder" VARCHAR,
	"name" VARCHAR,
	"appconfig" TEXT,
	"includemenuandfooter" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_negotiator_negotiatorconfig#aced883a" (
	"id" VARCHAR,
	"negotiator_url" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_language#ab857455" (
	"code" VARCHAR,
	"name" VARCHAR,
	"active" BOOLEAN,
	 PRIMARY KEY ("code")
);

CREATE TABLE "sys_ont_ontologytermdynamicannotation#6454b1f8" (
	"id" VARCHAR,
	"name" VARCHAR,
	"value" VARCHAR,
	"label" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_usersecret#f51533c3" (
	"id" VARCHAR,
	"userid" VARCHAR,
	"secret" VARCHAR,
	"last_failed_authentication" DATETIME,
	"failed_login_attempts" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_freemarkertemplate#1b0d9d12" (
	"id" VARCHAR,
	"name" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_user#953f6cde" (
	"id" VARCHAR,
	"username" VARCHAR,
	"password_" VARCHAR,
	"activationcode" VARCHAR,
	"active" BOOLEAN,
	"superuser" BOOLEAN,
	"firstname" VARCHAR,
	"middlenames" VARCHAR,
	"lastname" VARCHAR,
	"title" VARCHAR,
	"affiliation" VARCHAR,
	"department" VARCHAR,
	"role" VARCHAR,
	"address" TEXT,
	"phone" VARCHAR,
	"email" VARCHAR,
	"fax" VARCHAR,
	"tollfreephone" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"changepassword" BOOLEAN,
	"use2fa" BOOLEAN,
	"languagecode" VARCHAR,
	"googleaccountid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_oidc_oidcclient#3e7b1b4d" (
	"registrationid" VARCHAR,
	"clientid" VARCHAR,
	"clientsecret" VARCHAR,
	"clientname" VARCHAR,
	"issueruri" VARCHAR,
	"clientauthenticationmethod" VARCHAR,
	"authorizationgranttype" VARCHAR,
	"scopes" VARCHAR,
	"authorizationuri" VARCHAR,
	"tokenuri" VARCHAR,
	"jwkseturi" VARCHAR,
	"userinfouri" VARCHAR,
	"claimsrolepath" VARCHAR,
	"claimsvogrouppath" VARCHAR,
	"usernameattributename" VARCHAR,
	"emailattributename" VARCHAR,
	 PRIMARY KEY ("registrationid")
);

CREATE TABLE "sys_sec_recoverycode#a3192a80" (
	"id" VARCHAR,
	"userid" VARCHAR,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_sec_vogroup#2575d4a0" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_beacons_beaconorganization#02fc7b88" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"address" VARCHAR,
	"welcome_url" VARCHAR,
	"contact_url" VARCHAR,
	"logo_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_importrun#5ed65642" (
	"id" VARCHAR,
	"startdate" DATETIME,
	"enddate" DATETIME,
	"username" VARCHAR,
	"status" VARCHAR,
	"message" TEXT,
	"progress" INTEGER,
	"importedentities" TEXT,
	"notify" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_filemeta#76d84794" (
	"id" VARCHAR,
	"filename" VARCHAR,
	"contenttype" VARCHAR,
	"size" BIGINT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dec_dynamicdecorator#8c3531bb" (
	"id" VARCHAR,
	"label" VARCHAR,
	"description" VARCHAR,
	"schema" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_ont_ontologytermsynonym#ce764ed4" (
	"id" VARCHAR,
	"ontologytermsynonym" TEXT,
	"score" DOUBLE PRECISION,
	"combined_score" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_genomebrowser_genomebrowserattributes#bf815a63" (
	"id" VARCHAR,
	"default" BOOLEAN,
	"order" INTEGER,
	"pos" VARCHAR,
	"chr" VARCHAR,
	"ref" VARCHAR,
	"alt" VARCHAR,
	"stop" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_ont_ontologytermnodepath#adc5397c" (
	"id" VARCHAR,
	"nodepath" TEXT,
	"root" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_plugin#4fafb60a" (
	"id" VARCHAR,
	"label" VARCHAR,
	"path" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_ont_termfrequency#aef76974" (
	"id" VARCHAR,
	"term" VARCHAR,
	"frequency" DOUBLE PRECISION,
	"occurrence" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_scr_scriptparameter#88bc2dd2" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "sys_ont_ontology#49a81949" (
	"id" VARCHAR,
	"ontologyiri" VARCHAR,
	"ontologyname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_l10nstring#95a21e09" (
	"id" VARCHAR,
	"msgid" VARCHAR,
	"namespace" VARCHAR,
	"description" TEXT,
	"en" TEXT,
	"nl" TEXT,
	"de" TEXT,
	"es" TEXT,
	"it" TEXT,
	"pt" TEXT,
	"fr" TEXT,
	"xx" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_scr_scripttype#3e8906a6" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "sys_staticcontent#f1dd2665" (
	"key_" VARCHAR,
	"content" TEXT,
	 PRIMARY KEY ("key_")
);

CREATE TABLE "sys_idx_indexactiongroup#dd7eea75" (
	"id" VARCHAR,
	"count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_md_attribute#c8d9a252_tags" (
	"order" INTEGER,
	"id" VARCHAR,
	"tags" VARCHAR
);

CREATE TABLE "sys_md_attribute#c8d9a252" (
	"id" VARCHAR,
	"name" VARCHAR,
	"entity" VARCHAR,
	"sequencenr" INTEGER,
	"type" VARCHAR,
	"isidattribute" BOOLEAN,
	"islabelattribute" BOOLEAN,
	"lookupattributeindex" INTEGER,
	"parent" VARCHAR,
	"refentitytype" VARCHAR,
	"iscascadedelete" BOOLEAN,
	"mappedby" VARCHAR,
	"orderby" VARCHAR,
	"expression" VARCHAR,
	"isnullable" BOOLEAN,
	"isauto" BOOLEAN,
	"isvisible" BOOLEAN,
	"label" VARCHAR,
	"description" TEXT,
	"isaggregatable" BOOLEAN,
	"enumoptions" TEXT,
	"rangemin" BIGINT,
	"rangemax" BIGINT,
	"isreadonly" BOOLEAN,
	"isunique" BOOLEAN,
	"nullableexpression" TEXT,
	"visibleexpression" TEXT,
	"validationexpression" TEXT,
	"defaultvalue" TEXT,
	"labelen" VARCHAR,
	"descriptionen" TEXT,
	"labelnl" VARCHAR,
	"descriptionnl" TEXT,
	"labelde" VARCHAR,
	"descriptionde" TEXT,
	"labeles" VARCHAR,
	"descriptiones" TEXT,
	"labelit" VARCHAR,
	"descriptionit" TEXT,
	"labelpt" VARCHAR,
	"descriptionpt" TEXT,
	"labelfr" VARCHAR,
	"descriptionfr" TEXT,
	"labelxx" VARCHAR,
	"descriptionxx" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_md_entitytype#6a3870a0_tags" (
	"order" INTEGER,
	"id" VARCHAR,
	"tags" VARCHAR
);

CREATE TABLE "sys_md_entitytype#6a3870a0" (
	"id" VARCHAR,
	"label" VARCHAR,
	"description" TEXT,
	"package" VARCHAR,
	"isabstract" BOOLEAN,
	"extends" VARCHAR,
	"backend" VARCHAR,
	"indexingdepth" INTEGER,
	"labelen" VARCHAR,
	"descriptionen" TEXT,
	"labelnl" VARCHAR,
	"descriptionnl" TEXT,
	"labelde" VARCHAR,
	"descriptionde" TEXT,
	"labeles" VARCHAR,
	"descriptiones" TEXT,
	"labelit" VARCHAR,
	"descriptionit" TEXT,
	"labelpt" VARCHAR,
	"descriptionpt" TEXT,
	"labelfr" VARCHAR,
	"descriptionfr" TEXT,
	"labelxx" VARCHAR,
	"descriptionxx" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_md_package#a6dc6fe7_tags" (
	"order" INTEGER,
	"id" VARCHAR,
	"tags" VARCHAR
);

CREATE TABLE "sys_md_package#a6dc6fe7" (
	"id" VARCHAR,
	"label" VARCHAR,
	"description" TEXT,
	"parent" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_md_tag#c2d685da" (
	"id" VARCHAR,
	"objectiri" TEXT,
	"label" VARCHAR,
	"relationiri" VARCHAR,
	"relationlabel" VARCHAR,
	"codesystem" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_entry" (
	"id" BIGSERIAL,
	"acl_object_identity" BIGINT,
	"ace_order" INTEGER,
	"sid" BIGINT,
	"mask" INTEGER,
	"granting" BOOLEAN,
	"audit_success" BOOLEAN,
	"audit_failure" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_object_identity" (
	"id" BIGSERIAL,
	"object_id_class" BIGINT,
	"object_id_identity" VARCHAR,
	"parent_object" BIGINT,
	"owner_sid" BIGINT,
	"entries_inheriting" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_class" (
	"id" BIGSERIAL,
	"class" VARCHAR,
	"class_id_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acl_sid" (
	"id" BIGSERIAL,
	"principal" BOOLEAN,
	"sid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "version" (
	"id" INTEGER,
	 PRIMARY KEY ("id")
);
