DROP DATABASE IF EXISTS "schema2402";
CREATE DATABASE "schema2402";
USE "schema2402";
CREATE TABLE "potentialmatches" (
	"potentialmatches_id" INTEGER,
	"item_id" INTEGER,
	"rp" CHARACTER VARYING,
	"pending" INTEGER,
	 PRIMARY KEY ("potentialmatches_id")
);

CREATE TABLE "jdyna_widget_text" (
	"id" INT4,
	"collisioni" BOOLEAN,
	"widgetcol" INT4,
	"measurementunitcol" VARCHAR,
	"measurementunitrow" VARCHAR,
	"widgetrow" INT4,
	"displayformat" VARCHAR,
	"htmltoolbar" VARCHAR,
	"multilinea" BOOLEAN,
	"regex" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_widget_number" (
	"id" INT4,
	"max" FLOAT8,
	"min" FLOAT8,
	"precisiondef" INT4,
	"widgetsize" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_widget_link" (
	"id" INT4,
	"labelheaderlabel" VARCHAR,
	"labelheaderurl" VARCHAR,
	"widgetsize" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_widget_date" (
	"id" INT4,
	"maxyear" INT4,
	"minyear" INT4,
	"time" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_widget_checkradio" (
	"id" INT4,
	"dropdown" BOOLEAN,
	"option4row" INT4,
	"staticvalues" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_widget_boolean" (
	"id" INT4,
	"checked" BOOLEAN,
	"hidewhenfalse" BOOLEAN,
	"showastype" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_scopedefinition" (
	"id" INT4,
	"label" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ws_user" (
	"id" INT4,
	"enabled" BOOLEAN,
	"password" VARCHAR,
	"username" VARCHAR,
	"showhiddenmetadata" BOOLEAN,
	"fromip" VARCHAR,
	"toip" VARCHAR,
	"token" VARCHAR,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"typedef" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ws_criteria" (
	"id" INT4,
	"criteria" VARCHAR,
	"enabled" BOOLEAN,
	"filter" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ws_user2crit" (
	"cris_ws_user_id" INT4,
	"criteria_id" INT4,
	 CONSTRAINT "fk_f7w13ncatxg2ejk9h8853t0e8" FOREIGN KEY ("criteria_id") REFERENCES "cris_ws_criteria" ("id"),
	 CONSTRAINT "fk_46u3xn2bav1ob8krk7ely7jbw" FOREIGN KEY ("cris_ws_user_id") REFERENCES "cris_ws_user" ("id")
);

CREATE TABLE "cris_wgroup" (
	"id" INT4,
	"filter" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_weperson" (
	"id" INT4,
	"filter" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_subscription" (
	"id" INT4,
	"epersonid" INT4,
	"typedef" INT4,
	"uuid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_statsubscription" (
	"id" INT4,
	"epersonid" INT4,
	"freq" INT4,
	"typedef" INT4,
	"handle_or_uuid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rpage" (
	"id" INT4,
	"crisid" VARCHAR,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"status" BOOLEAN,
	"uuid" VARCHAR,
	"epersonid" INT4,
	"namestimestamplastmodified" TIMESTAMP,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_wpointer" (
	"id" INT4,
	"display" TEXT,
	"filtro" TEXT,
	"indexname" VARCHAR,
	"widgetsize" INT4,
	"target" VARCHAR,
	"urlpath" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_wfile" (
	"id" INT4,
	"filedescription" TEXT,
	"labelanchor" VARCHAR,
	"showpreview" BOOLEAN,
	"widgetsize" INT4,
	"useinstatistics" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_tab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_tab2policysingle" (
	"tab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_7dme5a998b5cffs2ynyk94l5d" FOREIGN KEY ("tab_id") REFERENCES "cris_rp_tab" ("id")
);

CREATE TABLE "cris_rp_tab2policygroup" (
	"tab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_ajnk574oowmgpud4o9kpctlp" FOREIGN KEY ("tab_id") REFERENCES "cris_rp_tab" ("id")
);

CREATE TABLE "cris_rp_etab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	"displaytab_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_f7m2267gwolx9w41i74u5tc1k" FOREIGN KEY ("displaytab_id") REFERENCES "cris_rp_tab" ("id")
);

CREATE TABLE "cris_rp_etab2policysingle" (
	"etab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_r9o249od95444ipvgrnij3uvl" FOREIGN KEY ("etab_id") REFERENCES "cris_rp_etab" ("id")
);

CREATE TABLE "cris_rp_etab2policygroup" (
	"etab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_i8ye9656ab432x6ylqvi3eiek" FOREIGN KEY ("etab_id") REFERENCES "cris_rp_etab" ("id")
);

CREATE TABLE "cris_rp_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_no_tp" (
	"id" INT4,
	"label" VARCHAR,
	"shortname" VARCHAR,
	"accesslevel" INT4,
	"help" VARCHAR,
	"inline" BOOLEAN,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_no" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"positiondef" INT4,
	"preferred" BOOLEAN,
	"status" BOOLEAN,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"uuid" VARCHAR,
	"scopedef_id" INT4,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_kxbhjy2ypu53wohes7v9yme7s" FOREIGN KEY ("typo_id") REFERENCES "cris_rp_no_tp" ("id"),
	 CONSTRAINT "fk_f92khqsumj1vb427ohr88k9tv" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_rtkbs1o75hf9e8kcekrfiplhk" FOREIGN KEY ("parent_id") REFERENCES "cris_rpage" ("id")
);

CREATE TABLE "cris_rp_no_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_no_tp2pdef" (
	"cris_rp_no_tp_id" INT4,
	"cris_rp_no_pdef_id" INT4,
	 CONSTRAINT "fk_o6pha8eq9luubu3ee9gy2dmwi" FOREIGN KEY ("cris_rp_no_tp_id") REFERENCES "cris_rp_no_tp" ("id"),
	 CONSTRAINT "fk_rjvpjkt5g36c6sjvq92e5ufcb" FOREIGN KEY ("cris_rp_no_pdef_id") REFERENCES "cris_rp_no_pdef" ("id")
);

CREATE TABLE "cris_rp_box" (
	"id" INT4,
	"collapsed" BOOLEAN,
	"externaljsp" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"unrelevant" BOOLEAN,
	"visibility" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_rp_tab2box" (
	"cris_rp_tab_id" INT4,
	"cris_rp_box_id" INT4,
	 CONSTRAINT "fk_kvxytofsjgknmsauoigoewxf6" FOREIGN KEY ("cris_rp_box_id") REFERENCES "cris_rp_box" ("id"),
	 CONSTRAINT "fk_q92eq93wy5w54mkj9stvt4rsi" FOREIGN KEY ("cris_rp_tab_id") REFERENCES "cris_rp_tab" ("id")
);

CREATE TABLE "cris_rp_etab2box" (
	"cris_rp_etab_id" INT4,
	"cris_rp_box_id" INT4,
	 CONSTRAINT "fk_bgo65obl0hi1jvvtrsvm43f5e" FOREIGN KEY ("cris_rp_box_id") REFERENCES "cris_rp_box" ("id"),
	 CONSTRAINT "fk_72lwmptu2ykcn4nwpkr3gro4x" FOREIGN KEY ("cris_rp_etab_id") REFERENCES "cris_rp_etab" ("id")
);

CREATE TABLE "cris_rp_box2policysingle" (
	"box_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_ritnnjkrjlp044yjo0tfpt19f" FOREIGN KEY ("box_id") REFERENCES "cris_rp_box" ("id")
);

CREATE TABLE "cris_rp_box2policygroup" (
	"box_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_pwxgxcddbve4x9h92iqtxxpff" FOREIGN KEY ("box_id") REFERENCES "cris_rp_box" ("id")
);

CREATE TABLE "cris_relpref" (
	"id" INT4,
	"itemid" INT4,
	"priority" INT4,
	"relationtype" VARCHAR,
	"sourceuuid" VARCHAR,
	"status" VARCHAR,
	"targetuuid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_project" (
	"id" INT4,
	"crisid" VARCHAR,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"status" BOOLEAN,
	"uuid" VARCHAR,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pmc_record" (
	"pmcid" INT4,
	"authors" TEXT,
	"publicationnote" TEXT,
	"title" TEXT,
	 PRIMARY KEY ("pmcid")
);

CREATE TABLE "cris_pmc_record_pubmedids" (
	"cris_pmc_record_pmcid" INT4,
	"element" INT4,
	 CONSTRAINT "fk_rt7mkcemvbusg77nq99y3jnap" FOREIGN KEY ("cris_pmc_record_pmcid") REFERENCES "cris_pmc_record" ("pmcid")
);

CREATE TABLE "cris_pmc_record_handles" (
	"cris_pmc_record_pmcid" INT4,
	"element" VARCHAR,
	 CONSTRAINT "fk_b854xw5cmjlyxdj2iy0w5nd2f" FOREIGN KEY ("cris_pmc_record_pmcid") REFERENCES "cris_pmc_record" ("pmcid")
);

CREATE TABLE "cris_pmc_citation" (
	"pubmedid" INT4,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	 PRIMARY KEY ("pubmedid")
);

CREATE TABLE "cris_pmc_citation_itemids" (
	"cris_pmc_citation_pubmedid" INT4,
	"element" INT4,
	 CONSTRAINT "fk_uaclfo4bhxgeogwqughnn873" FOREIGN KEY ("cris_pmc_citation_pubmedid") REFERENCES "cris_pmc_citation" ("pubmedid")
);

CREATE TABLE "cris_pmc_citation2record" (
	"cris_pmc_citation_pubmedid" INT4,
	"pmcrecords_pmcid" INT4,
	 CONSTRAINT "fk_4lx8k0ctp1qm5p1q0n4i0aphv" FOREIGN KEY ("cris_pmc_citation_pubmedid") REFERENCES "cris_pmc_citation" ("pubmedid"),
	 CONSTRAINT "fk_cby7u82jsnkaftqmtex8ic217" FOREIGN KEY ("pmcrecords_pmcid") REFERENCES "cris_pmc_record" ("pmcid")
);

CREATE TABLE "cris_pj_wpointer" (
	"id" INT4,
	"display" TEXT,
	"filtro" TEXT,
	"indexname" VARCHAR,
	"widgetsize" INT4,
	"target" VARCHAR,
	"urlpath" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_wfile" (
	"id" INT4,
	"filedescription" TEXT,
	"labelanchor" VARCHAR,
	"showpreview" BOOLEAN,
	"widgetsize" INT4,
	"useinstatistics" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_tab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_tab2policysingle" (
	"tab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_456mu7altf23l6u163l255erc" FOREIGN KEY ("tab_id") REFERENCES "cris_pj_tab" ("id")
);

CREATE TABLE "cris_pj_tab2policygroup" (
	"tab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_amf69chwwq9ktp2fbj0tagt3a" FOREIGN KEY ("tab_id") REFERENCES "cris_pj_tab" ("id")
);

CREATE TABLE "cris_pj_etab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	"displaytab_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_tljn2ea23dsl60m23juaeptrr" FOREIGN KEY ("displaytab_id") REFERENCES "cris_pj_tab" ("id")
);

CREATE TABLE "cris_pj_etab2policysingle" (
	"etab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_c370hgq2gwt1fk1cpn92y5wof" FOREIGN KEY ("etab_id") REFERENCES "cris_pj_etab" ("id")
);

CREATE TABLE "cris_pj_etab2policygroup" (
	"etab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_cpnidos6chf15smpf365k9u2d" FOREIGN KEY ("etab_id") REFERENCES "cris_pj_etab" ("id")
);

CREATE TABLE "cris_pj_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_no_tp" (
	"id" INT4,
	"label" VARCHAR,
	"shortname" VARCHAR,
	"accesslevel" INT4,
	"help" VARCHAR,
	"inline" BOOLEAN,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_no" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"positiondef" INT4,
	"preferred" BOOLEAN,
	"status" BOOLEAN,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"uuid" VARCHAR,
	"scopedef_id" INT4,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_d3u1id11dh8cpu6byv4peecu8" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_i5sc6s2ipvjmnkvhfl79ouby1" FOREIGN KEY ("typo_id") REFERENCES "cris_pj_no_tp" ("id"),
	 CONSTRAINT "fk_hgv396785eederv2vymqhc40e" FOREIGN KEY ("parent_id") REFERENCES "cris_project" ("id")
);

CREATE TABLE "cris_pj_no_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_no_tp2pdef" (
	"cris_pj_no_tp_id" INT4,
	"cris_pj_no_pdef_id" INT4,
	 CONSTRAINT "fk_63yffuhpaitj8s3p89ki0oa5r" FOREIGN KEY ("cris_pj_no_pdef_id") REFERENCES "cris_pj_no_pdef" ("id"),
	 CONSTRAINT "fk_htjuhq3qadf5iwkgu5qcra10w" FOREIGN KEY ("cris_pj_no_tp_id") REFERENCES "cris_pj_no_tp" ("id")
);

CREATE TABLE "cris_pj_box" (
	"id" INT4,
	"collapsed" BOOLEAN,
	"externaljsp" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"unrelevant" BOOLEAN,
	"visibility" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_pj_tab2box" (
	"cris_pj_tab_id" INT4,
	"cris_pj_box_id" INT4,
	 CONSTRAINT "fk_gb21mqf16af5stu85v7txma2b" FOREIGN KEY ("cris_pj_tab_id") REFERENCES "cris_pj_tab" ("id"),
	 CONSTRAINT "fk_nxxmyq2joa0w27qj4hre5f233" FOREIGN KEY ("cris_pj_box_id") REFERENCES "cris_pj_box" ("id")
);

CREATE TABLE "cris_pj_etab2box" (
	"cris_pj_etab_id" INT4,
	"cris_pj_box_id" INT4,
	 CONSTRAINT "fk_596ktsjh8y2wpao9kdpmkjgch" FOREIGN KEY ("cris_pj_box_id") REFERENCES "cris_pj_box" ("id"),
	 CONSTRAINT "fk_5wwskh39en2j2j8hl2oxhb2n6" FOREIGN KEY ("cris_pj_etab_id") REFERENCES "cris_pj_etab" ("id")
);

CREATE TABLE "cris_pj_box2policysingle" (
	"box_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_ol4361xb7guetm6mlrltokeur" FOREIGN KEY ("box_id") REFERENCES "cris_pj_box" ("id")
);

CREATE TABLE "cris_pj_box2policygroup" (
	"box_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_rbdf00op5aym7rchnqxtsc7bv" FOREIGN KEY ("box_id") REFERENCES "cris_pj_box" ("id")
);

CREATE TABLE "cris_ou_wpointer" (
	"id" INT4,
	"display" TEXT,
	"filtro" TEXT,
	"indexname" VARCHAR,
	"widgetsize" INT4,
	"target" VARCHAR,
	"urlpath" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_wfile" (
	"id" INT4,
	"filedescription" TEXT,
	"labelanchor" VARCHAR,
	"showpreview" BOOLEAN,
	"widgetsize" INT4,
	"useinstatistics" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_tab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_tab2policysingle" (
	"tab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_p3j0r630vykj5t6od5ysd4ikk" FOREIGN KEY ("tab_id") REFERENCES "cris_ou_tab" ("id")
);

CREATE TABLE "cris_ou_tab2policygroup" (
	"tab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_484l9q8ojjiuk522qwtj5c78w" FOREIGN KEY ("tab_id") REFERENCES "cris_ou_tab" ("id")
);

CREATE TABLE "cris_ou_etab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	"displaytab_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_se60wf2qk13js6yv6yybqn4q6" FOREIGN KEY ("displaytab_id") REFERENCES "cris_ou_tab" ("id")
);

CREATE TABLE "cris_ou_etab2policysingle" (
	"etab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_6cw0xrjng41aedd4mk76jcm39" FOREIGN KEY ("etab_id") REFERENCES "cris_ou_etab" ("id")
);

CREATE TABLE "cris_ou_etab2policygroup" (
	"etab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_ctyvoar08kmyrksr21fs3wjch" FOREIGN KEY ("etab_id") REFERENCES "cris_ou_etab" ("id")
);

CREATE TABLE "cris_ou_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_no_tp" (
	"id" INT4,
	"label" VARCHAR,
	"shortname" VARCHAR,
	"accesslevel" INT4,
	"help" VARCHAR,
	"inline" BOOLEAN,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_no_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_no_tp2pdef" (
	"cris_ou_no_tp_id" INT4,
	"cris_ou_no_pdef_id" INT4,
	 CONSTRAINT "fk_lve22cr625xqxt9aq3jjcbckv" FOREIGN KEY ("cris_ou_no_tp_id") REFERENCES "cris_ou_no_tp" ("id"),
	 CONSTRAINT "fk_ox1f8oret8htox46phbvf7vu2" FOREIGN KEY ("cris_ou_no_pdef_id") REFERENCES "cris_ou_no_pdef" ("id")
);

CREATE TABLE "cris_ou_box" (
	"id" INT4,
	"collapsed" BOOLEAN,
	"externaljsp" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"unrelevant" BOOLEAN,
	"visibility" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_tab2box" (
	"cris_ou_tab_id" INT4,
	"cris_ou_box_id" INT4,
	 CONSTRAINT "fk_26abr8nect1rgqa6nkg9q68pt" FOREIGN KEY ("cris_ou_tab_id") REFERENCES "cris_ou_tab" ("id"),
	 CONSTRAINT "fk_6ry05l6mlunqief8wram1770l" FOREIGN KEY ("cris_ou_box_id") REFERENCES "cris_ou_box" ("id")
);

CREATE TABLE "cris_ou_etab2box" (
	"cris_ou_etab_id" INT4,
	"cris_ou_box_id" INT4,
	 CONSTRAINT "fk_ml1ju8ldgniedhkvu79dcqekj" FOREIGN KEY ("cris_ou_box_id") REFERENCES "cris_ou_box" ("id"),
	 CONSTRAINT "fk_t2u156eltj2jklbp2i50lvowq" FOREIGN KEY ("cris_ou_etab_id") REFERENCES "cris_ou_etab" ("id")
);

CREATE TABLE "cris_ou_box2policysingle" (
	"box_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_dllsgbtw3raif8edkidoeoi56" FOREIGN KEY ("box_id") REFERENCES "cris_ou_box" ("id")
);

CREATE TABLE "cris_ou_box2policygroup" (
	"box_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_60gjy1oe2yrpm5180hfxaop3l" FOREIGN KEY ("box_id") REFERENCES "cris_ou_box" ("id")
);

CREATE TABLE "cris_orgunit" (
	"id" INT4,
	"crisid" VARCHAR,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"status" BOOLEAN,
	"uuid" VARCHAR,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_ou_no" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"positiondef" INT4,
	"preferred" BOOLEAN,
	"status" BOOLEAN,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"uuid" VARCHAR,
	"scopedef_id" INT4,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_4mjygpu22jqrqmuguw97bfetm" FOREIGN KEY ("typo_id") REFERENCES "cris_ou_no_tp" ("id"),
	 CONSTRAINT "fk_ro2m4yf4gx0alpidp7nl3a793" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_plxej42s8pd8y30k9nikoo8sg" FOREIGN KEY ("parent_id") REFERENCES "cris_orgunit" ("id")
);

CREATE TABLE "cris_orcid_queue" (
	"id" INT4,
	"entityid" INT4,
	"fastlookupobjectname" TEXT,
	"fastlookupuuid" VARCHAR,
	"mode" VARCHAR,
	"owner" VARCHAR,
	"typeid" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_orcid_history" (
	"id" INT4,
	"entityid" INT4,
	"entityuuid" VARCHAR,
	"owner" VARCHAR,
	"putcode" VARCHAR,
	"responsemessage" TEXT,
	"lastattempt" TIMESTAMP,
	"lastsuccess" TIMESTAMP,
	"typeid" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_metrics" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"last" BOOLEAN,
	"metriccount" FLOAT8,
	"metrictype" VARCHAR,
	"remark" TEXT,
	"resourceid" INT4,
	"resourcetypeid" INT4,
	"startdate" TIMESTAMP,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"uuid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_do_wpointer" (
	"id" INT4,
	"display" TEXT,
	"filtro" TEXT,
	"indexname" VARCHAR,
	"widgetsize" INT4,
	"target" VARCHAR,
	"urlpath" VARCHAR,
	"filterextended" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_do_wfile" (
	"id" INT4,
	"filedescription" TEXT,
	"labelanchor" VARCHAR,
	"showpreview" BOOLEAN,
	"widgetsize" INT4,
	"useinstatistics" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_do_tp" (
	"id" INT4,
	"label" VARCHAR,
	"shortname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_do_tab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	"typedef_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_r25voh0iig0nfpfxnbmw1pkc9" FOREIGN KEY ("typedef_id") REFERENCES "cris_do_tp" ("id")
);

CREATE TABLE "cris_do_tab2policysingle" (
	"tab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_i6f2ks46ta2j5vs00erqo2ip5" FOREIGN KEY ("tab_id") REFERENCES "cris_do_tab" ("id")
);

CREATE TABLE "cris_do_tab2policygroup" (
	"tab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_j7d7vi6lj4h5wictl9sh6lmot" FOREIGN KEY ("tab_id") REFERENCES "cris_do_tab" ("id")
);

CREATE TABLE "cris_do_etab" (
	"id" INT4,
	"ext" VARCHAR,
	"mandatory" BOOLEAN,
	"mime" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"visibility" INT4,
	"displaytab_id" INT4,
	"typedef_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_o5hn6lb337u4d5vo4bv4q256a" FOREIGN KEY ("typedef_id") REFERENCES "cris_do_tp" ("id"),
	 CONSTRAINT "fk_l3xunn2dors3jn64y4e4scmyx" FOREIGN KEY ("displaytab_id") REFERENCES "cris_do_tab" ("id")
);

CREATE TABLE "cris_do_etab2policysingle" (
	"etab_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_9c541j5og0fn26aiig2ud2k2d" FOREIGN KEY ("etab_id") REFERENCES "cris_do_etab" ("id")
);

CREATE TABLE "cris_do_etab2policygroup" (
	"etab_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_notgna4379iv6h6gh90vqvgg2" FOREIGN KEY ("etab_id") REFERENCES "cris_do_etab" ("id")
);

CREATE TABLE "cris_do_box" (
	"id" INT4,
	"collapsed" BOOLEAN,
	"externaljsp" VARCHAR,
	"priority" INT4,
	"shortname" VARCHAR,
	"title" VARCHAR,
	"unrelevant" BOOLEAN,
	"visibility" INT4,
	"typedef_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ntnml3hwo0a5by5xpy4e2e0ls" FOREIGN KEY ("typedef_id") REFERENCES "cris_do_tp" ("id")
);

CREATE TABLE "cris_do_tab2box" (
	"cris_do_tab_id" INT4,
	"cris_do_box_id" INT4,
	 CONSTRAINT "fk_5j0tups3dh0t71hik7tbswadt" FOREIGN KEY ("cris_do_box_id") REFERENCES "cris_do_box" ("id"),
	 CONSTRAINT "fk_om77haktsepkfilfgy3pc7p7p" FOREIGN KEY ("cris_do_tab_id") REFERENCES "cris_do_tab" ("id")
);

CREATE TABLE "cris_do_etab2box" (
	"cris_do_etab_id" INT4,
	"cris_do_box_id" INT4,
	 CONSTRAINT "fk_64baaiyf1fitm5bshra6etc3m" FOREIGN KEY ("cris_do_etab_id") REFERENCES "cris_do_etab" ("id"),
	 CONSTRAINT "fk_8f7fxsvql6j7cajgxjxqd56ve" FOREIGN KEY ("cris_do_box_id") REFERENCES "cris_do_box" ("id")
);

CREATE TABLE "cris_do_box2policysingle" (
	"box_id" INT4,
	"authorizedsingle" VARCHAR,
	 CONSTRAINT "fk_mjladl11m2680hn8o4btb4lly" FOREIGN KEY ("box_id") REFERENCES "cris_do_box" ("id")
);

CREATE TABLE "cris_do_box2policygroup" (
	"box_id" INT4,
	"authorizedgroup" VARCHAR,
	 CONSTRAINT "fk_fqxyx09rdfu2fdlml08828xk8" FOREIGN KEY ("box_id") REFERENCES "cris_do_box" ("id")
);

CREATE TABLE "cris_do" (
	"id" INT4,
	"crisid" VARCHAR,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"status" BOOLEAN,
	"uuid" VARCHAR,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_fc0g67614fiog1dy2cnlgts1f" FOREIGN KEY ("typo_id") REFERENCES "cris_do_tp" ("id")
);

CREATE TABLE "jdyna_values" (
	"dtype" VARCHAR,
	"id" INT4,
	"sortvalue" VARCHAR,
	"datevalue" TIMESTAMP,
	"textvalue" TEXT,
	"linkdescription" VARCHAR,
	"linkvalue" VARCHAR,
	"fileextension" VARCHAR,
	"filefolder" VARCHAR,
	"filemime" VARCHAR,
	"filename" VARCHAR,
	"doublevalue" FLOAT8,
	"booleanvalue" BOOLEAN,
	"custompointer" INT4,
	"rpvalue" INT4,
	"projectvalue" INT4,
	"ouvalue" INT4,
	"dovalue" INT4,
	"classificationvalue" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_boathxpid9tfmswl65g8fsofe" FOREIGN KEY ("classificationvalue") REFERENCES "cris_do" ("id"),
	 CONSTRAINT "fk_epb6ms4019hjnrsyp448iyuo8" FOREIGN KEY ("rpvalue") REFERENCES "cris_rpage" ("id"),
	 CONSTRAINT "fk_7kmuljw6d7w45hfbte39oasq8" FOREIGN KEY ("dovalue") REFERENCES "cris_do" ("id"),
	 CONSTRAINT "fk_t114s8de29b62b9537rnoim24" FOREIGN KEY ("projectvalue") REFERENCES "cris_project" ("id"),
	 CONSTRAINT "fk_20pdqf2vc1sjqs36j3oab88wu" FOREIGN KEY ("ouvalue") REFERENCES "cris_orgunit" ("id")
);

CREATE TABLE "cris_rp_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_kvm7bvfwb43oj1bj1rq3m9rsi" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_fqxm0cldj5v8n94lv26uo7hb5" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_kqnh5hofvg2cs7279gspf8fo5" FOREIGN KEY ("typo_id") REFERENCES "cris_rp_pdef" ("id"),
	 CONSTRAINT "fk_m67jrglhhmlk32ru3tlx9iqyt" FOREIGN KEY ("parent_id") REFERENCES "cris_rpage" ("id")
);

CREATE TABLE "cris_rp_no_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_qju7toon13m8o7e1dyg3f9cn6" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_fbt8f4suc8p8qfodkt1ba8fvq" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_3p0ine0gjssp40kr232qc4dfg" FOREIGN KEY ("typo_id") REFERENCES "cris_rp_no_pdef" ("id"),
	 CONSTRAINT "fk_8kulyp6twm998jusn47xmkagx" FOREIGN KEY ("parent_id") REFERENCES "cris_rp_no" ("id")
);

CREATE TABLE "cris_pj_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_1peqo5gj8ln34vc9puisuff14" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_ocg1yq0sdhnc6mr5q65kyurh" FOREIGN KEY ("typo_id") REFERENCES "cris_pj_pdef" ("id"),
	 CONSTRAINT "fk_guaxj0xrqnvv3cmi9c63keyqt" FOREIGN KEY ("parent_id") REFERENCES "cris_project" ("id"),
	 CONSTRAINT "fk_178mccanh2h10r0cqunwluydd" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id")
);

CREATE TABLE "cris_pj_no_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_49w223c1hcycmpaxx8d791msm" FOREIGN KEY ("typo_id") REFERENCES "cris_pj_no_pdef" ("id"),
	 CONSTRAINT "fk_4v75xs3d3tu4fbn7g5isflcak" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_26xeivbhdu54r5dfj1v99cxvt" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_ctn25cliysoq7clconn2dvsy0" FOREIGN KEY ("parent_id") REFERENCES "cris_pj_no" ("id")
);

CREATE TABLE "cris_ou_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_io81r7mscq9520roimofygkma" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_6lwoynw2n3pn8c6j99gop02us" FOREIGN KEY ("typo_id") REFERENCES "cris_ou_pdef" ("id"),
	 CONSTRAINT "fk_dbc0m858848m37xjg69itvn6c" FOREIGN KEY ("parent_id") REFERENCES "cris_orgunit" ("id"),
	 CONSTRAINT "fk_sklpgs6h6v1fvm4l13v274dta" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id")
);

CREATE TABLE "cris_ou_no_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_pkpxf46sdvmnsbb67xkeoy61w" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_9gh7csy78iwf030472kqufe8n" FOREIGN KEY ("parent_id") REFERENCES "cris_ou_no" ("id"),
	 CONSTRAINT "fk_t3mji72s4ylld86l4lpo4bbwy" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_1gjbbpoqiwaimk9jq8k4r0561" FOREIGN KEY ("typo_id") REFERENCES "cris_ou_no_pdef" ("id")
);

CREATE TABLE "cris_do_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_widget_classification" (
	"id" INT4,
	"chooseonlyleaves" BOOLEAN,
	"display" TEXT,
	"treeobjecttype" VARCHAR,
	"metadatabuildertree_id" INT4,
	"rootresearchobject_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ob081b8crx6qakbqj9y9l83ea" FOREIGN KEY ("metadatabuildertree_id") REFERENCES "cris_do_pdef" ("id"),
	 CONSTRAINT "fk_8fup73lnpgx6c1fjqdhvhvn6" FOREIGN KEY ("rootresearchobject_id") REFERENCES "cris_do" ("id")
);

CREATE TABLE "cris_do_tp2pdef" (
	"cris_do_tp_id" INT4,
	"cris_do_pdef_id" INT4,
	 CONSTRAINT "fk_4v7j00d9agaeif0bf6gf85or7" FOREIGN KEY ("cris_do_pdef_id") REFERENCES "cris_do_pdef" ("id"),
	 CONSTRAINT "fk_hk7i944vtmggefgiynexw5o8k" FOREIGN KEY ("cris_do_tp_id") REFERENCES "cris_do_tp" ("id")
);

CREATE TABLE "cris_do_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_htjfvut8d3lnm32n8t8gf4biu" FOREIGN KEY ("typo_id") REFERENCES "cris_do_pdef" ("id"),
	 CONSTRAINT "fk_koqu9fgt8mgjby7b4s0t9dlaw" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_jlr0y5d8lu8xj56uyb64733dq" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_n66nqhfm49o4cb0a7xjf3wjf4" FOREIGN KEY ("parent_id") REFERENCES "cris_do" ("id")
);

CREATE TABLE "cris_do_no_tp" (
	"id" INT4,
	"label" VARCHAR,
	"shortname" VARCHAR,
	"accesslevel" INT4,
	"help" VARCHAR,
	"inline" BOOLEAN,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cris_do_tp2notp" (
	"cris_do_tp_id" INT4,
	"cris_do_no_tp_id" INT4,
	 CONSTRAINT "fk_jbdt5b6evuvp4jxlyfnqn6v2q" FOREIGN KEY ("cris_do_tp_id") REFERENCES "cris_do_tp" ("id"),
	 CONSTRAINT "fk_mi7iigoxr0d8guue9vhgon7gu" FOREIGN KEY ("cris_do_no_tp_id") REFERENCES "cris_do_no_tp" ("id")
);

CREATE TABLE "cris_do_no" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"positiondef" INT4,
	"preferred" BOOLEAN,
	"status" BOOLEAN,
	"timestampcreated" TIMESTAMP,
	"timestamplastmodified" TIMESTAMP,
	"uuid" VARCHAR,
	"scopedef_id" INT4,
	"sourceid" VARCHAR,
	"sourceref" VARCHAR,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_rtfotw4rot9comm1gbsqhv6wv" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_lj7u53cpfv3gdf53314a5dsl4" FOREIGN KEY ("parent_id") REFERENCES "cris_do" ("id"),
	 CONSTRAINT "fk_6rjevf54mfpe1ca57i0uek7l4" FOREIGN KEY ("typo_id") REFERENCES "cris_do_no_tp" ("id")
);

CREATE TABLE "cris_do_no_pdef" (
	"id" INT4,
	"accesslevel" INT4,
	"advancedsearch" BOOLEAN,
	"fieldmin_col" INT4,
	"fieldmin_col_unit" VARCHAR,
	"fieldmin_row_unit" VARCHAR,
	"fieldmin_row" INT4,
	"help" TEXT,
	"label" VARCHAR,
	"labelminsize" INT4,
	"labelminsizeunit" VARCHAR,
	"mandatory" BOOLEAN,
	"newline" BOOLEAN,
	"oncreation" BOOLEAN,
	"priority" INT4,
	"repeatable" BOOLEAN,
	"shortname" VARCHAR,
	"showinlist" BOOLEAN,
	"simplesearch" BOOLEAN,
	"rendering_id" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jdyna_containable" (
	"dtype" VARCHAR,
	"id" INT4,
	"externaljsp" VARCHAR,
	"cris_rp_pdef_fk" INT4,
	"cris_pj_pdef_fk" INT4,
	"cris_ou_pdef_fk" INT4,
	"cris_rp_no_pdef_fk" INT4,
	"cris_pj_no_pdef_fk" INT4,
	"cris_ou_no_pdef_fk" INT4,
	"cris_rp_no_tp" INT4,
	"cris_pj_no_tp" INT4,
	"cris_ou_no_tp_fk" INT4,
	"cris_do_no_tp_fk" INT4,
	"cris_do_no_pdef_fk" INT4,
	"cris_do_pdef_fk" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_7robphe5jdp8safh6mucsl7a0" FOREIGN KEY ("cris_rp_no_tp") REFERENCES "cris_rp_no_tp" ("id"),
	 CONSTRAINT "fk_mqlmkq5a8hcgw7yl6s0wrbuv2" FOREIGN KEY ("cris_pj_no_pdef_fk") REFERENCES "cris_pj_no_pdef" ("id"),
	 CONSTRAINT "fk_pq1waf5pa60bat6xnhil687c2" FOREIGN KEY ("cris_pj_no_tp") REFERENCES "cris_pj_no_tp" ("id"),
	 CONSTRAINT "fk_l7miyy3hrckebq5996mibby6b" FOREIGN KEY ("cris_do_no_pdef_fk") REFERENCES "cris_do_no_pdef" ("id"),
	 CONSTRAINT "fk_b05fvc02kjcodwg2dx10cnowm" FOREIGN KEY ("cris_do_no_tp_fk") REFERENCES "cris_do_no_tp" ("id"),
	 CONSTRAINT "fk_jg0mkqo5ytopaxty2jo33ffxt" FOREIGN KEY ("cris_ou_pdef_fk") REFERENCES "cris_ou_pdef" ("id"),
	 CONSTRAINT "fk_7ycftv8mg6y0ctrx11h6imbg9" FOREIGN KEY ("cris_do_pdef_fk") REFERENCES "cris_do_pdef" ("id"),
	 CONSTRAINT "fk_k2qp7i6sl0jjdoxs1n8r6v5bh" FOREIGN KEY ("cris_rp_pdef_fk") REFERENCES "cris_rp_pdef" ("id"),
	 CONSTRAINT "fk_dnvg24jur0c50hm16sxyvlcxv" FOREIGN KEY ("cris_ou_no_pdef_fk") REFERENCES "cris_ou_no_pdef" ("id"),
	 CONSTRAINT "fk_kvcjf37sma26056y57e2ml9rr" FOREIGN KEY ("cris_rp_no_pdef_fk") REFERENCES "cris_rp_no_pdef" ("id"),
	 CONSTRAINT "fk_5p6h71hmt478puqichfyfj4j5" FOREIGN KEY ("cris_pj_pdef_fk") REFERENCES "cris_pj_pdef" ("id"),
	 CONSTRAINT "fk_psrgtjgk39p3s1ntnhschukn" FOREIGN KEY ("cris_ou_no_tp_fk") REFERENCES "cris_ou_no_tp" ("id")
);

CREATE TABLE "jdyna_box_message" (
	"id" INT4,
	"body" VARCHAR,
	"showinedit" BOOLEAN,
	"showinpublicview" BOOLEAN,
	"usebodyaskeymessagebundle" BOOLEAN,
	"elementafter_id" INT4,
	"parent_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_m2jh58o659lmgu5i38kn6u3m" FOREIGN KEY ("elementafter_id") REFERENCES "jdyna_containable" ("id")
);

CREATE TABLE "cris_rp_box2con" (
	"cris_rp_box_id" INT4,
	"jdyna_containable_id" INT4,
	 CONSTRAINT "fk_eaidxya38dy4q8jc45jpnb7oq" FOREIGN KEY ("cris_rp_box_id") REFERENCES "cris_rp_box" ("id"),
	 CONSTRAINT "fk_bkfyhin956c9tsyutk46n0m12" FOREIGN KEY ("jdyna_containable_id") REFERENCES "jdyna_containable" ("id")
);

CREATE TABLE "cris_pj_box2con" (
	"cris_pj_box_id" INT4,
	"jdyna_containable_id" INT4,
	 CONSTRAINT "fk_1puywj4p437h0pt57ils2g90b" FOREIGN KEY ("cris_pj_box_id") REFERENCES "cris_pj_box" ("id"),
	 CONSTRAINT "fk_979582b7r2cuagp0do33rg4tv" FOREIGN KEY ("jdyna_containable_id") REFERENCES "jdyna_containable" ("id")
);

CREATE TABLE "cris_ou_box2con" (
	"cris_ou_box_id" INT4,
	"jdyna_containable_id" INT4,
	 CONSTRAINT "fk_fsc0difnoaua4u7fkm8jetr12" FOREIGN KEY ("cris_ou_box_id") REFERENCES "cris_ou_box" ("id"),
	 CONSTRAINT "fk_7yxd3aw0qxxrcwxung4gq8h80" FOREIGN KEY ("jdyna_containable_id") REFERENCES "jdyna_containable" ("id")
);

CREATE TABLE "cris_do_box2con" (
	"cris_do_box_id" INT4,
	"jdyna_containable_id" INT4,
	 CONSTRAINT "fk_42kirt9te4ukaq20n98oi7wth" FOREIGN KEY ("jdyna_containable_id") REFERENCES "jdyna_containable" ("id"),
	 CONSTRAINT "fk_feyp8mgacp9ygamc8pt92x7yk" FOREIGN KEY ("cris_do_box_id") REFERENCES "cris_do_box" ("id")
);

CREATE TABLE "cris_do_no_tp2pdef" (
	"cris_do_no_tp_id" INT4,
	"cris_do_no_pdef_id" INT4,
	 CONSTRAINT "fk_12pfysjupgid5q9hail2t7kkm" FOREIGN KEY ("cris_do_no_tp_id") REFERENCES "cris_do_no_tp" ("id"),
	 CONSTRAINT "fk_hc19x2qu140wub3c4uhphjxjm" FOREIGN KEY ("cris_do_no_pdef_id") REFERENCES "cris_do_no_pdef" ("id")
);

CREATE TABLE "cris_do_no_prop" (
	"id" INT4,
	"enddate" TIMESTAMP,
	"startdate" TIMESTAMP,
	"lockdef" INT4,
	"positiondef" INT4,
	"visibility" INT4,
	"scopedef_id" INT4,
	"value_id" INT4,
	"parent_id" INT4,
	"typo_id" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_l3806bpn18qo700jpvqrr3dug" FOREIGN KEY ("value_id") REFERENCES "jdyna_values" ("id"),
	 CONSTRAINT "fk_i2q351awy1y06p8pd8dn421s9" FOREIGN KEY ("scopedef_id") REFERENCES "jdyna_scopedefinition" ("id"),
	 CONSTRAINT "fk_iiq5be3e88fnn03ukmxprmrc8" FOREIGN KEY ("parent_id") REFERENCES "cris_do_no" ("id"),
	 CONSTRAINT "fk_3tfwo7k75ulljjnsytmdc0amg" FOREIGN KEY ("typo_id") REFERENCES "cris_do_no_pdef" ("id")
);
