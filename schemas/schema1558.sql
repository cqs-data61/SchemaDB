DROP DATABASE IF EXISTS "schema1558";
CREATE DATABASE "schema1558";
USE "schema1558";
CREATE TABLE "dbversion" (
	"mandatory" INTEGER,
	"optional" INTEGER
);

CREATE TABLE "opinventory" (
	"operationid" BIGINT,
	"inventory_mode" INTEGER,
	 PRIMARY KEY ("operationid")
);

CREATE TABLE "application_discovery" (
	"application_discoveryid" BIGINT,
	"applicationid" BIGINT,
	"application_prototypeid" BIGINT,
	"name" VARCHAR,
	"lastcheck" INTEGER,
	"ts_delete" INTEGER,
	 PRIMARY KEY ("application_discoveryid")
);

CREATE TABLE "item_application_prototype" (
	"item_application_prototypeid" BIGINT,
	"application_prototypeid" BIGINT,
	"itemid" BIGINT,
	 PRIMARY KEY ("item_application_prototypeid")
);

CREATE TABLE "application_prototype" (
	"application_prototypeid" BIGINT,
	"itemid" BIGINT,
	"templateid" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("application_prototypeid")
);

CREATE TABLE "item_condition" (
	"item_conditionid" BIGINT,
	"itemid" BIGINT,
	"operator" INTEGER,
	"macro" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("item_conditionid")
);

CREATE TABLE "application_template" (
	"application_templateid" BIGINT,
	"applicationid" BIGINT,
	"templateid" BIGINT,
	 PRIMARY KEY ("application_templateid")
);

CREATE TABLE "trigger_discovery" (
	"triggerid" BIGINT,
	"parent_triggerid" BIGINT,
	 PRIMARY KEY ("triggerid")
);

CREATE TABLE "sessions" (
	"sessionid" VARCHAR,
	"userid" BIGINT,
	"lastaccess" INTEGER,
	"status" INTEGER,
	 PRIMARY KEY ("sessionid")
);

CREATE TABLE "profiles" (
	"profileid" BIGINT,
	"userid" BIGINT,
	"idx" VARCHAR,
	"idx2" BIGINT,
	"value_id" BIGINT,
	"value_int" INTEGER,
	"value_str" VARCHAR,
	"source" VARCHAR,
	"type" INTEGER,
	 PRIMARY KEY ("profileid")
);

CREATE TABLE "interface_discovery" (
	"interfaceid" BIGINT,
	"parent_interfaceid" BIGINT,
	 PRIMARY KEY ("interfaceid")
);

CREATE TABLE "host_discovery" (
	"hostid" BIGINT,
	"parent_hostid" BIGINT,
	"parent_itemid" BIGINT,
	"host" VARCHAR,
	"lastcheck" INTEGER,
	"ts_delete" INTEGER,
	 PRIMARY KEY ("hostid")
);

CREATE TABLE "item_discovery" (
	"itemdiscoveryid" BIGINT,
	"itemid" BIGINT,
	"parent_itemid" BIGINT,
	"key_" VARCHAR,
	"lastcheck" INTEGER,
	"ts_delete" INTEGER,
	 PRIMARY KEY ("itemdiscoveryid")
);

CREATE TABLE "images" (
	"imageid" BIGINT,
	"imagetype" INTEGER,
	"name" VARCHAR,
	"image" LONGBLOB,
	 PRIMARY KEY ("imageid")
);

CREATE TABLE "housekeeper" (
	"housekeeperid" BIGINT,
	"tablename" VARCHAR,
	"field" VARCHAR,
	"value" BIGINT,
	 PRIMARY KEY ("housekeeperid")
);

CREATE TABLE "host_inventory" (
	"hostid" BIGINT,
	"inventory_mode" INTEGER,
	"type" VARCHAR,
	"type_full" VARCHAR,
	"name" VARCHAR,
	"alias" VARCHAR,
	"os" VARCHAR,
	"os_full" VARCHAR,
	"os_short" VARCHAR,
	"serialno_a" VARCHAR,
	"serialno_b" VARCHAR,
	"tag" VARCHAR,
	"asset_tag" VARCHAR,
	"macaddress_a" VARCHAR,
	"macaddress_b" VARCHAR,
	"hardware" VARCHAR,
	"hardware_full" TEXT,
	"software" VARCHAR,
	"software_full" TEXT,
	"software_app_a" VARCHAR,
	"software_app_b" VARCHAR,
	"software_app_c" VARCHAR,
	"software_app_d" VARCHAR,
	"software_app_e" VARCHAR,
	"contact" TEXT,
	"location" TEXT,
	"location_lat" VARCHAR,
	"location_lon" VARCHAR,
	"notes" TEXT,
	"chassis" VARCHAR,
	"model" VARCHAR,
	"hw_arch" VARCHAR,
	"vendor" VARCHAR,
	"contract_number" VARCHAR,
	"installer_name" VARCHAR,
	"deployment_status" VARCHAR,
	"url_a" VARCHAR,
	"url_b" VARCHAR,
	"url_c" VARCHAR,
	"host_networks" TEXT,
	"host_netmask" VARCHAR,
	"host_router" VARCHAR,
	"oob_ip" VARCHAR,
	"oob_netmask" VARCHAR,
	"oob_router" VARCHAR,
	"date_hw_purchase" VARCHAR,
	"date_hw_install" VARCHAR,
	"date_hw_expiry" VARCHAR,
	"date_hw_decomm" VARCHAR,
	"site_address_a" VARCHAR,
	"site_address_b" VARCHAR,
	"site_address_c" VARCHAR,
	"site_city" VARCHAR,
	"site_state" VARCHAR,
	"site_country" VARCHAR,
	"site_zip" VARCHAR,
	"site_rack" VARCHAR,
	"site_notes" TEXT,
	"poc_1_name" VARCHAR,
	"poc_1_email" VARCHAR,
	"poc_1_phone_a" VARCHAR,
	"poc_1_phone_b" VARCHAR,
	"poc_1_cell" VARCHAR,
	"poc_1_screen" VARCHAR,
	"poc_1_notes" TEXT,
	"poc_2_name" VARCHAR,
	"poc_2_email" VARCHAR,
	"poc_2_phone_a" VARCHAR,
	"poc_2_phone_b" VARCHAR,
	"poc_2_cell" VARCHAR,
	"poc_2_screen" VARCHAR,
	"poc_2_notes" TEXT,
	 PRIMARY KEY ("hostid")
);

CREATE TABLE "graph_discovery" (
	"graphid" BIGINT,
	"parent_graphid" BIGINT,
	 PRIMARY KEY ("graphid")
);

CREATE TABLE "globalvars" (
	"globalvarid" BIGINT,
	"snmp_lastsize" INTEGER,
	 PRIMARY KEY ("globalvarid")
);

CREATE TABLE "escalations" (
	"escalationid" BIGINT,
	"actionid" BIGINT,
	"triggerid" BIGINT,
	"eventid" BIGINT,
	"r_eventid" BIGINT,
	"nextcheck" INTEGER,
	"esc_step" INTEGER,
	"status" INTEGER,
	"itemid" BIGINT,
	 PRIMARY KEY ("escalationid")
);

CREATE TABLE "dservices" (
	"dserviceid" BIGINT,
	"dhostid" BIGINT,
	"type" INTEGER,
	"key_" VARCHAR,
	"value" VARCHAR,
	"port" INTEGER,
	"status" INTEGER,
	"lastup" INTEGER,
	"lastdown" INTEGER,
	"dcheckid" BIGINT,
	"ip" VARCHAR,
	"dns" VARCHAR,
	 PRIMARY KEY ("dserviceid")
);

CREATE TABLE "dhosts" (
	"dhostid" BIGINT,
	"druleid" BIGINT,
	"status" INTEGER,
	"lastup" INTEGER,
	"lastdown" INTEGER,
	 PRIMARY KEY ("dhostid")
);

CREATE TABLE "proxy_autoreg_host" (
	"id" BIGINT,
	"clock" INTEGER,
	"host" VARCHAR,
	"listen_ip" VARCHAR,
	"listen_port" INTEGER,
	"listen_dns" VARCHAR,
	"host_metadata" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "autoreg_host" (
	"autoreg_hostid" BIGINT,
	"proxy_hostid" BIGINT,
	"host" VARCHAR,
	"listen_ip" VARCHAR,
	"listen_port" INTEGER,
	"listen_dns" VARCHAR,
	"host_metadata" VARCHAR,
	 PRIMARY KEY ("autoreg_hostid")
);

CREATE TABLE "service_alarms" (
	"servicealarmid" BIGINT,
	"serviceid" BIGINT,
	"clock" INTEGER,
	"value" INTEGER,
	 PRIMARY KEY ("servicealarmid")
);

CREATE TABLE "auditlog_details" (
	"auditdetailid" BIGINT,
	"auditid" BIGINT,
	"table_name" VARCHAR,
	"field_name" VARCHAR,
	"oldvalue" TEXT,
	"newvalue" TEXT,
	 PRIMARY KEY ("auditdetailid")
);

CREATE TABLE "auditlog" (
	"auditid" BIGINT,
	"userid" BIGINT,
	"clock" INTEGER,
	"action" INTEGER,
	"resourcetype" INTEGER,
	"details" VARCHAR,
	"ip" VARCHAR,
	"resourceid" BIGINT,
	"resourcename" VARCHAR,
	 PRIMARY KEY ("auditid")
);

CREATE TABLE "acknowledges" (
	"acknowledgeid" BIGINT,
	"userid" BIGINT,
	"eventid" BIGINT,
	"clock" INTEGER,
	"message" VARCHAR,
	 PRIMARY KEY ("acknowledgeid")
);

CREATE TABLE "trends_uint" (
	"itemid" BIGINT,
	"clock" INTEGER,
	"num" INTEGER,
	"value_min" BIGINT,
	"value_avg" BIGINT,
	"value_max" BIGINT,
	 PRIMARY KEY ("itemid","clock")
);

CREATE TABLE "trends" (
	"itemid" BIGINT,
	"clock" INTEGER,
	"num" INTEGER,
	"value_min" DOUBLE,
	"value_avg" DOUBLE,
	"value_max" DOUBLE,
	 PRIMARY KEY ("itemid","clock")
);

CREATE TABLE "events" (
	"eventid" BIGINT,
	"source" INTEGER,
	"object" INTEGER,
	"objectid" BIGINT,
	"clock" INTEGER,
	"value" INTEGER,
	"acknowledged" INTEGER,
	"ns" INTEGER,
	 PRIMARY KEY ("eventid")
);

CREATE TABLE "proxy_dhistory" (
	"id" BIGINT,
	"clock" INTEGER,
	"druleid" BIGINT,
	"type" INTEGER,
	"ip" VARCHAR,
	"port" INTEGER,
	"key_" VARCHAR,
	"value" VARCHAR,
	"status" INTEGER,
	"dcheckid" BIGINT,
	"dns" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "proxy_history" (
	"id" BIGINT,
	"itemid" BIGINT,
	"clock" INTEGER,
	"timestamp" INTEGER,
	"source" VARCHAR,
	"severity" INTEGER,
	"value" LONGTEXT,
	"logeventid" INTEGER,
	"ns" INTEGER,
	"state" INTEGER,
	"lastlogsize" BIGINT,
	"mtime" INTEGER,
	"flags" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "history_text" (
	"id" BIGINT,
	"itemid" BIGINT,
	"clock" INTEGER,
	"value" TEXT,
	"ns" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "history_log" (
	"id" BIGINT,
	"itemid" BIGINT,
	"clock" INTEGER,
	"timestamp" INTEGER,
	"source" VARCHAR,
	"severity" INTEGER,
	"value" TEXT,
	"logeventid" INTEGER,
	"ns" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "history_str" (
	"itemid" BIGINT,
	"clock" INTEGER,
	"value" VARCHAR,
	"ns" INTEGER
);

CREATE TABLE "history_uint" (
	"itemid" BIGINT,
	"clock" INTEGER,
	"value" BIGINT,
	"ns" INTEGER
);

CREATE TABLE "history" (
	"itemid" BIGINT,
	"clock" INTEGER,
	"value" DOUBLE,
	"ns" INTEGER
);

CREATE TABLE "alerts" (
	"alertid" BIGINT,
	"actionid" BIGINT,
	"eventid" BIGINT,
	"userid" BIGINT,
	"clock" INTEGER,
	"mediatypeid" BIGINT,
	"sendto" VARCHAR,
	"subject" VARCHAR,
	"message" TEXT,
	"status" INTEGER,
	"retries" INTEGER,
	"error" VARCHAR,
	"esc_step" INTEGER,
	"alerttype" INTEGER,
	 PRIMARY KEY ("alertid")
);

CREATE TABLE "ids" (
	"table_name" VARCHAR,
	"field_name" VARCHAR,
	"nextid" BIGINT,
	 PRIMARY KEY ("table_name","field_name")
);

CREATE TABLE "expressions" (
	"expressionid" BIGINT,
	"regexpid" BIGINT,
	"expression" VARCHAR,
	"expression_type" INTEGER,
	"exp_delimiter" VARCHAR,
	"case_sensitive" INTEGER,
	 PRIMARY KEY ("expressionid")
);

CREATE TABLE "regexps" (
	"regexpid" BIGINT,
	"name" VARCHAR,
	"test_string" TEXT,
	 PRIMARY KEY ("regexpid")
);

CREATE TABLE "maintenances_windows" (
	"maintenance_timeperiodid" BIGINT,
	"maintenanceid" BIGINT,
	"timeperiodid" BIGINT,
	 PRIMARY KEY ("maintenance_timeperiodid")
);

CREATE TABLE "timeperiods" (
	"timeperiodid" BIGINT,
	"timeperiod_type" INTEGER,
	"every" INTEGER,
	"month" INTEGER,
	"dayofweek" INTEGER,
	"day" INTEGER,
	"start_time" INTEGER,
	"period" INTEGER,
	"start_date" INTEGER,
	 PRIMARY KEY ("timeperiodid")
);

CREATE TABLE "maintenances_groups" (
	"maintenance_groupid" BIGINT,
	"maintenanceid" BIGINT,
	"groupid" BIGINT,
	 PRIMARY KEY ("maintenance_groupid")
);

CREATE TABLE "maintenances_hosts" (
	"maintenance_hostid" BIGINT,
	"maintenanceid" BIGINT,
	"hostid" BIGINT,
	 PRIMARY KEY ("maintenance_hostid")
);

CREATE TABLE "sysmap_usrgrp" (
	"sysmapusrgrpid" BIGINT,
	"sysmapid" BIGINT,
	"usrgrpid" BIGINT,
	"permission" INTEGER,
	 PRIMARY KEY ("sysmapusrgrpid")
);

CREATE TABLE "sysmap_user" (
	"sysmapuserid" BIGINT,
	"sysmapid" BIGINT,
	"userid" BIGINT,
	"permission" INTEGER,
	 PRIMARY KEY ("sysmapuserid")
);

CREATE TABLE "sysmap_url" (
	"sysmapurlid" BIGINT,
	"sysmapid" BIGINT,
	"name" VARCHAR,
	"url" VARCHAR,
	"elementtype" INTEGER,
	 PRIMARY KEY ("sysmapurlid")
);

CREATE TABLE "sysmap_element_url" (
	"sysmapelementurlid" BIGINT,
	"selementid" BIGINT,
	"name" VARCHAR,
	"url" VARCHAR,
	 PRIMARY KEY ("sysmapelementurlid")
);

CREATE TABLE "sysmaps_link_triggers" (
	"linktriggerid" BIGINT,
	"linkid" BIGINT,
	"triggerid" BIGINT,
	"drawtype" INTEGER,
	"color" VARCHAR,
	 PRIMARY KEY ("linktriggerid")
);

CREATE TABLE "sysmaps_links" (
	"linkid" BIGINT,
	"sysmapid" BIGINT,
	"selementid1" BIGINT,
	"selementid2" BIGINT,
	"drawtype" INTEGER,
	"color" VARCHAR,
	"label" VARCHAR,
	 PRIMARY KEY ("linkid")
);

CREATE TABLE "sysmaps_elements" (
	"selementid" BIGINT,
	"sysmapid" BIGINT,
	"elementid" BIGINT,
	"elementtype" INTEGER,
	"iconid_off" BIGINT,
	"iconid_on" BIGINT,
	"label" VARCHAR,
	"label_location" INTEGER,
	"x" INTEGER,
	"y" INTEGER,
	"iconid_disabled" BIGINT,
	"iconid_maintenance" BIGINT,
	"elementsubtype" INTEGER,
	"areatype" INTEGER,
	"width" INTEGER,
	"height" INTEGER,
	"viewtype" INTEGER,
	"use_iconmap" INTEGER,
	"application" VARCHAR,
	 PRIMARY KEY ("selementid")
);

CREATE TABLE "sysmaps" (
	"sysmapid" BIGINT,
	"name" VARCHAR,
	"width" INTEGER,
	"height" INTEGER,
	"backgroundid" BIGINT,
	"label_type" INTEGER,
	"label_location" INTEGER,
	"highlight" INTEGER,
	"expandproblem" INTEGER,
	"markelements" INTEGER,
	"show_unack" INTEGER,
	"grid_size" INTEGER,
	"grid_show" INTEGER,
	"grid_align" INTEGER,
	"label_format" INTEGER,
	"label_type_host" INTEGER,
	"label_type_hostgroup" INTEGER,
	"label_type_trigger" INTEGER,
	"label_type_map" INTEGER,
	"label_type_image" INTEGER,
	"label_string_host" VARCHAR,
	"label_string_hostgroup" VARCHAR,
	"label_string_trigger" VARCHAR,
	"label_string_map" VARCHAR,
	"label_string_image" VARCHAR,
	"iconmapid" BIGINT,
	"expand_macros" INTEGER,
	"severity_min" INTEGER,
	"userid" BIGINT,
	"private" INTEGER,
	 PRIMARY KEY ("sysmapid")
);

CREATE TABLE "icon_mapping" (
	"iconmappingid" BIGINT,
	"iconmapid" BIGINT,
	"iconid" BIGINT,
	"inventory_link" INTEGER,
	"expression" VARCHAR,
	"sortorder" INTEGER,
	 PRIMARY KEY ("iconmappingid")
);

CREATE TABLE "icon_map" (
	"iconmapid" BIGINT,
	"name" VARCHAR,
	"default_iconid" BIGINT,
	 PRIMARY KEY ("iconmapid")
);

CREATE TABLE "services_times" (
	"timeid" BIGINT,
	"serviceid" BIGINT,
	"type" INTEGER,
	"ts_from" INTEGER,
	"ts_to" INTEGER,
	"note" VARCHAR,
	 PRIMARY KEY ("timeid")
);

CREATE TABLE "services_links" (
	"linkid" BIGINT,
	"serviceupid" BIGINT,
	"servicedownid" BIGINT,
	"soft" INTEGER,
	 PRIMARY KEY ("linkid")
);

CREATE TABLE "services" (
	"serviceid" BIGINT,
	"name" VARCHAR,
	"status" INTEGER,
	"algorithm" INTEGER,
	"triggerid" BIGINT,
	"showsla" INTEGER,
	"goodsla" DOUBLE,
	"sortorder" INTEGER,
	 PRIMARY KEY ("serviceid")
);

CREATE TABLE "rights" (
	"rightid" BIGINT,
	"groupid" BIGINT,
	"permission" INTEGER,
	"id" BIGINT,
	 PRIMARY KEY ("rightid")
);

CREATE TABLE "media" (
	"mediaid" BIGINT,
	"userid" BIGINT,
	"mediatypeid" BIGINT,
	"sendto" VARCHAR,
	"active" INTEGER,
	"severity" INTEGER,
	"period" VARCHAR,
	 PRIMARY KEY ("mediaid")
);

CREATE TABLE "mappings" (
	"mappingid" BIGINT,
	"valuemapid" BIGINT,
	"value" VARCHAR,
	"newvalue" VARCHAR,
	 PRIMARY KEY ("mappingid")
);

CREATE TABLE "items_applications" (
	"itemappid" BIGINT,
	"applicationid" BIGINT,
	"itemid" BIGINT,
	 PRIMARY KEY ("itemappid")
);

CREATE TABLE "hosts_templates" (
	"hosttemplateid" BIGINT,
	"hostid" BIGINT,
	"templateid" BIGINT,
	 PRIMARY KEY ("hosttemplateid")
);

CREATE TABLE "hosts_groups" (
	"hostgroupid" BIGINT,
	"hostid" BIGINT,
	"groupid" BIGINT,
	 PRIMARY KEY ("hostgroupid")
);

CREATE TABLE "hostmacro" (
	"hostmacroid" BIGINT,
	"hostid" BIGINT,
	"macro" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("hostmacroid")
);

CREATE TABLE "globalmacro" (
	"globalmacroid" BIGINT,
	"macro" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("globalmacroid")
);

CREATE TABLE "graph_theme" (
	"graphthemeid" BIGINT,
	"theme" VARCHAR,
	"backgroundcolor" VARCHAR,
	"graphcolor" VARCHAR,
	"gridcolor" VARCHAR,
	"maingridcolor" VARCHAR,
	"gridbordercolor" VARCHAR,
	"textcolor" VARCHAR,
	"highlightcolor" VARCHAR,
	"leftpercentilecolor" VARCHAR,
	"rightpercentilecolor" VARCHAR,
	"nonworktimecolor" VARCHAR,
	 PRIMARY KEY ("graphthemeid")
);

CREATE TABLE "graphs_items" (
	"gitemid" BIGINT,
	"graphid" BIGINT,
	"itemid" BIGINT,
	"drawtype" INTEGER,
	"sortorder" INTEGER,
	"color" VARCHAR,
	"yaxisside" INTEGER,
	"calc_fnc" INTEGER,
	"type" INTEGER,
	 PRIMARY KEY ("gitemid")
);

CREATE TABLE "graphs" (
	"graphid" BIGINT,
	"name" VARCHAR,
	"width" INTEGER,
	"height" INTEGER,
	"yaxismin" DOUBLE,
	"yaxismax" DOUBLE,
	"templateid" BIGINT,
	"show_work_period" INTEGER,
	"show_triggers" INTEGER,
	"graphtype" INTEGER,
	"show_legend" INTEGER,
	"show_3d" INTEGER,
	"percent_left" DOUBLE,
	"percent_right" DOUBLE,
	"ymin_type" INTEGER,
	"ymax_type" INTEGER,
	"ymin_itemid" BIGINT,
	"ymax_itemid" BIGINT,
	"flags" INTEGER,
	 PRIMARY KEY ("graphid")
);

CREATE TABLE "functions" (
	"functionid" BIGINT,
	"itemid" BIGINT,
	"triggerid" BIGINT,
	"function" VARCHAR,
	"parameter" VARCHAR,
	 PRIMARY KEY ("functionid")
);

CREATE TABLE "trigger_depends" (
	"triggerdepid" BIGINT,
	"triggerid_down" BIGINT,
	"triggerid_up" BIGINT,
	 PRIMARY KEY ("triggerdepid")
);

CREATE TABLE "triggers" (
	"triggerid" BIGINT,
	"expression" VARCHAR,
	"description" VARCHAR,
	"url" VARCHAR,
	"status" INTEGER,
	"value" INTEGER,
	"priority" INTEGER,
	"lastchange" INTEGER,
	"comments" TEXT,
	"error" VARCHAR,
	"templateid" BIGINT,
	"type" INTEGER,
	"state" INTEGER,
	"flags" INTEGER,
	 PRIMARY KEY ("triggerid")
);

CREATE TABLE "config" (
	"configid" BIGINT,
	"refresh_unsupported" INTEGER,
	"work_period" VARCHAR,
	"alert_usrgrpid" BIGINT,
	"event_ack_enable" INTEGER,
	"event_expire" INTEGER,
	"event_show_max" INTEGER,
	"default_theme" VARCHAR,
	"authentication_type" INTEGER,
	"ldap_host" VARCHAR,
	"ldap_port" INTEGER,
	"ldap_base_dn" VARCHAR,
	"ldap_bind_dn" VARCHAR,
	"ldap_bind_password" VARCHAR,
	"ldap_search_attribute" VARCHAR,
	"dropdown_first_entry" INTEGER,
	"dropdown_first_remember" INTEGER,
	"discovery_groupid" BIGINT,
	"max_in_table" INTEGER,
	"search_limit" INTEGER,
	"severity_color_0" VARCHAR,
	"severity_color_1" VARCHAR,
	"severity_color_2" VARCHAR,
	"severity_color_3" VARCHAR,
	"severity_color_4" VARCHAR,
	"severity_color_5" VARCHAR,
	"severity_name_0" VARCHAR,
	"severity_name_1" VARCHAR,
	"severity_name_2" VARCHAR,
	"severity_name_3" VARCHAR,
	"severity_name_4" VARCHAR,
	"severity_name_5" VARCHAR,
	"ok_period" INTEGER,
	"blink_period" INTEGER,
	"problem_unack_color" VARCHAR,
	"problem_ack_color" VARCHAR,
	"ok_unack_color" VARCHAR,
	"ok_ack_color" VARCHAR,
	"problem_unack_style" INTEGER,
	"problem_ack_style" INTEGER,
	"ok_unack_style" INTEGER,
	"ok_ack_style" INTEGER,
	"snmptrap_logging" INTEGER,
	"server_check_interval" INTEGER,
	"hk_events_mode" INTEGER,
	"hk_events_trigger" INTEGER,
	"hk_events_internal" INTEGER,
	"hk_events_discovery" INTEGER,
	"hk_events_autoreg" INTEGER,
	"hk_services_mode" INTEGER,
	"hk_services" INTEGER,
	"hk_audit_mode" INTEGER,
	"hk_audit" INTEGER,
	"hk_sessions_mode" INTEGER,
	"hk_sessions" INTEGER,
	"hk_history_mode" INTEGER,
	"hk_history_global" INTEGER,
	"hk_history" INTEGER,
	"hk_trends_mode" INTEGER,
	"hk_trends_global" INTEGER,
	"hk_trends" INTEGER,
	"default_inventory_mode" INTEGER,
	 PRIMARY KEY ("configid")
);

CREATE TABLE "conditions" (
	"conditionid" BIGINT,
	"actionid" BIGINT,
	"conditiontype" INTEGER,
	"operator" INTEGER,
	"value" VARCHAR,
	 PRIMARY KEY ("conditionid")
);

CREATE TABLE "opconditions" (
	"opconditionid" BIGINT,
	"operationid" BIGINT,
	"conditiontype" INTEGER,
	"operator" INTEGER,
	"value" VARCHAR,
	 PRIMARY KEY ("opconditionid")
);

CREATE TABLE "optemplate" (
	"optemplateid" BIGINT,
	"operationid" BIGINT,
	"templateid" BIGINT,
	 PRIMARY KEY ("optemplateid")
);

CREATE TABLE "opgroup" (
	"opgroupid" BIGINT,
	"operationid" BIGINT,
	"groupid" BIGINT,
	 PRIMARY KEY ("opgroupid")
);

CREATE TABLE "opcommand_grp" (
	"opcommand_grpid" BIGINT,
	"operationid" BIGINT,
	"groupid" BIGINT,
	 PRIMARY KEY ("opcommand_grpid")
);

CREATE TABLE "opcommand_hst" (
	"opcommand_hstid" BIGINT,
	"operationid" BIGINT,
	"hostid" BIGINT,
	 PRIMARY KEY ("opcommand_hstid")
);

CREATE TABLE "opcommand" (
	"operationid" BIGINT,
	"type" INTEGER,
	"scriptid" BIGINT,
	"execute_on" INTEGER,
	"port" VARCHAR,
	"authtype" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"publickey" VARCHAR,
	"privatekey" VARCHAR,
	"command" TEXT,
	 PRIMARY KEY ("operationid")
);

CREATE TABLE "opmessage_usr" (
	"opmessage_usrid" BIGINT,
	"operationid" BIGINT,
	"userid" BIGINT,
	 PRIMARY KEY ("opmessage_usrid")
);

CREATE TABLE "opmessage_grp" (
	"opmessage_grpid" BIGINT,
	"operationid" BIGINT,
	"usrgrpid" BIGINT,
	 PRIMARY KEY ("opmessage_grpid")
);

CREATE TABLE "opmessage" (
	"operationid" BIGINT,
	"default_msg" INTEGER,
	"subject" VARCHAR,
	"message" TEXT,
	"mediatypeid" BIGINT,
	 PRIMARY KEY ("operationid")
);

CREATE TABLE "operations" (
	"operationid" BIGINT,
	"actionid" BIGINT,
	"operationtype" INTEGER,
	"esc_period" INTEGER,
	"esc_step_from" INTEGER,
	"esc_step_to" INTEGER,
	"evaltype" INTEGER,
	 PRIMARY KEY ("operationid")
);

CREATE TABLE "actions" (
	"actionid" BIGINT,
	"name" VARCHAR,
	"eventsource" INTEGER,
	"evaltype" INTEGER,
	"status" INTEGER,
	"esc_period" INTEGER,
	"def_shortdata" VARCHAR,
	"def_longdata" TEXT,
	"recovery_msg" INTEGER,
	"r_shortdata" VARCHAR,
	"r_longdata" TEXT,
	"formula" VARCHAR,
	 PRIMARY KEY ("actionid")
);

CREATE TABLE "scripts" (
	"scriptid" BIGINT,
	"name" VARCHAR,
	"command" VARCHAR,
	"host_access" INTEGER,
	"usrgrpid" BIGINT,
	"groupid" BIGINT,
	"description" TEXT,
	"confirmation" VARCHAR,
	"type" INTEGER,
	"execute_on" INTEGER,
	 PRIMARY KEY ("scriptid")
);

CREATE TABLE "users_groups" (
	"id" BIGINT,
	"usrgrpid" BIGINT,
	"userid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usrgrp" (
	"usrgrpid" BIGINT,
	"name" VARCHAR,
	"gui_access" INTEGER,
	"users_status" INTEGER,
	"debug_mode" INTEGER,
	 PRIMARY KEY ("usrgrpid")
);

CREATE TABLE "users" (
	"userid" BIGINT,
	"alias" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	"passwd" CHAR,
	"url" VARCHAR,
	"autologin" INTEGER,
	"autologout" INTEGER,
	"lang" VARCHAR,
	"refresh" INTEGER,
	"type" INTEGER,
	"theme" VARCHAR,
	"attempt_failed" INTEGER,
	"attempt_ip" VARCHAR,
	"attempt_clock" INTEGER,
	"rows_per_page" INTEGER,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "media_type" (
	"mediatypeid" BIGINT,
	"type" INTEGER,
	"description" VARCHAR,
	"smtp_server" VARCHAR,
	"smtp_helo" VARCHAR,
	"smtp_email" VARCHAR,
	"exec_path" VARCHAR,
	"gsm_modem" VARCHAR,
	"username" VARCHAR,
	"passwd" VARCHAR,
	"status" INTEGER,
	"smtp_port" INTEGER,
	"smtp_security" INTEGER,
	"smtp_verify_peer" INTEGER,
	"smtp_verify_host" INTEGER,
	"smtp_authentication" INTEGER,
	"exec_params" VARCHAR,
	 PRIMARY KEY ("mediatypeid")
);

CREATE TABLE "httptestitem" (
	"httptestitemid" BIGINT,
	"httptestid" BIGINT,
	"itemid" BIGINT,
	"type" INTEGER,
	 PRIMARY KEY ("httptestitemid")
);

CREATE TABLE "httpstepitem" (
	"httpstepitemid" BIGINT,
	"httpstepid" BIGINT,
	"itemid" BIGINT,
	"type" INTEGER,
	 PRIMARY KEY ("httpstepitemid")
);

CREATE TABLE "items" (
	"itemid" BIGINT,
	"type" INTEGER,
	"snmp_community" VARCHAR,
	"snmp_oid" VARCHAR,
	"hostid" BIGINT,
	"name" VARCHAR,
	"key_" VARCHAR,
	"delay" INTEGER,
	"history" INTEGER,
	"trends" INTEGER,
	"status" INTEGER,
	"value_type" INTEGER,
	"trapper_hosts" VARCHAR,
	"units" VARCHAR,
	"multiplier" INTEGER,
	"delta" INTEGER,
	"snmpv3_securityname" VARCHAR,
	"snmpv3_securitylevel" INTEGER,
	"snmpv3_authpassphrase" VARCHAR,
	"snmpv3_privpassphrase" VARCHAR,
	"formula" VARCHAR,
	"error" VARCHAR,
	"lastlogsize" BIGINT,
	"logtimefmt" VARCHAR,
	"templateid" BIGINT,
	"valuemapid" BIGINT,
	"delay_flex" VARCHAR,
	"params" TEXT,
	"ipmi_sensor" VARCHAR,
	"data_type" INTEGER,
	"authtype" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"publickey" VARCHAR,
	"privatekey" VARCHAR,
	"mtime" INTEGER,
	"flags" INTEGER,
	"interfaceid" BIGINT,
	"port" VARCHAR,
	"description" TEXT,
	"inventory_link" INTEGER,
	"lifetime" VARCHAR,
	"snmpv3_authprotocol" INTEGER,
	"snmpv3_privprotocol" INTEGER,
	"state" INTEGER,
	"snmpv3_contextname" VARCHAR,
	"evaltype" INTEGER,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "valuemaps" (
	"valuemapid" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("valuemapid")
);

CREATE TABLE "interface" (
	"interfaceid" BIGINT,
	"hostid" BIGINT,
	"main" INTEGER,
	"type" INTEGER,
	"useip" INTEGER,
	"ip" VARCHAR,
	"dns" VARCHAR,
	"port" VARCHAR,
	"bulk" INTEGER,
	 PRIMARY KEY ("interfaceid")
);

CREATE TABLE "httpstep" (
	"httpstepid" BIGINT,
	"httptestid" BIGINT,
	"name" VARCHAR,
	"no" INTEGER,
	"url" VARCHAR,
	"timeout" INTEGER,
	"posts" TEXT,
	"required" VARCHAR,
	"status_codes" VARCHAR,
	"variables" TEXT,
	"follow_redirects" INTEGER,
	"retrieve_mode" INTEGER,
	"headers" TEXT,
	 PRIMARY KEY ("httpstepid")
);

CREATE TABLE "httptest" (
	"httptestid" BIGINT,
	"name" VARCHAR,
	"applicationid" BIGINT,
	"nextcheck" INTEGER,
	"delay" INTEGER,
	"status" INTEGER,
	"variables" TEXT,
	"agent" VARCHAR,
	"authentication" INTEGER,
	"http_user" VARCHAR,
	"http_password" VARCHAR,
	"hostid" BIGINT,
	"templateid" BIGINT,
	"http_proxy" VARCHAR,
	"retries" INTEGER,
	"ssl_cert_file" VARCHAR,
	"ssl_key_file" VARCHAR,
	"ssl_key_password" VARCHAR,
	"verify_peer" INTEGER,
	"verify_host" INTEGER,
	"headers" TEXT,
	 PRIMARY KEY ("httptestid")
);

CREATE TABLE "applications" (
	"applicationid" BIGINT,
	"hostid" BIGINT,
	"name" VARCHAR,
	"flags" INTEGER,
	 PRIMARY KEY ("applicationid")
);

CREATE TABLE "dchecks" (
	"dcheckid" BIGINT,
	"druleid" BIGINT,
	"type" INTEGER,
	"key_" VARCHAR,
	"snmp_community" VARCHAR,
	"ports" VARCHAR,
	"snmpv3_securityname" VARCHAR,
	"snmpv3_securitylevel" INTEGER,
	"snmpv3_authpassphrase" VARCHAR,
	"snmpv3_privpassphrase" VARCHAR,
	"uniq" INTEGER,
	"snmpv3_authprotocol" INTEGER,
	"snmpv3_privprotocol" INTEGER,
	"snmpv3_contextname" VARCHAR,
	 PRIMARY KEY ("dcheckid")
);

CREATE TABLE "drules" (
	"druleid" BIGINT,
	"proxy_hostid" BIGINT,
	"name" VARCHAR,
	"iprange" VARCHAR,
	"delay" INTEGER,
	"nextcheck" INTEGER,
	"status" INTEGER,
	 PRIMARY KEY ("druleid")
);

CREATE TABLE "slides" (
	"slideid" BIGINT,
	"slideshowid" BIGINT,
	"screenid" BIGINT,
	"step" INTEGER,
	"delay" INTEGER,
	 PRIMARY KEY ("slideid")
);

CREATE TABLE "slideshow_usrgrp" (
	"slideshowusrgrpid" BIGINT,
	"slideshowid" BIGINT,
	"usrgrpid" BIGINT,
	"permission" INTEGER,
	 PRIMARY KEY ("slideshowusrgrpid")
);

CREATE TABLE "slideshow_user" (
	"slideshowuserid" BIGINT,
	"slideshowid" BIGINT,
	"userid" BIGINT,
	"permission" INTEGER,
	 PRIMARY KEY ("slideshowuserid")
);

CREATE TABLE "slideshows" (
	"slideshowid" BIGINT,
	"name" VARCHAR,
	"delay" INTEGER,
	"userid" BIGINT,
	"private" INTEGER,
	 PRIMARY KEY ("slideshowid")
);

CREATE TABLE "screen_usrgrp" (
	"screenusrgrpid" BIGINT,
	"screenid" BIGINT,
	"usrgrpid" BIGINT,
	"permission" INTEGER,
	 PRIMARY KEY ("screenusrgrpid")
);

CREATE TABLE "screen_user" (
	"screenuserid" BIGINT,
	"screenid" BIGINT,
	"userid" BIGINT,
	"permission" INTEGER,
	 PRIMARY KEY ("screenuserid")
);

CREATE TABLE "screens_items" (
	"screenitemid" BIGINT,
	"screenid" BIGINT,
	"resourcetype" INTEGER,
	"resourceid" BIGINT,
	"width" INTEGER,
	"height" INTEGER,
	"x" INTEGER,
	"y" INTEGER,
	"colspan" INTEGER,
	"rowspan" INTEGER,
	"elements" INTEGER,
	"valign" INTEGER,
	"halign" INTEGER,
	"style" INTEGER,
	"url" VARCHAR,
	"dynamic" INTEGER,
	"sort_triggers" INTEGER,
	"application" VARCHAR,
	"max_columns" INTEGER,
	 PRIMARY KEY ("screenitemid")
);

CREATE TABLE "screens" (
	"screenid" BIGINT,
	"name" VARCHAR,
	"hsize" INTEGER,
	"vsize" INTEGER,
	"templateid" BIGINT,
	"userid" BIGINT,
	"private" INTEGER,
	 PRIMARY KEY ("screenid")
);

CREATE TABLE "group_discovery" (
	"groupid" BIGINT,
	"parent_group_prototypeid" BIGINT,
	"name" VARCHAR,
	"lastcheck" INTEGER,
	"ts_delete" INTEGER,
	 PRIMARY KEY ("groupid")
);

CREATE TABLE "group_prototype" (
	"group_prototypeid" BIGINT,
	"hostid" BIGINT,
	"name" VARCHAR,
	"groupid" BIGINT,
	"templateid" BIGINT,
	 PRIMARY KEY ("group_prototypeid")
);

CREATE TABLE "groups" (
	"groupid" BIGINT,
	"name" VARCHAR,
	"internal" INTEGER,
	"flags" INTEGER,
	 PRIMARY KEY ("groupid")
);

CREATE TABLE "hosts" (
	"hostid" BIGINT,
	"proxy_hostid" BIGINT,
	"host" VARCHAR,
	"status" INTEGER,
	"disable_until" INTEGER,
	"error" VARCHAR,
	"available" INTEGER,
	"errors_from" INTEGER,
	"lastaccess" INTEGER,
	"ipmi_authtype" INTEGER,
	"ipmi_privilege" INTEGER,
	"ipmi_username" VARCHAR,
	"ipmi_password" VARCHAR,
	"ipmi_disable_until" INTEGER,
	"ipmi_available" INTEGER,
	"snmp_disable_until" INTEGER,
	"snmp_available" INTEGER,
	"maintenanceid" BIGINT,
	"maintenance_status" INTEGER,
	"maintenance_type" INTEGER,
	"maintenance_from" INTEGER,
	"ipmi_errors_from" INTEGER,
	"snmp_errors_from" INTEGER,
	"ipmi_error" VARCHAR,
	"snmp_error" VARCHAR,
	"jmx_disable_until" INTEGER,
	"jmx_available" INTEGER,
	"jmx_errors_from" INTEGER,
	"jmx_error" VARCHAR,
	"name" VARCHAR,
	"flags" INTEGER,
	"templateid" BIGINT,
	"description" TEXT,
	"tls_connect" INTEGER,
	"tls_accept" INTEGER,
	"tls_issuer" VARCHAR,
	"tls_subject" VARCHAR,
	"tls_psk_identity" VARCHAR,
	"tls_psk" VARCHAR,
	 PRIMARY KEY ("hostid")
);

CREATE TABLE "maintenances" (
	"maintenanceid" BIGINT,
	"name" VARCHAR,
	"maintenance_type" INTEGER,
	"description" TEXT,
	"active_since" INTEGER,
	"active_till" INTEGER,
	 PRIMARY KEY ("maintenanceid")
);
