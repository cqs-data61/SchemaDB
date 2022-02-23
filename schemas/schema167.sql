DROP DATABASE IF EXISTS "schema167";
CREATE DATABASE "schema167";
USE "schema167";
CREATE TABLE "cc_system_log" (
	"id" INT,
	"iduser" INT,
	"loglevel" INT,
	"action" TEXT,
	"description" MEDIUMTEXT,
	"data" BLOB,
	"tablename" VARCHAR,
	"pagename" VARCHAR,
	"ipaddress" VARCHAR,
	"creationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_epayment_log" (
	"id" INT,
	"cardid" INT,
	"amount" FLOAT,
	"vat" FLOAT,
	"paymentmethod" CHAR,
	"cc_owner" VARCHAR,
	"cc_number" VARCHAR,
	"cc_expires" VARCHAR,
	"creationdate" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_configuration" (
	"configuration_id" INT,
	"configuration_title" VARCHAR,
	"configuration_key" VARCHAR,
	"configuration_value" VARCHAR,
	"configuration_description" VARCHAR,
	"configuration_type" INT,
	"use_function" VARCHAR,
	"set_function" VARCHAR,
	 PRIMARY KEY ("configuration_id")
);

CREATE TABLE "cc_payments_status" (
	"id" INT,
	"status_id" INT,
	"status_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_payments" (
	"id" INT,
	"customers_id" VARCHAR,
	"customers_name" VARCHAR,
	"customers_email_address" VARCHAR,
	"item_name" VARCHAR,
	"item_id" VARCHAR,
	"item_quantity" INT,
	"payment_method" VARCHAR,
	"cc_type" VARCHAR,
	"cc_owner" VARCHAR,
	"cc_number" VARCHAR,
	"cc_expires" VARCHAR,
	"orders_status" INT,
	"orders_amount" DECIMAL,
	"last_modified" DATETIME,
	"date_purchased" DATETIME,
	"orders_date_finished" DATETIME,
	"currency" CHAR,
	"currency_value" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_payment_methods" (
	"id" INT,
	"payment_method" CHAR,
	"payment_filename" CHAR,
	"active" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_outbound_cid_list" (
	"id" INT,
	"outbound_cid_group" INT,
	"cid" CHAR,
	"activated" INT,
	"creationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_outbound_cid_group" (
	"id" INT,
	"creationdate" TIMESTAMP,
	"group_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_subscription_fee" (
	"id" BIGINT,
	"label" TEXT,
	"fee" FLOAT,
	"currency" CHAR,
	"status" INT,
	"numberofrun" INT,
	"datecreate" TIMESTAMP,
	"datelastrun" TIMESTAMP,
	"emailreport" TEXT,
	"totalcredit" FLOAT,
	"totalcardperform" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_card_package_offer" (
	"id" BIGINT,
	"id_cc_card" BIGINT,
	"id_cc_package_offer" BIGINT,
	"date_consumption" TIMESTAMP,
	"used_secondes" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_package_offer" (
	"id" BIGINT,
	"creationdate" TIMESTAMP,
	"label" VARCHAR,
	"packagetype" INT,
	"billingtype" INT,
	"startday" INT,
	"freetimetocall" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_invoice_history" (
	"id" INT,
	"invoiceid" INT,
	"invoicesent_date" TIMESTAMP,
	"invoicestatus" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_invoices" (
	"id" INT,
	"cardid" BIGINT,
	"orderref" VARCHAR,
	"invoicecreated_date" TIMESTAMP,
	"cover_startdate" TIMESTAMP,
	"cover_enddate" TIMESTAMP,
	"amount" DECIMAL,
	"tax" DECIMAL,
	"total" DECIMAL,
	"invoicetype" INT,
	"filename" VARCHAR,
	"payment_date" TIMESTAMP,
	"payment_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_server_group" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_server_manager" (
	"id" BIGINT,
	"id_group" INT,
	"server_ip" VARCHAR,
	"manager_host" VARCHAR,
	"manager_username" VARCHAR,
	"manager_secret" VARCHAR,
	"lasttime_used" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_callback_spool" (
	"id" BIGINT,
	"uniqueid" VARCHAR,
	"entry_time" TIMESTAMP,
	"status" VARCHAR,
	"server_ip" VARCHAR,
	"num_attempt" INT,
	"last_attempt_time" TIMESTAMP,
	"manager_result" VARCHAR,
	"agi_result" VARCHAR,
	"callback_time" TIMESTAMP,
	"channel" VARCHAR,
	"exten" VARCHAR,
	"context" VARCHAR,
	"priority" VARCHAR,
	"application" VARCHAR,
	"data" VARCHAR,
	"timeout" VARCHAR,
	"callerid" VARCHAR,
	"variable" VARCHAR,
	"account" VARCHAR,
	"async" VARCHAR,
	"actionid" VARCHAR,
	"id_server" INT,
	"id_server_group" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_alarm_report" (
	"id" BIGINT,
	"cc_alarm_id" BIGINT,
	"calculatedvalue" FLOAT,
	"daterun" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_alarm" (
	"id" BIGINT,
	"name" TEXT,
	"periode" INT,
	"type" INT,
	"maxvalue" FLOAT,
	"minvalue" FLOAT,
	"id_trunk" INT,
	"status" INT,
	"numberofrun" INT,
	"numberofalarm" INT,
	"datecreate" TIMESTAMP,
	"datelastrun" TIMESTAMP,
	"emailreport" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_prefix" (
	"id" BIGINT,
	"prefixe" VARCHAR,
	"destination" VARCHAR,
	"id_cc_country" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_autorefill_report" (
	"id" BIGINT,
	"daterun" TIMESTAMP,
	"totalcardperform" INT,
	"totalcredit" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_speeddial" (
	"id" BIGINT,
	"id_cc_card" BIGINT,
	"phone" VARCHAR,
	"name" VARCHAR,
	"speeddial" INT,
	"creationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_ecommerce_product" (
	"id" BIGINT,
	"product_name" VARCHAR,
	"creationdate" TIMESTAMP,
	"description" MEDIUMTEXT,
	"expirationdate" TIMESTAMP,
	"enableexpire" INT,
	"expiredays" INT,
	"mailtype" VARCHAR,
	"credit" FLOAT,
	"tariff" INT,
	"id_didgroup" INT,
	"activated" CHAR,
	"simultaccess" INT,
	"currency" CHAR,
	"typepaid" INT,
	"creditlimit" INT,
	"language" CHAR,
	"runservice" INT,
	"sip_friend" INT,
	"iax_friend" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_backup" (
	"id" BIGINT,
	"name" VARCHAR,
	"path" VARCHAR,
	"creationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_currencies" (
	"id" SMALLINT,
	"currency" CHAR,
	"name" VARCHAR,
	"value" FLOAT,
	"lastupdate" TIMESTAMP,
	"basecurrency" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_provider" (
	"id" INT,
	"provider_name" CHAR,
	"creationdate" TIMESTAMP,
	"description" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_phonelist" (
	"id" INT,
	"id_cc_campaign" INT,
	"id_cc_card" INT,
	"numbertodial" CHAR,
	"name" CHAR,
	"inuse" INT,
	"enable" INT,
	"num_trials_done" INT,
	"creationdate" TIMESTAMP,
	"last_attempt" TIMESTAMP,
	"secondusedreal" INT,
	"additionalinfo" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_campaign" (
	"id" INT,
	"campaign_name" CHAR,
	"creationdate" TIMESTAMP,
	"startingdate" TIMESTAMP,
	"expirationdate" TIMESTAMP,
	"description" MEDIUMTEXT,
	"id_trunk" INT,
	"secondusedreal" INT,
	"nb_callmade" INT,
	"enable" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_country" (
	"id" BIGINT,
	"countrycode" CHAR,
	"countryprefix" CHAR,
	"countryname" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_iax_buddies" (
	"id" INT,
	"id_cc_card" INT,
	"name" CHAR,
	"accountcode" CHAR,
	"regexten" CHAR,
	"amaflags" CHAR,
	"callgroup" CHAR,
	"callerid" CHAR,
	"canreinvite" CHAR,
	"context" CHAR,
	"defaultip" CHAR,
	"dtmfmode" CHAR,
	"fromuser" CHAR,
	"fromdomain" CHAR,
	"host" CHAR,
	"insecure" CHAR,
	"language" CHAR,
	"mailbox" CHAR,
	"md5secret" CHAR,
	"nat" CHAR,
	"permit" CHAR,
	"deny" CHAR,
	"mask" CHAR,
	"pickupgroup" CHAR,
	"port" CHAR,
	"qualify" CHAR,
	"restrictcid" CHAR,
	"rtptimeout" CHAR,
	"rtpholdtimeout" CHAR,
	"secret" CHAR,
	"type" CHAR,
	"username" CHAR,
	"disallow" CHAR,
	"allow" CHAR,
	"musiconhold" CHAR,
	"regseconds" INT,
	"ipaddr" CHAR,
	"cancallforward" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_sip_buddies" (
	"id" INT,
	"id_cc_card" INT,
	"name" CHAR,
	"accountcode" CHAR,
	"regexten" CHAR,
	"amaflags" CHAR,
	"callgroup" CHAR,
	"callerid" CHAR,
	"canreinvite" CHAR,
	"context" CHAR,
	"defaultip" CHAR,
	"dtmfmode" CHAR,
	"fromuser" CHAR,
	"fromdomain" CHAR,
	"host" CHAR,
	"insecure" CHAR,
	"language" CHAR,
	"mailbox" CHAR,
	"md5secret" CHAR,
	"nat" CHAR,
	"permit" CHAR,
	"deny" CHAR,
	"mask" CHAR,
	"pickupgroup" CHAR,
	"port" CHAR,
	"qualify" CHAR,
	"restrictcid" CHAR,
	"rtptimeout" CHAR,
	"rtpholdtimeout" CHAR,
	"secret" CHAR,
	"type" CHAR,
	"username" CHAR,
	"disallow" CHAR,
	"allow" CHAR,
	"musiconhold" CHAR,
	"regseconds" INT,
	"ipaddr" CHAR,
	"cancallforward" CHAR,
	"fullcontact" VARCHAR,
	"setvar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_trunk" (
	"id_trunk" INT,
	"trunkcode" CHAR,
	"trunkprefix" CHAR,
	"providertech" CHAR,
	"providerip" CHAR,
	"removeprefix" CHAR,
	"secondusedreal" INT,
	"secondusedcarrier" INT,
	"secondusedratecard" INT,
	"creationdate" TIMESTAMP,
	"failover_trunk" INT,
	"addparameter" CHAR,
	"id_provider" INT,
	 PRIMARY KEY ("id_trunk")
);

CREATE TABLE "cc_logpayment" (
	"id" INT,
	"date" TIMESTAMP,
	"payment" FLOAT,
	"card_id" BIGINT,
	"reseller_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_logrefill" (
	"id" INT,
	"date" TIMESTAMP,
	"credit" FLOAT,
	"card_id" BIGINT,
	"reseller_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_ratecard" (
	"id" INT,
	"idtariffplan" INT,
	"dialprefix" CHAR,
	"destination" CHAR,
	"buyrate" FLOAT,
	"buyrateinitblock" INT,
	"buyrateincrement" INT,
	"rateinitial" FLOAT,
	"initblock" INT,
	"billingblock" INT,
	"connectcharge" FLOAT,
	"disconnectcharge" FLOAT,
	"stepchargea" FLOAT,
	"chargea" FLOAT,
	"timechargea" INT,
	"billingblocka" INT,
	"stepchargeb" FLOAT,
	"chargeb" FLOAT,
	"timechargeb" INT,
	"billingblockb" INT,
	"stepchargec" FLOAT,
	"chargec" FLOAT,
	"timechargec" INT,
	"billingblockc" INT,
	"startdate" TIMESTAMP,
	"stopdate" TIMESTAMP,
	"starttime" SMALLINT,
	"endtime" SMALLINT,
	"id_trunk" INT,
	"musiconhold" CHAR,
	"freetimetocall_package_offer" INT,
	"id_outbound_cidgroup" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_card" (
	"id" BIGINT,
	"creationdate" TIMESTAMP,
	"firstusedate" TIMESTAMP,
	"expirationdate" TIMESTAMP,
	"enableexpire" INT,
	"expiredays" INT,
	"username" CHAR,
	"useralias" CHAR,
	"userpass" CHAR,
	"uipass" CHAR,
	"credit" DECIMAL,
	"tariff" INT,
	"id_didgroup" INT,
	"activated" CHAR,
	"lastname" CHAR,
	"firstname" CHAR,
	"address" CHAR,
	"city" CHAR,
	"state" CHAR,
	"country" CHAR,
	"zipcode" CHAR,
	"phone" CHAR,
	"email" CHAR,
	"fax" CHAR,
	"inuse" INT,
	"simultaccess" INT,
	"currency" CHAR,
	"lastuse" TIMESTAMP,
	"nbused" INT,
	"typepaid" INT,
	"creditlimit" INT,
	"voipcall" INT,
	"sip_buddy" INT,
	"iax_buddy" INT,
	"language" CHAR,
	"redial" CHAR,
	"runservice" INT,
	"nbservice" INT,
	"id_campaign" INT,
	"num_trials_done" BIGINT,
	"callback" CHAR,
	"vat" FLOAT,
	"servicelastrun" TIMESTAMP,
	"initialbalance" DECIMAL,
	"invoiceday" INT,
	"autorefill" INT,
	"loginkey" CHAR,
	"activatedbyuser" CHAR,
	"id_subscription_fee" INT,
	"mac_addr" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_tariffplan" (
	"id" INT,
	"iduser" INT,
	"tariffname" CHAR,
	"creationdate" TIMESTAMP,
	"startingdate" TIMESTAMP,
	"expirationdate" TIMESTAMP,
	"description" MEDIUMTEXT,
	"id_trunk" INT,
	"secondusedreal" INT,
	"secondusedcarrier" INT,
	"secondusedratecard" INT,
	"reftariffplan" INT,
	"idowner" INT,
	"dnidprefix" CHAR,
	"calleridprefix" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_tariffgroup_plan" (
	"idtariffgroup" INT,
	"idtariffplan" INT,
	 PRIMARY KEY ("idtariffgroup","idtariffplan")
);

CREATE TABLE "cc_tariffgroup" (
	"id" INT,
	"iduser" INT,
	"idtariffplan" INT,
	"tariffgroupname" CHAR,
	"lcrtype" INT,
	"creationdate" TIMESTAMP,
	"removeinterprefix" INT,
	"id_cc_package_offer" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_templatemail" (
	"mailtype" CHAR,
	"fromemail" CHAR,
	"fromname" CHAR,
	"subject" CHAR,
	"messagetext" LONGTEXT,
	"messagehtml" LONGTEXT
);

CREATE TABLE "cc_call" (
	"id" BIGINT,
	"sessionid" CHAR,
	"uniqueid" CHAR,
	"username" CHAR,
	"nasipaddress" CHAR,
	"starttime" TIMESTAMP,
	"stoptime" TIMESTAMP,
	"sessiontime" INT,
	"calledstation" CHAR,
	"startdelay" INT,
	"stopdelay" INT,
	"terminatecause" CHAR,
	"usertariff" CHAR,
	"calledprovider" CHAR,
	"calledcountry" CHAR,
	"calledsub" CHAR,
	"calledrate" FLOAT,
	"sessionbill" FLOAT,
	"destination" CHAR,
	"id_tariffgroup" INT,
	"id_tariffplan" INT,
	"id_ratecard" INT,
	"id_trunk" INT,
	"sipiax" INT,
	"src" CHAR,
	"id_did" INT,
	"buyrate" DECIMAL,
	"buycost" DECIMAL,
	"id_card_package_offer" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_ui_authen" (
	"userid" BIGINT,
	"login" CHAR,
	"password" CHAR,
	"groupid" INT,
	"perms" INT,
	"confaddcust" INT,
	"name" CHAR,
	"direction" CHAR,
	"zipcode" CHAR,
	"state" CHAR,
	"phone" CHAR,
	"fax" CHAR,
	"datecreation" TIMESTAMP,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "cc_callerid" (
	"id" BIGINT,
	"cid" CHAR,
	"id_cc_card" BIGINT,
	"activated" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_service_report" (
	"id" BIGINT,
	"cc_service_id" BIGINT,
	"daterun" TIMESTAMP,
	"totalcardperform" INT,
	"totalcredit" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_service" (
	"id" BIGINT,
	"name" CHAR,
	"amount" FLOAT,
	"period" INT,
	"rule" INT,
	"daynumber" INT,
	"stopmode" INT,
	"maxnumbercycle" INT,
	"status" INT,
	"numberofrun" INT,
	"datecreate" TIMESTAMP,
	"datelastrun" TIMESTAMP,
	"emailreport" CHAR,
	"totalcredit" FLOAT,
	"totalcardperform" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_voucher" (
	"id" BIGINT,
	"creationdate" TIMESTAMP,
	"usedate" TIMESTAMP,
	"expirationdate" TIMESTAMP,
	"voucher" CHAR,
	"usedcardnumber" CHAR,
	"tag" CHAR,
	"credit" FLOAT,
	"activated" CHAR,
	"used" INT,
	"currency" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_paypal" (
	"id" INT,
	"payer_id" VARCHAR,
	"payment_date" VARCHAR,
	"txn_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"payer_email" VARCHAR,
	"payer_status" VARCHAR,
	"payment_type" VARCHAR,
	"memo" TINYTEXT,
	"item_name" VARCHAR,
	"item_number" VARCHAR,
	"quantity" INT,
	"mc_gross" DECIMAL,
	"mc_fee" DECIMAL,
	"tax" DECIMAL,
	"mc_currency" CHAR,
	"address_name" VARCHAR,
	"address_street" VARCHAR,
	"address_city" VARCHAR,
	"address_state" VARCHAR,
	"address_zip" VARCHAR,
	"address_country" VARCHAR,
	"address_status" VARCHAR,
	"payer_business_name" VARCHAR,
	"payment_status" VARCHAR,
	"pending_reason" VARCHAR,
	"reason_code" VARCHAR,
	"txn_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_charge" (
	"id" BIGINT,
	"id_cc_card" BIGINT,
	"iduser" INT,
	"creationdate" TIMESTAMP,
	"amount" FLOAT,
	"currency" CHAR,
	"chargetype" INT,
	"description" MEDIUMTEXT,
	"id_cc_did" BIGINT,
	"id_cc_subscription_fee" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_did_destination" (
	"id" BIGINT,
	"destination" CHAR,
	"priority" INT,
	"id_cc_card" BIGINT,
	"id_cc_did" BIGINT,
	"creationdate" TIMESTAMP,
	"activated" INT,
	"secondusedreal" INT,
	"voip_call" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_did" (
	"id" BIGINT,
	"id_cc_didgroup" BIGINT,
	"id_cc_country" INT,
	"activated" INT,
	"reserved" INT,
	"iduser" BIGINT,
	"did" CHAR,
	"creationdate" TIMESTAMP,
	"startingdate" TIMESTAMP,
	"expirationdate" TIMESTAMP,
	"description" MEDIUMTEXT,
	"secondusedreal" INT,
	"billingtype" INT,
	"fixrate" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_did_use" (
	"id" BIGINT,
	"id_cc_card" BIGINT,
	"id_did" BIGINT,
	"reservationdate" TIMESTAMP,
	"releasedate" TIMESTAMP,
	"activated" INT,
	"month_payed" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cc_didgroup" (
	"id" BIGINT,
	"iduser" INT,
	"didgroupname" CHAR,
	"creationdate" TIMESTAMP,
	 PRIMARY KEY ("id")
);
