DROP DATABASE IF EXISTS "schema2024";
CREATE DATABASE "schema2024";
USE "schema2024";
CREATE TABLE "worrywords" (
	"id" BIGINT,
	"keyword" VARCHAR,
	"substance" VARCHAR,
	"type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "words_cache" (
	"id" BIGINT,
	"search" VARCHAR,
	"words" TEXT,
	"added" TIMESTAMP
);

CREATE TABLE "words" (
	"id" BIGINT,
	"word" VARCHAR,
	"firstthree" VARCHAR,
	"soundex" VARCHAR,
	"popularity" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "weights" (
	"name" VARCHAR,
	"simplename" VARCHAR,
	"weight" DECIMAL,
	"source" ENUM,
	 PRIMARY KEY ("name")
);

CREATE TABLE "users_stories_images" (
	"id" BIGINT,
	"storyid" BIGINT,
	"contenttype" VARCHAR,
	"default" TINYINT,
	"url" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"hash" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_searches" (
	"id" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	"term" VARCHAR,
	"maxmsg" BIGINT,
	"deleted" TINYINT,
	"locationid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_modmails" (
	"id" BIGINT,
	"userid" BIGINT,
	"logid" BIGINT,
	"timestamp" TIMESTAMP,
	"groupid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_emails_verify_domains" (
	"id" BIGINT,
	"domain" VARCHAR,
	"timestamp" TIMESTAMP,
	"reason" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trysts" (
	"id" BIGINT,
	"arrangedat" TIMESTAMP,
	"arrangedfor" TIMESTAMP,
	"user1" BIGINT,
	"user2" BIGINT,
	"icssent" TINYINT,
	"ics1uid" TEXT,
	"ics2uid" TEXT,
	"user1response" ENUM,
	"user2response" ENUM,
	"remindersent" TIMESTAMP,
	"user1confirmed" TIMESTAMP,
	"user2confirmed" TIMESTAMP,
	"user1declined" TIMESTAMP,
	"user2declined" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "towns" (
	"id" BIGINT,
	"name" VARCHAR,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"position" POINT,
	"comment" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teams" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" TEXT,
	"type" ENUM,
	"email" VARCHAR,
	"active" TINYINT,
	"wikiurl" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teams_members" (
	"id" BIGINT,
	"userid" BIGINT,
	"teamid" BIGINT,
	"added" TIMESTAMP,
	"description" TEXT,
	"nameoverride" VARCHAR,
	"imageoverride" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "teams_members_ibfk_2" FOREIGN KEY ("teamid") REFERENCES "teams" ("id")
);

CREATE TABLE "supporters" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" ENUM,
	"email" VARCHAR,
	"display" VARCHAR,
	"voucher" VARCHAR,
	"vouchercount" INT,
	"voucheryears" INT,
	"anonymous" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stroll_sponsors" (
	"id" BIGINT,
	"name" VARCHAR,
	"amount" DECIMAL,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stroll_route" (
	"id" BIGINT,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"fromlast" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stroll_nights" (
	"id" BIGINT,
	"date" DATE,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stroll_close" (
	"id" BIGINT,
	"userid" BIGINT,
	"dist" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stroll_blogs" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stats_summaries" (
	"id" BIGINT,
	"start" DATE,
	"minusstart" BIGINT,
	"period" ENUM,
	"groupid" BIGINT,
	"type" ENUM,
	"count" BIGINT,
	"breakdown" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "spatial_ref_sys" (
	"srid" INT,
	"auth_name" VARCHAR,
	"auth_srid" INT,
	"srtext" VARCHAR
);

CREATE TABLE "spam_whitelist_subjects" (
	"id" BIGINT,
	"subject" VARCHAR,
	"comment" MEDIUMTEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "spam_whitelist_links" (
	"id" BIGINT,
	"userid" BIGINT,
	"domain" VARCHAR,
	"date" TIMESTAMP,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "spam_whitelist_ips" (
	"id" BIGINT,
	"ip" VARCHAR,
	"comment" MEDIUMTEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "spam_users" (
	"id" BIGINT,
	"userid" BIGINT,
	"byuserid" BIGINT,
	"added" TIMESTAMP,
	"addedby" BIGINT,
	"collection" ENUM,
	"reason" VARCHAR,
	"heldby" BIGINT,
	"heldat" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "spam_keywords" (
	"id" BIGINT,
	"word" VARCHAR,
	"exclude" TEXT,
	"action" ENUM,
	"type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "spam_countries" (
	"id" BIGINT,
	"country" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shortlink_clicks" (
	"id" BIGINT,
	"shortlinkid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" BIGINT,
	"userid" BIGINT,
	"series" BIGINT,
	"token" VARCHAR,
	"date" TIMESTAMP,
	"lastactive" TIMESTAMP
);

CREATE TABLE "search_terms" (
	"id" BIGINT,
	"term" VARCHAR,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "returnpath_seedlist" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"email" VARCHAR,
	"userid" BIGINT,
	"type" ENUM,
	"active" TINYINT,
	"oneshot" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ratings" (
	"id" BIGINT,
	"rater" BIGINT,
	"ratee" BIGINT,
	"rating" ENUM,
	"timestamp" TIMESTAMP,
	"visible" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "prerender" (
	"id" BIGINT,
	"url" VARCHAR,
	"html" LONGTEXT,
	"head" LONGTEXT,
	"retrieved" TIMESTAMP,
	"timeout" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"icon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "predictions" (
	"id" BIGINT,
	"userid" BIGINT,
	"prediction" ENUM,
	"timestamp" TIMESTAMP,
	"probs" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partners_keys" (
	"id" BIGINT,
	"partner" VARCHAR,
	"key" VARCHAR,
	"domain" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_thoroughfaredescriptor" (
	"id" BIGINT,
	"thoroughfaredescriptor" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_subbuildingname" (
	"id" BIGINT,
	"subbuildingname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_posttown" (
	"id" BIGINT,
	"posttown" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_pobox" (
	"id" BIGINT,
	"pobox" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_organisationname" (
	"id" BIGINT,
	"organisationname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_doubledependentlocality" (
	"id" BIGINT,
	"doubledependentlocality" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_dependentthoroughfaredescriptor" (
	"id" BIGINT,
	"dependentthoroughfaredescriptor" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_dependentlocality" (
	"id" BIGINT,
	"dependentlocality" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_departmentname" (
	"id" BIGINT,
	"departmentname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paf_buildingname" (
	"id" BIGINT,
	"buildingname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "os_county_electoral_division_region" (
	"ogr_fid" INT,
	"shape" GEOMETRY
);

CREATE TABLE "noticeboards" (
	"id" BIGINT,
	"name" VARCHAR,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"position" POINT,
	"added" TIMESTAMP,
	"addedby" BIGINT,
	"description" TEXT,
	"active" TINYINT,
	"lastcheckedat" TIMESTAMP,
	"thanked" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "noticeboards_checks" (
	"id" BIGINT,
	"noticeboardid" BIGINT,
	"userid" BIGINT,
	"askedat" TIMESTAMP,
	"checkedat" TIMESTAMP,
	"inactive" TINYINT,
	"refreshed" TINYINT,
	"declined" TINYINT,
	"comments" TEXT,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "noticeboards_checks_ibfk_2" FOREIGN KEY ("noticeboardid") REFERENCES "noticeboards" ("id")
);

CREATE TABLE "newsfeed_users" (
	"id" BIGINT,
	"userid" BIGINT,
	"newsfeedid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "newsfeed_images" (
	"id" BIGINT,
	"newsfeedid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "modnotifs" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mod_configs" (
	"id" BIGINT,
	"name" VARCHAR,
	"createdby" BIGINT,
	"fromname" ENUM,
	"ccrejectto" ENUM,
	"ccrejectaddr" VARCHAR,
	"ccfollowupto" ENUM,
	"ccfollowupaddr" VARCHAR,
	"ccrejmembto" ENUM,
	"ccrejmembaddr" VARCHAR,
	"ccfollmembto" ENUM,
	"ccfollmembaddr" VARCHAR,
	"protected" TINYINT,
	"messageorder" MEDIUMTEXT,
	"network" VARCHAR,
	"coloursubj" TINYINT,
	"subjreg" VARCHAR,
	"subjlen" INT,
	"default" TINYINT,
	"chatread" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mod_stdmsgs" (
	"id" BIGINT,
	"configid" BIGINT,
	"title" VARCHAR,
	"action" ENUM,
	"subjpref" VARCHAR,
	"subjsuff" VARCHAR,
	"body" MEDIUMTEXT,
	"rarelyused" TINYINT,
	"autosend" TINYINT,
	"newmodstatus" ENUM,
	"newdelstatus" ENUM,
	"edittext" ENUM,
	"insert" ENUM,
	 CONSTRAINT "mod_stdmsgs_ibfk_1" FOREIGN KEY ("configid") REFERENCES "mod_configs" ("id")
);

CREATE TABLE "mod_bulkops" (
	"id" BIGINT,
	"title" VARCHAR,
	"configid" BIGINT,
	"set" ENUM,
	"criterion" ENUM,
	"runevery" INT,
	"action" ENUM,
	"bouncingfor" INT
);

CREATE TABLE "messages_deadlines" (
	"msgid" BIGINT,
	"fop" TINYINT,
	"mustgoby" DATE
);

CREATE TABLE "merges" (
	"id" BIGINT,
	"user1" BIGINT,
	"user2" BIGINT,
	"offered" TIMESTAMP,
	"accepted" TIMESTAMP,
	"rejected" TIMESTAMP,
	"offeredby" BIGINT,
	"uid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_src" (
	"id" BIGINT,
	"src" VARCHAR,
	"date" TIMESTAMP,
	"userid" BIGINT,
	"session" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_sql" (
	"id" BIGINT,
	"date" TIMESTAMP,
	"duration" DECIMAL,
	"userid" BIGINT,
	"session" VARCHAR,
	"request" LONGTEXT,
	"response" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_jobs" (
	"id" BIGINT,
	"userid" BIGINT,
	"link" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_events" (
	"id" BIGINT,
	"userid" BIGINT,
	"sessionid" VARCHAR,
	"ip" VARCHAR,
	"timestamp" TIMESTAMP,
	"clienttimestamp" TIMESTAMP,
	"posx" INT,
	"posy" INT,
	"viewx" INT,
	"viewy" INT,
	"data" MEDIUMTEXT,
	"datasameas" BIGINT,
	"datahash" VARCHAR,
	"route" VARCHAR,
	"target" VARCHAR,
	"event" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_errors" (
	"id" BIGINT,
	"date" TIMESTAMP,
	"type" ENUM,
	"userid" BIGINT,
	"text" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_emails" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"eximid" VARCHAR,
	"userid" BIGINT,
	"from" VARCHAR,
	"to" VARCHAR,
	"messageid" VARCHAR,
	"subject" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs_api" (
	"id" BIGINT,
	"date" TIMESTAMP,
	"userid" BIGINT,
	"ip" VARCHAR,
	"session" VARCHAR,
	"request" LONGTEXT,
	"response" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"byuser" BIGINT,
	"type" ENUM,
	"subtype" ENUM,
	"groupid" BIGINT,
	"user" BIGINT,
	"msgid" BIGINT,
	"configid" BIGINT,
	"stdmsgid" BIGINT,
	"bulkopid" BIGINT,
	"text" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logos" (
	"id" BIGINT,
	"path" VARCHAR,
	"date" VARCHAR,
	"reason" VARCHAR,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locations_grids" (
	"id" BIGINT,
	"swlat" DECIMAL,
	"swlng" DECIMAL,
	"nelat" DECIMAL,
	"nelng" DECIMAL,
	"box" GEOMETRY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locations_grids_touches" (
	"gridid" BIGINT,
	"touches" BIGINT,
	 CONSTRAINT "locations_grids_touches_ibfk_1" FOREIGN KEY ("gridid") REFERENCES "locations_grids" ("id"),
	 CONSTRAINT "locations_grids_touches_ibfk_2" FOREIGN KEY ("touches") REFERENCES "locations_grids" ("id")
);

CREATE TABLE "locations" (
	"id" BIGINT,
	"osm_id" VARCHAR,
	"name" VARCHAR,
	"type" ENUM,
	"osm_place" TINYINT,
	"geometry" GEOMETRY,
	"ourgeometry" GEOMETRY,
	"gridid" BIGINT,
	"postcodeid" BIGINT,
	"areaid" BIGINT,
	"canon" VARCHAR,
	"popularity" BIGINT,
	"osm_amenity" TINYINT,
	"osm_shop" TINYINT,
	"maxdimension" DECIMAL,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"yahoouserid" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"fullname" VARCHAR,
	"systemrole" ENUM,
	"added" TIMESTAMP,
	"lastaccess" TIMESTAMP,
	"settings" MEDIUMTEXT,
	"gotrealemail" TINYINT,
	"yahooid" VARCHAR,
	"licenses" INT,
	"newslettersallowed" TINYINT,
	"relevantallowed" TINYINT,
	"onholidaytill" DATE,
	"ripaconsent" TINYINT,
	"publishconsent" TINYINT,
	"lastlocation" BIGINT,
	"lastrelevantcheck" TIMESTAMP,
	"lastidlechaseup" TIMESTAMP,
	"bouncing" TINYINT,
	"permissions" ENUM,
	"invitesleft" INT,
	"source" VARCHAR,
	"chatmodstatus" ENUM,
	"deleted" TIMESTAMP,
	"inventedname" TINYINT,
	"newsfeedmodstatus" ENUM,
	"replyambit" INT,
	"engagement" ENUM,
	"trustlevel" ENUM,
	"covidconfirmed" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_ibfk_1" FOREIGN KEY ("lastlocation") REFERENCES "locations" ("id")
);

CREATE TABLE "volunteering" (
	"id" BIGINT,
	"userid" BIGINT,
	"pending" TINYINT,
	"title" VARCHAR,
	"online" TINYINT,
	"location" TEXT,
	"contactname" VARCHAR,
	"contactphone" VARCHAR,
	"contactemail" VARCHAR,
	"contacturl" VARCHAR,
	"description" TEXT,
	"added" TIMESTAMP,
	"deleted" TINYINT,
	"deletedby" BIGINT,
	"askedtorenew" TIMESTAMP,
	"renewed" TIMESTAMP,
	"expired" TINYINT,
	"timecommitment" TEXT,
	"heldby" BIGINT,
	"deletedcovid" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "volunteering_ibfk_2" FOREIGN KEY ("heldby") REFERENCES "users" ("id"),
	 CONSTRAINT "volunteering_ibfk_1" FOREIGN KEY ("deletedby") REFERENCES "users" ("id")
);

CREATE TABLE "volunteering_images" (
	"id" BIGINT,
	"opportunityid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "volunteering_images_ibfk_1" FOREIGN KEY ("opportunityid") REFERENCES "volunteering" ("id")
);

CREATE TABLE "volunteering_dates" (
	"id" BIGINT,
	"volunteeringid" BIGINT,
	"start" TIMESTAMP,
	"end" TIMESTAMP,
	"applyby" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "volunteering_dates_ibfk_1" FOREIGN KEY ("volunteeringid") REFERENCES "volunteering" ("id")
);

CREATE TABLE "users_thanks" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_thanks_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_stories_requested" (
	"id" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_stories_requested_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_stories" (
	"id" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	"public" TINYINT,
	"reviewed" TINYINT,
	"headline" VARCHAR,
	"story" TEXT,
	"tweeted" TINYINT,
	"mailedtocentral" TINYINT,
	"mailedtomembers" TINYINT,
	"newsletterreviewed" TINYINT,
	"newsletter" TINYINT,
	"reviewedby" BIGINT,
	"newsletterreviewedby" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_stories_ibfk_3" FOREIGN KEY ("reviewedby") REFERENCES "users" ("id"),
	 CONSTRAINT "users_stories_ibfk_2" FOREIGN KEY ("reviewedby") REFERENCES "users" ("id"),
	 CONSTRAINT "users_stories_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_stories_likes" (
	"storyid" BIGINT,
	"userid" BIGINT,
	 CONSTRAINT "users_stories_likes_ibfk_1" FOREIGN KEY ("storyid") REFERENCES "users_stories" ("id"),
	 CONSTRAINT "users_stories_likes_ibfk_2" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_schedules" (
	"id" BIGINT,
	"userid" BIGINT,
	"created" TIMESTAMP,
	"schedule" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_schedules_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_replytime" (
	"id" BIGINT,
	"userid" BIGINT,
	"replytime" INT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_replytime_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_related" (
	"id" BIGINT,
	"user1" BIGINT,
	"user2" BIGINT,
	"timestamp" TIMESTAMP,
	"notified" TINYINT,
	"detected" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_related_ibfk_2" FOREIGN KEY ("user2") REFERENCES "users" ("id"),
	 CONSTRAINT "users_related_ibfk_1" FOREIGN KEY ("user1") REFERENCES "users" ("id")
);

CREATE TABLE "users_push_notifications" (
	"id" BIGINT,
	"userid" BIGINT,
	"added" TIMESTAMP,
	"type" ENUM,
	"lastsent" TIMESTAMP,
	"subscription" VARCHAR,
	"apptype" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_push_notifications_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_phones" (
	"id" BIGINT,
	"userid" BIGINT,
	"number" VARCHAR,
	"valid" TINYINT,
	"added" TIMESTAMP,
	"lastsent" TIMESTAMP,
	"lastresponse" TEXT,
	"laststatus" ENUM,
	"laststatusreceived" TIMESTAMP,
	"count" INT,
	"lastclicked" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_phones_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_nudges" (
	"id" BIGINT,
	"fromuser" BIGINT,
	"touser" BIGINT,
	"timestamp" TIMESTAMP,
	"responded" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_nudges_ibfk_1" FOREIGN KEY ("fromuser") REFERENCES "users" ("id"),
	 CONSTRAINT "users_nudges_ibfk_2" FOREIGN KEY ("touser") REFERENCES "users" ("id")
);

CREATE TABLE "users_logins" (
	"id" BIGINT,
	"userid" BIGINT,
	"type" ENUM,
	"uid" VARCHAR,
	"credentials" TEXT,
	"added" TIMESTAMP,
	"lastaccess" TIMESTAMP,
	"credentials2" TEXT,
	"credentialsrotated" TIMESTAMP,
	"salt" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_logins_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_kudos" (
	"id" BIGINT,
	"kudos" INT,
	"userid" BIGINT,
	"posts" INT,
	"chats" INT,
	"newsfeed" INT,
	"events" INT,
	"vols" INT,
	"facebook" TINYINT,
	"platform" TINYINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_kudos_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_invitations" (
	"id" BIGINT,
	"userid" BIGINT,
	"email" VARCHAR,
	"date" TIMESTAMP,
	"outcome" ENUM,
	"outcometimestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_invitations_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_images" (
	"id" BIGINT,
	"userid" BIGINT,
	"contenttype" VARCHAR,
	"default" TINYINT,
	"url" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_images_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_exports" (
	"id" BIGINT,
	"userid" BIGINT,
	"requested" TIMESTAMP,
	"started" TIMESTAMP,
	"completed" TIMESTAMP,
	"tag" VARCHAR,
	"data" LONGBLOB,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_exports_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_emails" (
	"id" BIGINT,
	"userid" BIGINT,
	"email" VARCHAR,
	"preferred" TINYINT,
	"added" TIMESTAMP,
	"validatekey" VARCHAR,
	"validated" TIMESTAMP,
	"canon" VARCHAR,
	"backwards" VARCHAR,
	"bounced" TIMESTAMP,
	"viewed" TIMESTAMP,
	"md5hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_emails_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_emails_verify" (
	"id" BIGINT,
	"emailid" BIGINT,
	"timestamp" TIMESTAMP,
	"result" TEXT,
	"status" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_emails_verify_ibfk_1" FOREIGN KEY ("emailid") REFERENCES "users_emails" ("id")
);

CREATE TABLE "users_donations_asks" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_donations_asks_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_donations" (
	"id" BIGINT,
	"type" ENUM,
	"userid" BIGINT,
	"payer" VARCHAR,
	"payerdisplayname" VARCHAR,
	"timestamp" TIMESTAMP,
	"transactionid" VARCHAR,
	"grossamount" DECIMAL,
	"source" ENUM,
	"giftaidconsent" TINYINT,
	"giftaidclaimed" TIMESTAMP,
	"giftaidchaseup" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_donations_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_chatlists" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"expired" TINYINT,
	"key" VARCHAR,
	"chatlist" LONGTEXT,
	"background" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_chatlists_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_builddates" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"webversion" VARCHAR,
	"appversion" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_builddates_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_approxlocs" (
	"id" BIGINT,
	"userid" BIGINT,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"position" POINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_approxlocs_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_active" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_active_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_aboutme" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"text" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_aboutme_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "search_history" (
	"id" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	"term" VARCHAR,
	"locationid" BIGINT,
	"groups" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "search_history_ibfk_1" FOREIGN KEY ("locationid") REFERENCES "locations" ("id")
);

CREATE TABLE "paf_addresses" (
	"id" BIGINT,
	"postcodeid" BIGINT,
	"posttownid" BIGINT,
	"dependentlocalityid" BIGINT,
	"doubledependentlocalityid" BIGINT,
	"thoroughfaredescriptorid" BIGINT,
	"dependentthoroughfaredescriptorid" BIGINT,
	"buildingnumber" INT,
	"buildingnameid" BIGINT,
	"subbuildingnameid" BIGINT,
	"poboxid" BIGINT,
	"departmentnameid" BIGINT,
	"organisationnameid" BIGINT,
	"udprn" BIGINT,
	"postcodetype" CHAR,
	"suorganisationindicator" CHAR,
	"deliverypointsuffix" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "paf_addresses_ibfk_11" FOREIGN KEY ("postcodeid") REFERENCES "locations" ("id")
);

CREATE TABLE "users_addresses" (
	"id" BIGINT,
	"userid" BIGINT,
	"pafid" BIGINT,
	"to" VARCHAR,
	"instructions" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_addresses_ibfk_3" FOREIGN KEY ("pafid") REFERENCES "paf_addresses" ("id"),
	 CONSTRAINT "users_addresses_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_requests" (
	"id" BIGINT,
	"userid" BIGINT,
	"type" ENUM,
	"date" TIMESTAMP,
	"completed" TIMESTAMP,
	"completedby" BIGINT,
	"addressid" BIGINT,
	"to" VARCHAR,
	"notifiedmods" TIMESTAMP,
	"paid" TINYINT,
	"amount" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_requests_ibfk_2" FOREIGN KEY ("addressid") REFERENCES "users_addresses" ("id"),
	 CONSTRAINT "users_requests_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id"),
	 CONSTRAINT "users_requests_ibfk_3" FOREIGN KEY ("completedby") REFERENCES "users" ("id")
);

CREATE TABLE "messages" (
	"id" BIGINT,
	"arrival" TIMESTAMP,
	"date" TIMESTAMP,
	"deleted" TIMESTAMP,
	"heldby" BIGINT,
	"source" ENUM,
	"sourceheader" VARCHAR,
	"fromip" VARCHAR,
	"fromcountry" VARCHAR,
	"message" LONGTEXT,
	"fromuser" BIGINT,
	"envelopefrom" VARCHAR,
	"fromname" VARCHAR,
	"fromaddr" VARCHAR,
	"envelopeto" VARCHAR,
	"replyto" VARCHAR,
	"subject" VARCHAR,
	"suggestedsubject" VARCHAR,
	"type" ENUM,
	"messageid" VARCHAR,
	"tnpostid" VARCHAR,
	"textbody" LONGTEXT,
	"htmlbody" LONGTEXT,
	"retrycount" INT,
	"retrylastfailure" TIMESTAMP,
	"spamtype" ENUM,
	"spamreason" VARCHAR,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"locationid" BIGINT,
	"editedby" BIGINT,
	"editedat" TIMESTAMP,
	"availableinitially" INT,
	"availablenow" INT,
	"lastroute" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "_messages_ibfk_3" FOREIGN KEY ("locationid") REFERENCES "locations" ("id")
);

CREATE TABLE "users_nearby" (
	"userid" BIGINT,
	"msgid" BIGINT,
	"timestamp" TIMESTAMP,
	 CONSTRAINT "users_nearby_ibfk_2" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "users_nearby_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "partners_messages" (
	"id" BIGINT,
	"partnerid" BIGINT,
	"msgid" BIGINT,
	"time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "partners_messages_ibfk_2" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "partners_messages_ibfk_1" FOREIGN KEY ("partnerid") REFERENCES "partners_keys" ("id")
);

CREATE TABLE "messages_spamham" (
	"id" BIGINT,
	"msgid" BIGINT,
	"spamham" ENUM,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_spamham_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_reneged" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"msgid" BIGINT,
	"userid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_reneged_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_related" (
	"id1" BIGINT,
	"id2" BIGINT,
	 CONSTRAINT "messages_related_ibfk_1" FOREIGN KEY ("id1") REFERENCES "messages" ("id"),
	 CONSTRAINT "messages_related_ibfk_2" FOREIGN KEY ("id2") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_promises" (
	"id" BIGINT,
	"msgid" BIGINT,
	"userid" BIGINT,
	"promisedat" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_promises_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_outcomes_intended" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"msgid" BIGINT,
	"outcome" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_outcomes_intended_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_outcomes" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"msgid" BIGINT,
	"outcome" ENUM,
	"happiness" ENUM,
	"comments" TEXT,
	"reviewed" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_outcomes_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_likes" (
	"msgid" BIGINT,
	"userid" BIGINT,
	"type" ENUM,
	"timestamp" TIMESTAMP,
	"count" INT,
	 CONSTRAINT "messages_likes_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_edits" (
	"id" BIGINT,
	"msgid" BIGINT,
	"timestamp" TIMESTAMP,
	"byuser" BIGINT,
	"reviewrequired" TINYINT,
	"revertedat" TIMESTAMP,
	"approvedat" TIMESTAMP,
	"oldtext" LONGTEXT,
	"newtext" LONGTEXT,
	"oldsubject" VARCHAR,
	"newsubject" VARCHAR,
	"oldtype" ENUM,
	"newtype" ENUM,
	"olditems" TEXT,
	"newitems" TEXT,
	"oldimages" TEXT,
	"newimages" TEXT,
	"oldlocation" BIGINT,
	"newlocation" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_edits_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_by" (
	"id" BIGINT,
	"msgid" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"count" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_by_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_attachments" (
	"id" BIGINT,
	"msgid" BIGINT,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	"externaluid" VARCHAR,
	"rotated" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "_messages_attachments_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "visualise" (
	"id" BIGINT,
	"msgid" BIGINT,
	"attid" BIGINT,
	"timestamp" TIMESTAMP,
	"fromuser" BIGINT,
	"touser" BIGINT,
	"fromlat" DECIMAL,
	"fromlng" DECIMAL,
	"tolat" DECIMAL,
	"tolng" DECIMAL,
	"distance" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "visualise_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "visualise_ibfk_3" FOREIGN KEY ("touser") REFERENCES "users" ("id"),
	 CONSTRAINT "visualise_ibfk_2" FOREIGN KEY ("fromuser") REFERENCES "users" ("id"),
	 CONSTRAINT "_visualise_ibfk_4" FOREIGN KEY ("attid") REFERENCES "messages_attachments" ("id")
);

CREATE TABLE "locations_spatial" (
	"locationid" BIGINT,
	"geometry" GEOMETRY,
	 CONSTRAINT "locations_spatial_ibfk_1" FOREIGN KEY ("locationid") REFERENCES "locations" ("id")
);

CREATE TABLE "link_previews" (
	"id" BIGINT,
	"url" VARCHAR,
	"title" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"invalid" TINYINT,
	"spam" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jobs_keywords" (
	"id" BIGINT,
	"keyword" VARCHAR,
	"count" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"location" VARCHAR,
	"title" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"country" VARCHAR,
	"job_type" VARCHAR,
	"posted_at" DATETIME,
	"job_reference" VARCHAR,
	"company" VARCHAR,
	"mobile_friendly_apply" VARCHAR,
	"category" VARCHAR,
	"html_jobs" VARCHAR,
	"url" VARCHAR,
	"body" TEXT,
	"cpc" DECIMAL,
	"geometry" GEOMETRY,
	"seenat" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items_non" (
	"id" BIGINT,
	"name" VARCHAR,
	"popularity" INT,
	"updated" TIMESTAMP,
	"lastexample" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" BIGINT,
	"name" VARCHAR,
	"popularity" INT,
	"weight" DECIMAL,
	"updated" TIMESTAMP,
	"suggestfromphoto" TINYINT,
	"suggestfromtypeahead" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages_items" (
	"msgid" BIGINT,
	"itemid" BIGINT,
	 CONSTRAINT "messages_items_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "messages_items_ibfk_2" FOREIGN KEY ("itemid") REFERENCES "items" ("id")
);

CREATE TABLE "messages_attachments_items" (
	"id" BIGINT,
	"attid" BIGINT,
	"itemid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_attachments_items_ibfk_1" FOREIGN KEY ("attid") REFERENCES "messages_attachments" ("id"),
	 CONSTRAINT "messages_attachments_items_ibfk_2" FOREIGN KEY ("itemid") REFERENCES "items" ("id")
);

CREATE TABLE "items_index" (
	"itemid" BIGINT,
	"wordid" BIGINT,
	"popularity" INT,
	"categoryid" BIGINT,
	 CONSTRAINT "items_index_ibfk_1" FOREIGN KEY ("itemid") REFERENCES "items" ("id")
);

CREATE TABLE "groups_facebook_toshare" (
	"id" BIGINT,
	"sharefrom" VARCHAR,
	"postid" VARCHAR,
	"date" TIMESTAMP,
	"data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "microactions" (
	"id" BIGINT,
	"userid" BIGINT,
	"msgid" BIGINT,
	"msgcategory" ENUM,
	"result" ENUM,
	"timestamp" TIMESTAMP,
	"comments" TEXT,
	"searchterm1" BIGINT,
	"searchterm2" BIGINT,
	"version" INT,
	"item1" BIGINT,
	"item2" BIGINT,
	"facebook_post" BIGINT,
	"rotatedimage" BIGINT,
	"score_positive" DECIMAL,
	"score_negative" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "microactions_ibfk_7" FOREIGN KEY ("facebook_post") REFERENCES "groups_facebook_toshare" ("id"),
	 CONSTRAINT "microactions_ibfk_8" FOREIGN KEY ("rotatedimage") REFERENCES "messages_attachments" ("id"),
	 CONSTRAINT "microactions_ibfk_5" FOREIGN KEY ("item1") REFERENCES "items" ("id"),
	 CONSTRAINT "microactions_ibfk_6" FOREIGN KEY ("item2") REFERENCES "items" ("id"),
	 CONSTRAINT "microactions_ibfk_2" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "giftaid" (
	"id" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"period" ENUM,
	"fullname" VARCHAR,
	"homeaddress" TEXT,
	"deleted" TIMESTAMP,
	"reviewed" TIMESTAMP,
	"updated" TIMESTAMP,
	"postcode" VARCHAR,
	"housenameornumber" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engage_mails" (
	"id" BIGINT,
	"engagement" ENUM,
	"template" VARCHAR,
	"subject" VARCHAR,
	"text" TEXT,
	"shown" BIGINT,
	"action" BIGINT,
	"rate" DECIMAL,
	"suggest" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engage" (
	"id" BIGINT,
	"userid" BIGINT,
	"engagement" ENUM,
	"mailid" BIGINT,
	"timestamp" TIMESTAMP,
	"succeeded" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ebay_favourites" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"count" INT,
	"rival" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "domains_common" (
	"id" BIGINT,
	"domain" VARCHAR,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "domains" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"domain" VARCHAR,
	"sent" INT,
	"defers" INT,
	"avgdly" INT,
	"problem" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "communityevents" (
	"id" BIGINT,
	"userid" BIGINT,
	"pending" TINYINT,
	"title" VARCHAR,
	"location" TEXT,
	"contactname" VARCHAR,
	"contactphone" VARCHAR,
	"contactemail" VARCHAR,
	"contacturl" VARCHAR,
	"description" TEXT,
	"added" TIMESTAMP,
	"deleted" TINYINT,
	"legacyid" BIGINT,
	"heldby" BIGINT,
	"deletedcovid" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "communityevents_images" (
	"id" BIGINT,
	"eventid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "communityevents_images_ibfk_1" FOREIGN KEY ("eventid") REFERENCES "communityevents" ("id")
);

CREATE TABLE "communityevents_groups" (
	"eventid" BIGINT,
	"groupid" BIGINT,
	"arrival" TIMESTAMP,
	 CONSTRAINT "communityevents_groups_ibfk_1" FOREIGN KEY ("eventid") REFERENCES "communityevents" ("id")
);

CREATE TABLE "communityevents_dates" (
	"id" BIGINT,
	"eventid" BIGINT,
	"start" TIMESTAMP,
	"end" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "communityevents_dates_ibfk_1" FOREIGN KEY ("eventid") REFERENCES "communityevents" ("id")
);

CREATE TABLE "chat_rooms" (
	"id" BIGINT,
	"name" VARCHAR,
	"chattype" ENUM,
	"groupid" BIGINT,
	"user1" BIGINT,
	"user2" BIGINT,
	"description" VARCHAR,
	"created" TIMESTAMP,
	"synctofacebook" ENUM,
	"synctofacebookgroupid" BIGINT,
	"latestmessage" TIMESTAMP,
	"msgvalid" INT,
	"msginvalid" INT,
	"flaggedspam" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_chatlists_index" (
	"id" BIGINT,
	"chatid" BIGINT,
	"chatlistid" BIGINT,
	"userid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_chatlists_index_ibfk_3" FOREIGN KEY ("chatid") REFERENCES "chat_rooms" ("id"),
	 CONSTRAINT "users_chatlists_index_ibfk_1" FOREIGN KEY ("chatlistid") REFERENCES "users_chatlists" ("id"),
	 CONSTRAINT "users_chatlists_index_ibfk_2" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "chat_roster" (
	"id" BIGINT,
	"chatid" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	"status" ENUM,
	"lastmsgseen" BIGINT,
	"lastemailed" TIMESTAMP,
	"lastmsgemailed" BIGINT,
	"lastip" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chat_roster_ibfk_1" FOREIGN KEY ("chatid") REFERENCES "chat_rooms" ("id")
);

CREATE TABLE "chat_images" (
	"id" BIGINT,
	"chatmsgid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chat_messages" (
	"id" BIGINT,
	"chatid" BIGINT,
	"userid" BIGINT,
	"type" ENUM,
	"reportreason" ENUM,
	"refmsgid" BIGINT,
	"refchatid" BIGINT,
	"imageid" BIGINT,
	"date" TIMESTAMP,
	"message" TEXT,
	"platform" TINYINT,
	"seenbyall" TINYINT,
	"mailedtoall" TINYINT,
	"reviewrequired" TINYINT,
	"reviewedby" BIGINT,
	"reviewrejected" TINYINT,
	"spamscore" INT,
	"facebookid" VARCHAR,
	"scheduleid" BIGINT,
	"replyexpected" TINYINT,
	"replyreceived" TINYINT,
	"norfolkmsgid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chat_messages_ibfk_1" FOREIGN KEY ("imageid") REFERENCES "chat_images" ("id")
);

CREATE TABLE "users_expected" (
	"id" BIGINT,
	"expecter" BIGINT,
	"expectee" BIGINT,
	"chatmsgid" BIGINT,
	"value" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_expected_ibfk_3" FOREIGN KEY ("chatmsgid") REFERENCES "chat_messages" ("id"),
	 CONSTRAINT "users_expected_ibfk_1" FOREIGN KEY ("expecter") REFERENCES "users" ("id"),
	 CONSTRAINT "users_expected_ibfk_2" FOREIGN KEY ("expectee") REFERENCES "users" ("id")
);

CREATE TABLE "chat_messages_held" (
	"id" BIGINT,
	"msgid" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chat_messages_held_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "chat_messages" ("id")
);

CREATE TABLE "chat_messages_byemail" (
	"id" BIGINT,
	"chatmsgid" BIGINT,
	"msgid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chat_messages_byemail_ibfk_1" FOREIGN KEY ("chatmsgid") REFERENCES "chat_messages" ("id")
);

CREATE TABLE "changes" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"type" ENUM,
	"msgid" BIGINT,
	"userid" BIGINT,
	"groupid" BIGINT,
	"chatid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bounces_emails" (
	"id" BIGINT,
	"emailid" BIGINT,
	"date" TIMESTAMP,
	"reason" TEXT,
	"permanent" TINYINT,
	"reset" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bounces" (
	"id" BIGINT,
	"to" VARCHAR,
	"msg" LONGTEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "booktastic_ocr" (
	"id" BIGINT,
	"text" LONGTEXT,
	"uid" VARCHAR,
	"timestamp" TIMESTAMP,
	"processed" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "booktastic_results" (
	"id" BIGINT,
	"ocrid" BIGINT,
	"timestamp" TIMESTAMP,
	"spines" LONGTEXT,
	"fragments" LONGTEXT,
	"score" INT,
	"rating" INT,
	"started" TIMESTAMP,
	"completed" TIMESTAMP,
	"phase" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "booktastic_results_ibfk_1" FOREIGN KEY ("ocrid") REFERENCES "booktastic_ocr" ("id")
);

CREATE TABLE "booktastic_isbndb" (
	"id" BIGINT,
	"author" VARCHAR,
	"results" LONGTEXT,
	"timestamp" TIMESTAMP,
	"popularity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "booktastic_images" (
	"id" BIGINT,
	"ocrid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "booktastic_common" (
	"id" BIGINT,
	"word" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "booktastic_books" (
	"id" BIGINT,
	"author" VARCHAR,
	"title" VARCHAR,
	"added" TIMESTAMP,
	"popularity" INT,
	"book" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "aviva_votes" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"project" VARCHAR,
	"name" TEXT,
	"votes" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "aviva_history" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"position" INT,
	"votes" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authorities" (
	"id" BIGINT,
	"name" VARCHAR,
	"polygon" GEOMETRY,
	"area_code" VARCHAR,
	"simplified" GEOMETRY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "groups" (
	"id" BIGINT,
	"legacyid" BIGINT,
	"nameshort" VARCHAR,
	"namefull" VARCHAR,
	"nameabbr" VARCHAR,
	"namealt" VARCHAR,
	"settings" LONGTEXT,
	"type" ENUM,
	"region" ENUM,
	"authorityid" BIGINT,
	"onyahoo" TINYINT,
	"onhere" TINYINT,
	"ontn" TINYINT,
	"showonyahoo" TINYINT,
	"lastyahoomembersync" TIMESTAMP,
	"lastyahoomessagesync" TIMESTAMP,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"poly" LONGTEXT,
	"polyofficial" LONGTEXT,
	"polyindex" GEOMETRY,
	"confirmkey" VARCHAR,
	"publish" TINYINT,
	"listable" TINYINT,
	"onmap" TINYINT,
	"licenserequired" TINYINT,
	"trial" TIMESTAMP,
	"licensed" DATE,
	"licenseduntil" DATE,
	"membercount" INT,
	"modcount" INT,
	"profile" BIGINT,
	"cover" BIGINT,
	"tagline" VARCHAR,
	"description" TEXT,
	"founded" DATE,
	"lasteventsroundup" TIMESTAMP,
	"lastvolunteeringroundup" TIMESTAMP,
	"external" VARCHAR,
	"contactmail" VARCHAR,
	"welcomemail" TEXT,
	"activitypercent" DECIMAL,
	"fundingtarget" INT,
	"lastmoderated" TIMESTAMP,
	"lastmodactive" TIMESTAMP,
	"activemodcount" INT,
	"backupownersactive" INT,
	"backupmodsactive" INT,
	"lastautoapprove" TIMESTAMP,
	"affiliationconfirmed" TIMESTAMP,
	"affiliationconfirmedby" BIGINT,
	"mentored" TINYINT,
	"seekingmods" TINYINT,
	"privategroup" TINYINT,
	"defaultlocation" BIGINT,
	"overridemoderation" ENUM,
	"altlat" DECIMAL,
	"altlng" DECIMAL,
	"welcomereview" DATE,
	"microvolunteering" TINYINT,
	"microvolunteeringoptions" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "groups_ibfk_3" FOREIGN KEY ("authorityid") REFERENCES "authorities" ("id"),
	 CONSTRAINT "groups_ibfk_2" FOREIGN KEY ("cover") REFERENCES "groups" ("id")
);

CREATE TABLE "vouchers" (
	"id" BIGINT,
	"voucher" VARCHAR,
	"created" TIMESTAMP,
	"used" TIMESTAMP,
	"groupid" BIGINT,
	"userid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "vouchers_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "vouchers_ibfk_2" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "volunteering_groups" (
	"volunteeringid" BIGINT,
	"groupid" BIGINT,
	"arrival" TIMESTAMP,
	 CONSTRAINT "volunteering_groups_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "volunteering_groups_ibfk_1" FOREIGN KEY ("volunteeringid") REFERENCES "volunteering" ("id")
);

CREATE TABLE "users_dashboard" (
	"id" BIGINT,
	"type" ENUM,
	"userid" BIGINT,
	"systemwide" TINYINT,
	"groupid" BIGINT,
	"start" VARCHAR,
	"timestamp" TIMESTAMP,
	"key" VARCHAR,
	"data" LONGTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_dashboard_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "users_dashboard_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_comments" (
	"id" BIGINT,
	"userid" BIGINT,
	"groupid" BIGINT,
	"byuserid" BIGINT,
	"date" TIMESTAMP,
	"reviewed" TIMESTAMP,
	"user1" MEDIUMTEXT,
	"user2" MEDIUMTEXT,
	"user3" MEDIUMTEXT,
	"user4" MEDIUMTEXT,
	"user5" MEDIUMTEXT,
	"user6" MEDIUMTEXT,
	"user7" MEDIUMTEXT,
	"user8" MEDIUMTEXT,
	"user9" MEDIUMTEXT,
	"user10" MEDIUMTEXT,
	"user11" MEDIUMTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_comments_ibfk_2" FOREIGN KEY ("byuserid") REFERENCES "users" ("id"),
	 CONSTRAINT "users_comments_ibfk_3" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "users_comments_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "users_banned" (
	"userid" BIGINT,
	"groupid" BIGINT,
	"date" TIMESTAMP,
	"byuser" BIGINT,
	 CONSTRAINT "users_banned_ibfk_3" FOREIGN KEY ("byuser") REFERENCES "users" ("id"),
	 CONSTRAINT "users_banned_ibfk_1" FOREIGN KEY ("userid") REFERENCES "users" ("id"),
	 CONSTRAINT "users_banned_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "stats_outcomes" (
	"id" BIGINT,
	"groupid" BIGINT,
	"count" INT,
	"date" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "stats_outcomes_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "stats" (
	"id" BIGINT,
	"date" DATE,
	"end" DATE,
	"groupid" BIGINT,
	"type" ENUM,
	"count" BIGINT,
	"breakdown" MEDIUMTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "_stats_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "shortlinks" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" ENUM,
	"groupid" BIGINT,
	"url" VARCHAR,
	"clicks" BIGINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "shortlinks_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "polls" (
	"id" BIGINT,
	"date" TIMESTAMP,
	"name" VARCHAR,
	"active" TINYINT,
	"groupid" BIGINT,
	"template" TEXT,
	"logintype" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "polls_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "polls_users" (
	"pollid" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	"shown" TINYINT,
	"response" TEXT,
	 CONSTRAINT "polls_users_ibfk_1" FOREIGN KEY ("pollid") REFERENCES "polls" ("id")
);

CREATE TABLE "plugin" (
	"id" BIGINT,
	"added" TIMESTAMP,
	"groupid" BIGINT,
	"data" MEDIUMTEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "plugin_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "newsletters" (
	"id" BIGINT,
	"groupid" BIGINT,
	"subject" VARCHAR,
	"textbody" TEXT,
	"created" TIMESTAMP,
	"completed" TIMESTAMP,
	"uptouser" BIGINT,
	"type" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "newsletters_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "newsletters_articles" (
	"id" BIGINT,
	"newsletterid" BIGINT,
	"type" ENUM,
	"position" INT,
	"html" TEXT,
	"photoid" BIGINT,
	"width" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "newsletters_articles_ibfk_1" FOREIGN KEY ("newsletterid") REFERENCES "newsletters" ("id")
);

CREATE TABLE "newsletters_images" (
	"id" BIGINT,
	"articleid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "newsletters_images_ibfk_1" FOREIGN KEY ("articleid") REFERENCES "newsletters_articles" ("id")
);

CREATE TABLE "newsfeed" (
	"id" BIGINT,
	"timestamp" TIMESTAMP,
	"added" TIMESTAMP,
	"type" ENUM,
	"userid" BIGINT,
	"imageid" BIGINT,
	"msgid" BIGINT,
	"replyto" BIGINT,
	"groupid" BIGINT,
	"eventid" BIGINT,
	"volunteeringid" BIGINT,
	"publicityid" BIGINT,
	"storyid" BIGINT,
	"message" TEXT,
	"position" POINT,
	"reviewrequired" TINYINT,
	"deleted" TIMESTAMP,
	"deletedby" BIGINT,
	"hidden" TIMESTAMP,
	"hiddenby" BIGINT,
	"closed" TINYINT,
	"html" TEXT,
	"pinned" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "newsfeed_ibfk_4" FOREIGN KEY ("eventid") REFERENCES "communityevents" ("id"),
	 CONSTRAINT "newsfeed_ibfk_3" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "newsfeed_ibfk_6" FOREIGN KEY ("publicityid") REFERENCES "groups_facebook_toshare" ("id"),
	 CONSTRAINT "newsfeed_ibfk_2" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "users_notifications" (
	"id" BIGINT,
	"fromuser" BIGINT,
	"touser" BIGINT,
	"timestamp" TIMESTAMP,
	"type" ENUM,
	"newsfeedid" BIGINT,
	"url" VARCHAR,
	"seen" TINYINT,
	"mailed" TINYINT,
	"title" VARCHAR,
	"text" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_notifications_ibfk_3" FOREIGN KEY ("touser") REFERENCES "users" ("id"),
	 CONSTRAINT "users_notifications_ibfk_1" FOREIGN KEY ("fromuser") REFERENCES "users" ("id"),
	 CONSTRAINT "users_notifications_ibfk_2" FOREIGN KEY ("newsfeedid") REFERENCES "newsfeed" ("id")
);

CREATE TABLE "newsfeed_unfollow" (
	"id" BIGINT,
	"userid" BIGINT,
	"newsfeedid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "newsfeed_unfollow_ibfk_2" FOREIGN KEY ("newsfeedid") REFERENCES "newsfeed" ("id")
);

CREATE TABLE "newsfeed_reports" (
	"newsfeedid" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	"reason" TEXT,
	 CONSTRAINT "newsfeed_reports_ibfk_1" FOREIGN KEY ("newsfeedid") REFERENCES "newsfeed" ("id")
);

CREATE TABLE "newsfeed_likes" (
	"newsfeedid" BIGINT,
	"userid" BIGINT,
	"timestamp" TIMESTAMP,
	 CONSTRAINT "newsfeed_likes_ibfk_3" FOREIGN KEY ("newsfeedid") REFERENCES "newsfeed" ("id")
);

CREATE TABLE "mod_bulkops_run" (
	"id" BIGINT,
	"bulkopid" BIGINT,
	"groupid" BIGINT,
	"runstarted" TIMESTAMP,
	"runfinished" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "mod_bulkops_run_ibfk_1" FOREIGN KEY ("bulkopid") REFERENCES "mod_bulkops" ("id"),
	 CONSTRAINT "mod_bulkops_run_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "messages_spatial" (
	"id" BIGINT,
	"msgid" BIGINT,
	"point" POINT,
	"successful" TINYINT,
	"groupid" BIGINT,
	"msgtype" ENUM,
	"arrival" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_spatial_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "messages_spatial_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "messages_postings" (
	"id" BIGINT,
	"msgid" BIGINT,
	"groupid" BIGINT,
	"date" TIMESTAMP,
	"repost" TINYINT,
	"autorepost" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_postings_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "messages_postings_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "messages_index" (
	"msgid" BIGINT,
	"wordid" BIGINT,
	"arrival" BIGINT,
	"groupid" BIGINT,
	 CONSTRAINT "_messages_index_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "_messages_index_ibfk_3" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "messages_history" (
	"id" BIGINT,
	"msgid" BIGINT,
	"arrival" TIMESTAMP,
	"source" ENUM,
	"fromip" VARCHAR,
	"fromhost" VARCHAR,
	"fromuser" BIGINT,
	"envelopefrom" VARCHAR,
	"fromname" VARCHAR,
	"fromaddr" VARCHAR,
	"envelopeto" VARCHAR,
	"groupid" BIGINT,
	"subject" VARCHAR,
	"prunedsubject" VARCHAR,
	"messageid" VARCHAR,
	"repost" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "_messages_history_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "messages_groups" (
	"msgid" BIGINT,
	"groupid" BIGINT,
	"collection" ENUM,
	"arrival" TIMESTAMP,
	"autoreposts" TINYINT,
	"lastautopostwarning" TIMESTAMP,
	"lastchaseup" TIMESTAMP,
	"deleted" TINYINT,
	"senttoyahoo" TINYINT,
	"yahoopendingid" VARCHAR,
	"yahooapprovedid" VARCHAR,
	"yahooapprove" VARCHAR,
	"yahooreject" VARCHAR,
	"approvedby" BIGINT,
	"approvedat" TIMESTAMP,
	"rejectedat" TIMESTAMP,
	"msgtype" ENUM,
	 CONSTRAINT "_messages_groups_ibfk_1" FOREIGN KEY ("msgid") REFERENCES "messages" ("id"),
	 CONSTRAINT "_messages_groups_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "messages_drafts" (
	"id" BIGINT,
	"msgid" BIGINT,
	"groupid" BIGINT,
	"timestamp" TIMESTAMP,
	"session" VARCHAR,
	"userid" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_drafts_ibfk_3" FOREIGN KEY ("groupid") REFERENCES "groups" ("id"),
	 CONSTRAINT "messages_drafts_ibfk_2" FOREIGN KEY ("msgid") REFERENCES "messages" ("id")
);

CREATE TABLE "memberships_yahoo_dump" (
	"id" BIGINT,
	"groupid" BIGINT,
	"members" LONGTEXT,
	"lastupdated" TIMESTAMP,
	"lastprocessed" TIMESTAMP,
	"synctime" TIMESTAMP,
	"backgroundok" TINYINT,
	"needsprocessing" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "memberships_yahoo_dump_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "memberships_history" (
	"id" BIGINT,
	"userid" BIGINT,
	"groupid" BIGINT,
	"collection" ENUM,
	"added" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "memberships_history_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "memberships" (
	"id" BIGINT,
	"userid" BIGINT,
	"groupid" BIGINT,
	"role" ENUM,
	"collection" ENUM,
	"configid" BIGINT,
	"added" TIMESTAMP,
	"settings" MEDIUMTEXT,
	"syncdelete" TINYINT,
	"heldby" BIGINT,
	"emailfrequency" INT,
	"eventsallowed" TINYINT,
	"volunteeringallowed" BIGINT,
	"ourpostingstatus" ENUM,
	"reviewrequestedat" TIMESTAMP,
	"reviewreason" VARCHAR,
	"reviewedat" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "memberships_ibfk_2" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "memberships_yahoo" (
	"id" BIGINT,
	"membershipid" BIGINT,
	"role" ENUM,
	"collection" ENUM,
	"added" TIMESTAMP,
	"emailid" BIGINT,
	"yahooalias" VARCHAR,
	"yahoopostingstatus" ENUM,
	"yahoodeliverytype" ENUM,
	"syncdelete" TINYINT,
	"yahooapprove" VARCHAR,
	"yahooreject" VARCHAR,
	"joincomment" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "_memberships_yahoo_ibfk_1" FOREIGN KEY ("membershipid") REFERENCES "memberships" ("id")
);

CREATE TABLE "locations_excluded" (
	"id" BIGINT,
	"locationid" BIGINT,
	"groupid" BIGINT,
	"userid" BIGINT,
	"date" TIMESTAMP,
	"norfolk" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "_locations_excluded_ibfk_1" FOREIGN KEY ("locationid") REFERENCES "locations" ("id"),
	 CONSTRAINT "locations_excluded_ibfk_4" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_twitter" (
	"groupid" BIGINT,
	"name" VARCHAR,
	"token" TEXT,
	"secret" TEXT,
	"authdate" TIMESTAMP,
	"msgid" BIGINT,
	"msgarrival" TIMESTAMP,
	"eventid" BIGINT,
	"valid" TINYINT,
	"locked" TINYINT,
	"lasterror" TEXT,
	"lasterrortime" TIMESTAMP,
	 CONSTRAINT "groups_twitter_ibfk_3" FOREIGN KEY ("eventid") REFERENCES "communityevents" ("id"),
	 CONSTRAINT "groups_twitter_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_sponsorship" (
	"id" BIGINT,
	"groupid" BIGINT,
	"name" VARCHAR,
	"linkurl" VARCHAR,
	"startdate" DATE,
	"enddate" DATE,
	"contactname" VARCHAR,
	"contactemail" VARCHAR,
	"amount" INT,
	"notes" TEXT,
	"imageurl" VARCHAR,
	"visible" TINYINT,
	"tagline" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "groups_sponsorship_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_images" (
	"id" BIGINT,
	"groupid" BIGINT,
	"contenttype" VARCHAR,
	"archived" TINYINT,
	"data" LONGBLOB,
	"identification" MEDIUMTEXT,
	"hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "groups_images_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_facebook" (
	"uid" BIGINT,
	"groupid" BIGINT,
	"name" VARCHAR,
	"type" ENUM,
	"id" VARCHAR,
	"token" TEXT,
	"authdate" TIMESTAMP,
	"msgid" BIGINT,
	"msgarrival" TIMESTAMP,
	"eventid" BIGINT,
	"valid" TINYINT,
	"lasterror" TEXT,
	"lasterrortime" TIMESTAMP,
	"sharefrom" VARCHAR,
	"lastupdated" TIMESTAMP,
	"postablecount" INT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "groups_facebook_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_facebook_shares" (
	"uid" BIGINT,
	"groupid" BIGINT,
	"postid" VARCHAR,
	"date" TIMESTAMP,
	"status" ENUM,
	 CONSTRAINT "groups_facebook_shares_ibfk_2" FOREIGN KEY ("uid") REFERENCES "groups_facebook" ("uid"),
	 CONSTRAINT "groups_facebook_shares_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "groups_digests" (
	"id" BIGINT,
	"groupid" BIGINT,
	"frequency" INT,
	"msgid" BIGINT,
	"msgdate" TIMESTAMP,
	"started" TIMESTAMP,
	"ended" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "groups_digests_ibfk_1" FOREIGN KEY ("groupid") REFERENCES "groups" ("id")
);

CREATE TABLE "alerts" (
	"id" BIGINT,
	"createdby" BIGINT,
	"groupid" BIGINT,
	"from" VARCHAR,
	"to" ENUM,
	"created" TIMESTAMP,
	"groupprogress" BIGINT,
	"complete" TIMESTAMP,
	"subject" TEXT,
	"text" TEXT,
	"html" TEXT,
	"askclick" TINYINT,
	"tryhard" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "alerts_tracking" (
	"id" BIGINT,
	"alertid" BIGINT,
	"groupid" BIGINT,
	"userid" BIGINT,
	"emailid" BIGINT,
	"type" ENUM,
	"sent" TIMESTAMP,
	"responded" TIMESTAMP,
	"response" ENUM,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "alerts_tracking_ibfk_1" FOREIGN KEY ("alertid") REFERENCES "alerts" ("id")
);

CREATE TABLE "admins" (
	"id" BIGINT,
	"createdby" BIGINT,
	"groupid" BIGINT,
	"created" TIMESTAMP,
	"editedby" BIGINT,
	"editedat" TIMESTAMP,
	"complete" TIMESTAMP,
	"subject" TEXT,
	"text" TEXT,
	"pending" TINYINT,
	"parentid" BIGINT,
	"heldby" BIGINT,
	"heldat" TIMESTAMP,
	"activeonly" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admins_users" (
	"id" BIGINT,
	"userid" BIGINT,
	"adminid" BIGINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "admins_users_ibfk_2" FOREIGN KEY ("adminid") REFERENCES "admins" ("id")
);

CREATE TABLE "abtest" (
	"id" BIGINT,
	"uid" VARCHAR,
	"variant" VARCHAR,
	"shown" BIGINT,
	"action" BIGINT,
	"rate" DECIMAL,
	"suggest" TINYINT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);
