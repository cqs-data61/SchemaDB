DROP DATABASE IF EXISTS "schema1891";
CREATE DATABASE "schema1891";
USE "schema1891";
CREATE TABLE "storage" (
	"counter" INT,
	"id" VARCHAR,
	"marketid" VARCHAR,
	"marketaddress" VARCHAR,
	"quantity" VARCHAR,
	"unitofmeasure" VARCHAR,
	"storagetimestamp" VARCHAR,
	"storagecapturetime" VARCHAR,
	"url" VARCHAR,
	"hashid" VARCHAR,
	"storagedescription" VARCHAR,
	"geolocation" VARCHAR,
	"supplierproduce" VARCHAR,
	 PRIMARY KEY ("counter")
);

CREATE TABLE "metatable" (
	"produceid" VARCHAR,
	"farmer" VARCHAR,
	"farm" VARCHAR,
	"produce" VARCHAR,
	"unit" VARCHAR,
	"farmbio" LONGTEXT,
	"website" TEXT
);

CREATE TABLE "market_subscription" (
	"pk" INT,
	"market_id" VARCHAR,
	"firstname" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "harvest" (
	"counter" INT,
	"id" VARCHAR,
	"supplierid" VARCHAR,
	"supplieraddress" VARCHAR,
	"productid" VARCHAR,
	"photohash" VARCHAR,
	"harvesttimestamp" VARCHAR,
	"harvestcapturetime" VARCHAR,
	"harvestdescription" VARCHAR,
	"geolocation" VARCHAR,
	"supplierproduce" VARCHAR,
	 PRIMARY KEY ("counter")
);

CREATE TABLE "foodprint_weeklyview" (
	"pk" INT,
	"logid" VARCHAR,
	"harvest_logid" VARCHAR,
	"harvest_suppliershortcode" VARCHAR,
	"harvest_suppliername" VARCHAR,
	"harvest_farmername" VARCHAR,
	"harvest_supplieraddress" VARCHAR,
	"harvest_producename" VARCHAR,
	"harvest_photohash" LONGBLOB,
	"harvest_timestamp" VARCHAR,
	"harvest_capturetime" VARCHAR,
	"harvest_description" VARCHAR,
	"harvest_geolocation" VARCHAR,
	"harvest_quantity" VARCHAR,
	"harvest_unitofmeasure" VARCHAR,
	"harvest_description_json" VARCHAR,
	"harvest_blockchainhashid" VARCHAR,
	"harvest_blockchainhashdata" VARCHAR,
	"supplierproduce" VARCHAR,
	"storage_logid" VARCHAR,
	"market_shortcode" VARCHAR,
	"market_name" VARCHAR,
	"market_address" VARCHAR,
	"market_quantity" VARCHAR,
	"market_unitofmeasure" VARCHAR,
	"market_storagetimestamp" VARCHAR,
	"market_storagecapturetime" VARCHAR,
	"market_url" VARCHAR,
	"storage_blockchainhashid" VARCHAR,
	"storage_blockchainhashdata" VARCHAR,
	"storage_description" VARCHAR,
	"storage_bool_added_to_blockchain" VARCHAR,
	"storage_added_to_blockchain_date" VARCHAR,
	"storage_added_to_blockchain_by" VARCHAR,
	"storage_blockchain_uuid" VARCHAR,
	"harvest_bool_added_to_blockchain" VARCHAR,
	"harvest_added_to_blockchain_date" VARCHAR,
	"harvest_added_to_blockchain_by" VARCHAR,
	"harvest_blockchain_uuid" VARCHAR,
	"harvest_user" VARCHAR,
	"storage_user" VARCHAR,
	"logdatetime" DATETIME,
	"lastmodifieddatetime" DATETIME,
	"year_established" VARCHAR,
	"covid19_response" VARCHAR,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_usergroups" (
	"pk" INT,
	"logid" VARCHAR,
	"groupname" VARCHAR,
	"grouplabel" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_subscription" (
	"pk" INT,
	"firstname" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_storage" (
	"pk" INT,
	"harvest_logid" VARCHAR,
	"harvest_suppliershortcode" VARCHAR,
	"supplierproduce" VARCHAR,
	"storage_logid" VARCHAR,
	"market_shortcode" VARCHAR,
	"market_name" VARCHAR,
	"market_address" VARCHAR,
	"market_quantity" VARCHAR,
	"market_unitofmeasure" VARCHAR,
	"market_storagetimestamp" DATETIME,
	"market_storagecapturetime" DATETIME,
	"market_url" VARCHAR,
	"storage_blockchainhashid" VARCHAR,
	"storage_blockchainhashdata" VARCHAR,
	"storage_description" VARCHAR,
	"storage_bool_added_to_blockchain" VARCHAR,
	"storage_added_to_blockchain_date" DATETIME,
	"storage_added_to_blockchain_by" VARCHAR,
	"storage_blockchain_uuid" VARCHAR,
	"storage_user" VARCHAR,
	"logdatetime" DATETIME,
	"lastmodifieddatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_smartcontract" (
	"pk" INT,
	"contract_name" VARCHAR,
	"contract_description" VARCHAR,
	"contract_address" VARCHAR,
	"dlt_type" VARCHAR,
	"dlt_network" VARCHAR,
	"deploydatetime" DATETIME,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_qrcount" (
	"pk" INT,
	"logid" VARCHAR,
	"qrid" VARCHAR,
	"qrurl" VARCHAR,
	"marketid" VARCHAR,
	"request_host" VARCHAR,
	"request_origin" VARCHAR,
	"request_useragent" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_qr" (
	"pk" INT,
	"qrid" VARCHAR,
	"marketid" VARCHAR,
	"qrname" VARCHAR,
	"qrlabel" VARCHAR,
	"qrurl" VARCHAR,
	"qrcode" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_produce" (
	"pk" INT,
	"produceid" VARCHAR,
	"producename" VARCHAR,
	"producedescription" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_marketuser" (
	"pk" INT,
	"marketid" VARCHAR,
	"userid" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_market" (
	"pk" INT,
	"marketid" VARCHAR,
	"marketname" VARCHAR,
	"marketdescription" VARCHAR,
	"marketcode" VARCHAR,
	"marketemail" VARCHAR,
	"marketphone" VARCHAR,
	"marketcell" VARCHAR,
	"marketlongitude" VARCHAR,
	"marketlatitude" VARCHAR,
	"marketaddress" VARCHAR,
	"marketcity" VARCHAR,
	"marketcountry" VARCHAR,
	"markettimes" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_harvest" (
	"pk" INT,
	"harvest_logid" VARCHAR,
	"harvest_suppliershortcode" VARCHAR,
	"harvest_suppliername" VARCHAR,
	"harvest_farmername" VARCHAR,
	"harvest_supplieraddress" VARCHAR,
	"harvest_producename" VARCHAR,
	"harvest_photohash" LONGBLOB,
	"harvest_timestamp" DATETIME,
	"harvest_capturetime" DATETIME,
	"harvest_description" VARCHAR,
	"harvest_geolocation" VARCHAR,
	"harvest_quantity" VARCHAR,
	"harvest_unitofmeasure" VARCHAR,
	"harvest_description_json" VARCHAR,
	"harvest_blockchainhashid" VARCHAR,
	"harvest_blockchainhashdata" VARCHAR,
	"supplierproduce" VARCHAR,
	"harvest_bool_added_to_blockchain" VARCHAR,
	"harvest_added_to_blockchain_date" DATETIME,
	"harvest_added_to_blockchain_by" VARCHAR,
	"harvest_blockchain_uuid" VARCHAR,
	"harvest_user" VARCHAR,
	"logdatetime" DATETIME,
	"lastmodifieddatetime" DATETIME,
	"year_established" VARCHAR,
	"covid19_response" VARCHAR,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_farmuser" (
	"pk" INT,
	"farmid" VARCHAR,
	"userid" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_farmproduce" (
	"pk" INT,
	"produceid" VARCHAR,
	"producename" VARCHAR,
	"producedescription" VARCHAR,
	"producepicture" VARCHAR,
	"farmid" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_farm" (
	"pk" INT,
	"farmid" VARCHAR,
	"farmname" VARCHAR,
	"farmdescription" VARCHAR,
	"farmcode" VARCHAR,
	"farmemail" VARCHAR,
	"farmphone" VARCHAR,
	"farmcell" VARCHAR,
	"farmlongitude" VARCHAR,
	"farmlatitude" VARCHAR,
	"farmaddress" VARCHAR,
	"farmcity" VARCHAR,
	"farmcountry" VARCHAR,
	"farmtimes" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);

CREATE TABLE "foodprint_config" (
	"pk" INT,
	"configid" VARCHAR,
	"configname" VARCHAR,
	"configdescription" VARCHAR,
	"configvalue" VARCHAR,
	"logdatetime" DATETIME,
	 PRIMARY KEY ("pk")
);
