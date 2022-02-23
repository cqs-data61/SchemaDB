DROP DATABASE IF EXISTS "schema910";
CREATE DATABASE "schema910";
USE "schema910";
CREATE TABLE "texturefiledata" (
	"filedataid" INT,
	"materialresourcesid" INT
);

CREATE TABLE "soundkitname" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "soundkitentry" (
	"id" INT,
	"entry" INT
);

CREATE TABLE "scene_template" (
	"sceneid" INT,
	"flags" INT,
	"scriptpackageid" INT
);

CREATE TABLE "quest_visual_effect" (
	"id" MEDIUMINT,
	"index" TINYINT,
	"visualeffect" MEDIUMINT,
	"verifiedbuild" INT
);

CREATE TABLE "quest_template" (
	"id" INT,
	"questtype" TINYINT,
	"questlevel" INT,
	"scalingfactiongroup" INT,
	"maxscalinglevel" INT,
	"questpackageid" INT,
	"minlevel" INT,
	"questsortid" SMALLINT,
	"questinfoid" SMALLINT,
	"suggestedgroupnum" TINYINT,
	"rewardnextquest" INT,
	"rewardxpdifficulty" INT,
	"rewardxpmultiplier" FLOAT,
	"rewardmoney" INT,
	"rewardmoneydifficulty" INT,
	"rewardmoneymultiplier" FLOAT,
	"rewardbonusmoney" INT,
	"rewarddisplayspell1" INT,
	"rewarddisplayspell2" INT,
	"rewarddisplayspell3" INT,
	"rewardspell" INT,
	"rewardhonor" INT,
	"rewardkillhonor" INT,
	"startitem" INT,
	"rewardartifactxpdifficulty" INT,
	"rewardartifactxpmultiplier" FLOAT,
	"rewardartifactcategoryid" INT,
	"flags" INT,
	"flagsex" INT,
	"flagsex2" INT,
	"rewarditem1" INT,
	"rewardamount1" INT,
	"rewarditem2" INT,
	"rewardamount2" INT,
	"rewarditem3" INT,
	"rewardamount3" INT,
	"rewarditem4" INT,
	"rewardamount4" INT,
	"itemdrop1" INT,
	"itemdropquantity1" INT,
	"itemdrop2" INT,
	"itemdropquantity2" INT,
	"itemdrop3" INT,
	"itemdropquantity3" INT,
	"itemdrop4" INT,
	"itemdropquantity4" INT,
	"rewardchoiceitemid1" INT,
	"rewardchoiceitemquantity1" INT,
	"rewardchoiceitemdisplayid1" INT,
	"rewardchoiceitemid2" INT,
	"rewardchoiceitemquantity2" INT,
	"rewardchoiceitemdisplayid2" INT,
	"rewardchoiceitemid3" INT,
	"rewardchoiceitemquantity3" INT,
	"rewardchoiceitemdisplayid3" INT,
	"rewardchoiceitemid4" INT,
	"rewardchoiceitemquantity4" INT,
	"rewardchoiceitemdisplayid4" INT,
	"rewardchoiceitemid5" INT,
	"rewardchoiceitemquantity5" INT,
	"rewardchoiceitemdisplayid5" INT,
	"rewardchoiceitemid6" INT,
	"rewardchoiceitemquantity6" INT,
	"rewardchoiceitemdisplayid6" INT,
	"poicontinent" INT,
	"poix" FLOAT,
	"poiy" FLOAT,
	"poipriority" INT,
	"rewardtitle" INT,
	"rewardarenapoints" INT,
	"rewardskilllineid" INT,
	"rewardnumskillups" INT,
	"portraitgiver" INT,
	"portraitgivermount" INT,
	"portraitturnin" INT,
	"rewardfactionid1" INT,
	"rewardfactionvalue1" INT,
	"rewardfactionoverride1" INT,
	"rewardfactioncapin1" INT,
	"rewardfactionid2" INT,
	"rewardfactionvalue2" INT,
	"rewardfactionoverride2" INT,
	"rewardfactioncapin2" INT,
	"rewardfactionid3" INT,
	"rewardfactionvalue3" INT,
	"rewardfactionoverride3" INT,
	"rewardfactioncapin3" INT,
	"rewardfactionid4" INT,
	"rewardfactionvalue4" INT,
	"rewardfactionoverride4" INT,
	"rewardfactioncapin4" INT,
	"rewardfactionid5" INT,
	"rewardfactionvalue5" INT,
	"rewardfactionoverride5" INT,
	"rewardfactioncapin5" INT,
	"rewardfactionflags" INT,
	"rewardcurrencyid1" INT,
	"rewardcurrencyqty1" INT,
	"rewardcurrencyid2" INT,
	"rewardcurrencyqty2" INT,
	"rewardcurrencyid3" INT,
	"rewardcurrencyqty3" INT,
	"rewardcurrencyid4" INT,
	"rewardcurrencyqty4" INT,
	"acceptedsoundkitid" INT,
	"completesoundkitid" INT,
	"areagroupid" INT,
	"timeallowed" INT,
	"allowableraces" BIGINT,
	"treasurepickerid" INT,
	"expansion" INT,
	"managedworldstateid" INT,
	"questsessionbonus" INT,
	"logtitle" TEXT,
	"logdescription" TEXT,
	"questdescription" TEXT,
	"areadescription" TEXT,
	"portraitgivertext" TEXT,
	"portraitgivername" TEXT,
	"portraitturnintext" TEXT,
	"portraitturninname" TEXT,
	"questcompletionlog" TEXT,
	"verifiedbuild" INT
);

CREATE TABLE "quest_poi_points" (
	"questid" INT,
	"idx1" INT,
	"idx2" INT,
	"x" INT,
	"y" INT,
	"verifiedbuild" INT
);

CREATE TABLE "quest_poi" (
	"questid" INT,
	"blobindex" INT,
	"idx1" INT,
	"objectiveindex" INT,
	"questobjectiveid" INT,
	"questobjectid" INT,
	"mapid" INT,
	"uimapid" INT,
	"priority" INT,
	"flags" INT,
	"worldeffectid" INT,
	"playerconditionid" INT,
	"spawntrackingid" INT,
	"alwaysallowmergingblobs" TINYINT,
	"verifiedbuild" INT
);

CREATE TABLE "quest_objectives" (
	"id" MEDIUMINT,
	"questid" MEDIUMINT,
	"type" TINYINT,
	"order" TINYINT,
	"storageindex" TINYINT,
	"objectid" INT,
	"amount" INT,
	"flags" INT,
	"flags2" INT,
	"progressbarweight" FLOAT,
	"description" TEXT,
	"verifiedbuild" INT
);

CREATE TABLE "quests" (
	"id" INT,
	"name" VARCHAR,
	"firstseenbuild" INT,
	"lastupdatedbuild" INT,
	"json" TEXT
);

CREATE TABLE "moviefiledata" (
	"id" INT
);

CREATE TABLE "modelfiledata" (
	"filedataid" INT,
	"modelresourcesid" INT
);

CREATE TABLE "manifestmp3" (
	"id" INT
);

CREATE TABLE "manifestinterfacedata" (
	"filedataid" INT,
	"path" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "itemdisplayinfo" (
	"id" INT,
	"modelresourcesid0" INT,
	"modelresourcesid1" INT,
	"modelmaterialresourcesid0" INT,
	"modelmaterialresourcesid1" INT
);

CREATE TABLE "gameobject_template" (
	"entry" MEDIUMINT,
	"type" TINYINT,
	"displayid" MEDIUMINT,
	"name" VARCHAR,
	"iconname" VARCHAR,
	"castbarcaption" VARCHAR,
	"unk1" VARCHAR,
	"size" FLOAT,
	"data0" INT,
	"data1" INT,
	"data2" INT,
	"data3" INT,
	"data4" INT,
	"data5" INT,
	"data6" INT,
	"data7" INT,
	"data8" INT,
	"data9" INT,
	"data10" INT,
	"data11" INT,
	"data12" INT,
	"data13" INT,
	"data14" INT,
	"data15" INT,
	"data16" INT,
	"data17" INT,
	"data18" INT,
	"data19" INT,
	"data20" INT,
	"data21" INT,
	"data22" INT,
	"data23" INT,
	"data24" INT,
	"data25" INT,
	"data26" INT,
	"data27" INT,
	"data28" INT,
	"data29" INT,
	"data30" INT,
	"data31" INT,
	"data32" INT,
	"data33" INT,
	"requiredlevel" INT,
	"ainame" CHAR,
	"scriptname" VARCHAR,
	"verifiedbuild" INT
);

CREATE TABLE "file_build" (
	"file_id" INT,
	"build_id" INT
);

CREATE TABLE "files" (
	"id" INT
);

CREATE TABLE "creature_template_model" (
	"creatureid" INT,
	"idx" INT,
	"creaturedisplayid" INT,
	"displayscale" FLOAT,
	"probability" FLOAT,
	"verifiedbuild" INT
);

CREATE TABLE "creature_template" (
	"entry" MEDIUMINT,
	"killcredit1" INT,
	"killcredit2" INT,
	"name" TEXT,
	"femalename" TEXT,
	"subname" TEXT,
	"titlealt" TEXT,
	"iconname" VARCHAR,
	"healthscalingexpansion" MEDIUMINT,
	"requiredexpansion" MEDIUMINT,
	"vignetteid" MEDIUMINT,
	"faction" SMALLINT,
	"rank" TINYINT,
	"unit_class" TINYINT,
	"family" INT,
	"type" TINYINT,
	"type_flags" INT,
	"type_flags2" INT,
	"healthmodifier" FLOAT,
	"manamodifier" FLOAT,
	"racialleader" TINYINT,
	"movementid" INT,
	"faderegionradius" FLOAT,
	"widgetsetid" INT,
	"widgetsetunitconditionid" INT,
	"verifiedbuild" INT
);

CREATE TABLE "creature_questitem" (
	"creatureentry" INT,
	"idx" INT,
	"itemid" INT,
	"verifiedbuild" INT
);

CREATE TABLE "creaturesounddata" (
	"id" INT,
	"soundexertionid" INT,
	"soundexertioncriticalid" INT,
	"soundinjuryid" INT,
	"soundinjurycriticalid" INT,
	"soundinjurycrushingblowid" INT,
	"sounddeathid" INT,
	"soundstunid" INT,
	"soundstandid" INT,
	"soundfootstepid" INT,
	"soundaggroid" INT,
	"soundwingflapid" INT,
	"soundwingglideid" INT,
	"soundalertid" INT,
	"soundjumpstartid" INT,
	"soundjumpendid" INT,
	"soundpetattackid" INT,
	"soundpetorderid" INT,
	"soundpetdismissid" INT,
	"loopsoundid" INT,
	"birthsoundid" INT,
	"spellcastdirectedsoundid" INT,
	"submergesoundid" INT,
	"submergedsoundid" INT,
	"windupsoundid" INT,
	"windupcriticalsoundid" INT,
	"chargesoundid" INT,
	"chargecriticalsoundid" INT,
	"battleshoutsoundid" INT,
	"battleshoutcriticalsoundid" INT,
	"tauntsoundid" INT,
	"creaturesounddataidpet" INT,
	"fidgetdelaysecondsmin" INT,
	"fidgetdelaysecondsmax" INT,
	"creatureimpacttype" INT,
	"npcsoundid" INT,
	"soundfidget[0]" INT,
	"soundfidget[1]" INT,
	"soundfidget[2]" INT,
	"soundfidget[3]" INT,
	"soundfidget[4]" INT,
	"customattack[0]" INT,
	"customattack[1]" INT,
	"customattack[2]" INT,
	"customattack[3]" INT
);

CREATE TABLE "creatures" (
	"id" INT,
	"name" VARCHAR,
	"firstseenbuild" INT,
	"lastupdatedbuild" INT,
	"json" TEXT
);

CREATE TABLE "creaturemodeldata" (
	"id" INT,
	"filedataid" INT,
	"soundid" INT
);

CREATE TABLE "creaturedisplayinfo" (
	"id" INT,
	"modelid" INT,
	"portraittexturefiledataid" INT,
	"texturevariationfiledataid[0]" INT,
	"texturevariationfiledataid[1]" INT,
	"texturevariationfiledataid[2]" INT
);

CREATE TABLE "componentmodelfiledata" (
	"id" INT,
	"genderindex" INT,
	"classid" INT,
	"raceid" INT,
	"positionindex" INT
);

CREATE TABLE "chrraces" (
	"clientprefix" VARCHAR,
	"clientfilestring" VARCHAR,
	"name_lang" VARCHAR,
	"name_female_lang" VARCHAR,
	"name_lowercase_lang" VARCHAR,
	"name_female_lowercase_lang" VARCHAR,
	"id" INT
);

CREATE TABLE "change_bag" (
	"id" INT
);

CREATE TABLE "build_bags" (
	"build_id" INT,
	"bag_id" INT
);

CREATE TABLE "builds" (
	"id" INT,
	"buildconfig" VARCHAR,
	"cdnconfig" VARCHAR
);

CREATE TABLE "broadcast_text" (
	"text" TEXT,
	"text1" TEXT,
	"id" INT,
	"languageid" TINYINT,
	"conditionid" INT,
	"emotesid" SMALLINT,
	"flags" TINYINT,
	"chatbubbledurationms" INT,
	"soundentriesid1" INT,
	"soundentriesid2" INT,
	"emoteid1" SMALLINT,
	"emoteid2" SMALLINT,
	"emoteid3" SMALLINT,
	"emotedelay1" SMALLINT,
	"emotedelay2" SMALLINT,
	"emotedelay3" SMALLINT,
	"verifiedbuild" INT
);

CREATE TABLE "broadcasttext" (
	"id" INT,
	"text" TEXT,
	"text1" TEXT,
	"soundkit0" INT,
	"soundkit1" INT
);

CREATE TABLE "bag_files" (
	"file_id" INT,
	"bag_id" INT
);

CREATE TABLE "wow_versions" (
	"id" INT,
	"buildconfig" VARCHAR,
	"cdnconfig" VARCHAR,
	"patchconfig" VARCHAR,
	"product" VARCHAR,
	"complete" TINYINT
);

CREATE TABLE "wow_tactkey" (
	"id" INT,
	"keyname" VARCHAR,
	"keybytes" VARCHAR,
	"added" VARCHAR,
	"description" TEXT
);

CREATE TABLE "wow_rootfiles_suggestions" (
	"id" INT,
	"filedataid" INT,
	"filename" VARCHAR,
	"userid" INT,
	"submitted" DATETIME,
	"status" ENUM
);

CREATE TABLE "wow_rootfiles_sizes" (
	"contenthash" CHAR,
	"size" INT
);

CREATE TABLE "wow_rootfiles_links" (
	"parent" INT,
	"child" INT,
	"type" ENUM
);

CREATE TABLE "wow_rootfiles_count" (
	"root_cdn" VARCHAR,
	"count" INT
);

CREATE TABLE "wow_rootfiles_comments" (
	"id" INT,
	"filedataid" INT,
	"comment" TEXT,
	"lasteditedby" INT,
	"lastedited" TIMESTAMP
);

CREATE TABLE "wow_rootfiles_chashes" (
	"filedataid" INT,
	"root_cdn" CHAR,
	"contenthash" CHAR
);

CREATE TABLE "wow_rootfiles_builds_erorus" (
	"build" MEDIUMINT,
	"files" MEDIUMBLOB
);

CREATE TABLE "wow_rootfiles" (
	"id" INT,
	"lookup" VARCHAR,
	"filename" VARCHAR,
	"verified" TINYINT,
	"type" VARCHAR,
	"firstseen" VARCHAR
);

CREATE TABLE "wow_realms" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" TINYINT,
	"population" TINYINT,
	"version" VARCHAR,
	"groupname" VARCHAR,
	"status" TINYINT,
	"lastseen" TIMESTAMP
);

CREATE TABLE "wow_patchconfig" (
	"hash" VARCHAR,
	"patch" VARCHAR,
	"patch-entry" TEXT,
	"patch-size" INT,
	"complete" TINYINT
);

CREATE TABLE "wow_namelog" (
	"id" INT,
	"userid" INT,
	"userip" VARCHAR,
	"numadded" INT,
	"submitted" TIMESTAMP,
	"credited" TINYINT
);

CREATE TABLE "wow_maps_versions" (
	"map_id" INT,
	"versionid" INT,
	"md5" TEXT,
	"tilemd5" VARCHAR
);

CREATE TABLE "wow_maps_maps" (
	"id" INT,
	"name" TEXT,
	"internal" TEXT,
	"internal_mapid" INT,
	"wdtfiledataid" INT,
	"firstseen" INT
);

CREATE TABLE "wow_maps_config" (
	"versionid" INT,
	"mapid" INT,
	"offsetx" INT,
	"offsety" INT,
	"resx" INT,
	"resy" INT,
	"zoom" INT,
	"minzoom" INT,
	"maxzoom" INT,
	"bgcolor" VARCHAR
);

CREATE TABLE "wow_hotfixlogs" (
	"id" INT,
	"pushid" INT,
	"name" VARCHAR,
	"description" TEXT,
	"status" ENUM,
	"contributedby" INT
);

CREATE TABLE "wow_hotfixes_parsed" (
	"id" INT,
	"md5" VARCHAR
);

CREATE TABLE "wow_hotfixes" (
	"pushid" INT,
	"recordid" INT,
	"tablename" VARCHAR,
	"isvalid" TINYINT,
	"build" INT,
	"firstdetected" TIMESTAMP,
	"cachename" VARCHAR
);

CREATE TABLE "wow_encrypted" (
	"filedataid" INT,
	"keyname" VARCHAR,
	"active" TINYINT
);

CREATE TABLE "wow_dbc_table_versions" (
	"id" INT,
	"versionid" INT,
	"tableid" INT,
	"contenthash" VARCHAR,
	"layouthash" VARCHAR,
	"hasdefinition" TINYINT
);

CREATE TABLE "wow_dbc_tables" (
	"id" INT,
	"displayname" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "wow_communityfiles" (
	"id" INT,
	"filename" VARCHAR
);

CREATE TABLE "wow_cdnconfig" (
	"id" INT,
	"hash" VARCHAR,
	"archives" LONGTEXT,
	"archivecount" INT,
	"archivecomplete" INT,
	"indexcomplete" INT,
	"patcharchives" LONGTEXT,
	"patcharchivecount" INT,
	"patcharchivecomplete" INT,
	"patchindexcomplete" INT,
	"builds" LONGTEXT,
	"complete" TINYINT
);

CREATE TABLE "wow_cachedentries" (
	"recordid" INT,
	"tablename" VARCHAR,
	"md5" VARCHAR,
	"build" INT,
	"cachename" VARCHAR,
	"timestamp" TIMESTAMP
);

CREATE TABLE "wow_builds" (
	"id" INT,
	"version" VARCHAR,
	"expansion" TINYINT,
	"major" TINYINT,
	"minor" TINYINT,
	"build" INT,
	"branch" VARCHAR
);

CREATE TABLE "wow_buildconfig" (
	"id" INT,
	"hash" VARCHAR,
	"description" VARCHAR,
	"product" VARCHAR,
	"encoding" VARCHAR,
	"encoding_cdn" VARCHAR,
	"root" VARCHAR,
	"root_cdn" VARCHAR,
	"install" VARCHAR,
	"install_cdn" VARCHAR,
	"download" VARCHAR,
	"download_cdn" VARCHAR,
	"size" VARCHAR,
	"size_cdn" VARCHAR,
	"unarchived" LONGTEXT,
	"unarchivedcount" INT,
	"unarchivedcomplete" INT,
	"patchconfig" VARCHAR,
	"patch" VARCHAR,
	"processed" TINYINT,
	"complete" TINYINT,
	"builton" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" TEXT,
	"rank" INT,
	"recoverytoken" VARCHAR,
	"tokengeneratedon" TIMESTAMP,
	"apitoken" VARCHAR,
	"ip" TEXT
);

CREATE TABLE "tutorials" (
	"id" INT,
	"name" VARCHAR,
	"category" VARCHAR,
	"content" LONGTEXT
);

CREATE TABLE "ngdp_urls" (
	"id" INT,
	"name" VARCHAR,
	"type" ENUM,
	"url" VARCHAR,
	"lastseqn" INT,
	"enabled" TINYINT
);

CREATE TABLE "ngdp_products" (
	"id" INT,
	"name" TEXT,
	"program" VARCHAR,
	"cdndir" VARCHAR,
	"avatar" VARCHAR
);

CREATE TABLE "ngdp_history" (
	"id" INT,
	"url_id" INT,
	"event" ENUM,
	"oldvalue" TEXT,
	"newvalue" TEXT,
	"timestamp" TIMESTAMP
);

CREATE TABLE "missingfiles" (
	"id" INT,
	"url" VARCHAR,
	"triedcdn" TINYINT,
	"type" VARCHAR
);

CREATE TABLE "catalogs_versions" (
	"id" INT,
	"buildconfig" VARCHAR,
	"cdnconfig" VARCHAR,
	"product" VARCHAR,
	"complete" TINYINT
);

CREATE TABLE "catalogs_cdnconfig" (
	"id" INT,
	"hash" VARCHAR,
	"archives" LONGTEXT,
	"archivecount" INT,
	"archivecomplete" INT,
	"indexcomplete" INT,
	"patcharchives" LONGTEXT,
	"patcharchivecount" INT,
	"patcharchivecomplete" INT,
	"patchindexcomplete" INT,
	"builds" LONGTEXT,
	"complete" TINYINT
);

CREATE TABLE "catalogs_buildconfig" (
	"id" INT,
	"hash" VARCHAR,
	"description" INT,
	"product" VARCHAR,
	"encoding" VARCHAR,
	"encoding_cdn" VARCHAR,
	"root" VARCHAR,
	"root_cdn" VARCHAR,
	"install" VARCHAR,
	"install_cdn" VARCHAR,
	"download" VARCHAR,
	"download_cdn" VARCHAR,
	"size" VARCHAR,
	"size_cdn" VARCHAR,
	"unarchived" LONGTEXT,
	"unarchivedcount" INT,
	"unarchivedcomplete" INT,
	"complete" TINYINT,
	"builton" TIMESTAMP
);

CREATE TABLE "agent_versions" (
	"id" INT,
	"buildconfig" VARCHAR,
	"cdnconfig" VARCHAR,
	"patchconfig" VARCHAR,
	"product" VARCHAR,
	"complete" TINYINT
);

CREATE TABLE "agent_cdnconfig" (
	"id" INT,
	"hash" VARCHAR,
	"archives" LONGTEXT,
	"archivecount" INT,
	"archivecomplete" INT,
	"indexcomplete" INT,
	"patcharchives" LONGTEXT,
	"patcharchivecount" INT,
	"patcharchivecomplete" INT,
	"patchindexcomplete" INT,
	"builds" LONGTEXT,
	"complete" TINYINT
);

CREATE TABLE "agent_buildconfig" (
	"id" INT,
	"hash" VARCHAR,
	"description" VARCHAR,
	"product" VARCHAR,
	"encoding" VARCHAR,
	"encoding_cdn" VARCHAR,
	"root" VARCHAR,
	"root_cdn" VARCHAR,
	"install" VARCHAR,
	"install_cdn" VARCHAR,
	"download" VARCHAR,
	"download_cdn" VARCHAR,
	"size" VARCHAR,
	"size_cdn" VARCHAR,
	"unarchived" LONGTEXT,
	"unarchivedcount" INT,
	"unarchivedcomplete" INT,
	"patchconfig" VARCHAR,
	"patch" VARCHAR,
	"processed" TINYINT,
	"complete" TINYINT,
	"builton" TIMESTAMP
);
