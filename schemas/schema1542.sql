DROP DATABASE IF EXISTS "schema1542";
CREATE DATABASE "schema1542";
USE "schema1542";
CREATE TABLE "xlite_sale_discounts" (
	"id" INT,
	"usecustomog" TINYINT,
	"ogmeta" LONGTEXT,
	"enabled" TINYINT,
	"value" DECIMAL,
	"daterangebegin" INT,
	"daterangeend" INT,
	"showinseparatesection" TINYINT,
	"metadesctype" VARCHAR,
	"specificproducts" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_capost_parcel_shipment_tracking_options" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"trackingid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_permissions" (
	"id" INT,
	"code" CHAR,
	"section" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_pages" (
	"id" INT,
	"usecustomog" TINYINT,
	"ogmeta" LONGTEXT,
	"showsocialbuttons" TINYINT,
	"enabled" TINYINT,
	"metadesctype" VARCHAR,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_menus" (
	"id" INT,
	"parent_id" INT,
	"link" VARCHAR,
	"lpos" INT,
	"rpos" INT,
	"depth" INT,
	"type" VARCHAR,
	"position" INT,
	"enabled" TINYINT,
	"visiblefor" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_AC666883727ACA70" FOREIGN KEY ("parent_id") REFERENCES "xlite_menus" ("id")
);

CREATE TABLE "xlite_order_capost_parcel_shipment_link_storage" (
	"id" INT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	"linkid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_access_control_entity_types" (
	"id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_entity_type_versions" (
	"id" INT,
	"entitytype" VARCHAR,
	"version" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_categories" (
	"category_id" INT,
	"parent_id" INT,
	"ogmeta" LONGTEXT,
	"usecustomog" TINYINT,
	"cslastupdate" INT,
	"demo" TINYINT,
	"lpos" INT,
	"rpos" INT,
	"enabled" TINYINT,
	"show_title" TINYINT,
	"depth" INT,
	"pos" INT,
	"root_category_look" VARCHAR,
	"metadesctype" VARCHAR,
	"xcpendingexport" TINYINT,
	 PRIMARY KEY ("category_id"),
	 CONSTRAINT "FK_9D0DF19B727ACA70" FOREIGN KEY ("parent_id") REFERENCES "xlite_categories" ("category_id")
);

CREATE TABLE "xlite_category_banners" (
	"id" INT,
	"category_id" INT,
	"alt" VARCHAR,
	"width" INT,
	"height" INT,
	"hash" CHAR,
	"needprocess" TINYINT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_69B8F0D412469DE2" FOREIGN KEY ("category_id") REFERENCES "xlite_categories" ("category_id")
);

CREATE TABLE "xlite_order_capost_parcel_shipments_manifests" (
	"manifest_id" INT,
	"shipment_id" INT,
	 PRIMARY KEY ("manifest_id","shipment_id")
);

CREATE TABLE "xlite_order_item_surcharges" (
	"id" INT,
	"item_id" INT,
	"type" CHAR,
	"code" VARCHAR,
	"class" VARCHAR,
	"include" TINYINT,
	"available" TINYINT,
	"value" DECIMAL,
	"name" VARCHAR,
	"weight" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_shipping_statuses" (
	"id" INT,
	"code" CHAR,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_tmp_vars" (
	"id" INT,
	"name" VARCHAR,
	"value" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_capost_office" (
	"id" INT,
	"officeid" CHAR,
	"name" VARCHAR,
	"location" VARCHAR,
	"distance" DECIMAL,
	"bilingualdesignation" TINYINT,
	"city" VARCHAR,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"postalcode" VARCHAR,
	"province" VARCHAR,
	"officeaddress" VARCHAR,
	"workinghours" LONGTEXT,
	"orderid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_currencies" (
	"currency_id" INT,
	"code" CHAR,
	"symbol" VARCHAR,
	"prefix" VARCHAR,
	"suffix" VARCHAR,
	"e" SMALLINT,
	"decimaldelimiter" VARCHAR,
	"thousanddelimiter" VARCHAR,
	"roundup" VARCHAR,
	 PRIMARY KEY ("currency_id")
);

CREATE TABLE "xlite_menu_quick_flags" (
	"id" INT,
	"menu_id" INT,
	"submenus_count_all" INT,
	"submenus_count_enabled" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_memberships" (
	"membership_id" INT,
	"position" INT,
	"enabled" TINYINT,
	 PRIMARY KEY ("membership_id")
);

CREATE TABLE "xlite_membership_coupons" (
	"coupon_id" INT,
	"membership_id" INT,
	 PRIMARY KEY ("coupon_id","membership_id"),
	 CONSTRAINT "FK_560DE211FB354CD" FOREIGN KEY ("membership_id") REFERENCES "xlite_memberships" ("membership_id")
);

CREATE TABLE "xlite_order_capost_parcel_shipment_tracking_files" (
	"id" INT,
	"doctype" CHAR,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	"trackingid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_roles" (
	"id" INT,
	"enabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_address_field" (
	"id" INT,
	"servicename" VARCHAR,
	"viewgettername" VARCHAR,
	"schemaclass" VARCHAR,
	"additional" TINYINT,
	"required" TINYINT,
	"enabled" TINYINT,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_shipping_status_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"customername" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_capost_delivery_services" (
	"id" INT,
	"code" VARCHAR,
	"countrycode" VARCHAR,
	"name" VARCHAR,
	"expiry" INT,
	"maxweight" INT,
	"minweight" INT,
	"maxlength" DECIMAL,
	"minlength" DECIMAL,
	"maxwidth" DECIMAL,
	"minwidth" DECIMAL,
	"maxheight" DECIMAL,
	"minheight" DECIMAL,
	"lengthplusgirthmax" DECIMAL,
	"lengthheightwidthsummax" DECIMAL,
	"oversizelimit" DECIMAL,
	"densityfactor" INT,
	"canshipinmailingtube" TINYINT,
	"canshipunpackaged" TINYINT,
	"allowedasreturnservice" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_zone_coupons" (
	"coupon_id" INT,
	"zone_id" INT,
	 PRIMARY KEY ("coupon_id","zone_id")
);

CREATE TABLE "xlite_news" (
	"id" INT,
	"enabled" TINYINT,
	"date" INT,
	"metadesctype" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_access_control_cells" (
	"id" INT,
	"hash" VARCHAR,
	"returndata" VARCHAR,
	"resendmethod" VARCHAR,
	"date" INT,
	"resenddate" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_access_control_entities" (
	"id" INT,
	"type_id" INT,
	"cell_id" INT,
	"uid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_A98BAB59CB39D93A" FOREIGN KEY ("cell_id") REFERENCES "xlite_access_control_cells" ("id")
);

CREATE TABLE "xlite_country_translations" (
	"label_id" INT,
	"id" CHAR,
	"country" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_tax_classes" (
	"id" INT,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_payment_statuses" (
	"id" INT,
	"code" CHAR,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_orders" (
	"order_id" INT,
	"not_finished_order_id" INT,
	"profile_id" INT,
	"orig_profile_id" INT,
	"payment_status_id" INT,
	"shipping_status_id" INT,
	"currency_id" INT,
	"mailchimpstoreid" VARCHAR,
	"demo" TINYINT,
	"xpaymentsfraudstatus" VARCHAR,
	"xpaymentsfraudtype" VARCHAR,
	"xpaymentsfraudchecktransactionid" INT,
	"buywithapplepay" TINYINT,
	"delayedpaymentsavedcardid" VARCHAR,
	"shipping_id" INT,
	"shipping_method_name" VARCHAR,
	"payment_method_name" VARCHAR,
	"tracking" VARCHAR,
	"date" INT,
	"lastrenewdate" INT,
	"notes" LONGTEXT,
	"adminnotes" LONGTEXT,
	"ordernumber" VARCHAR,
	"recent" TINYINT,
	"stockstatus" VARCHAR,
	"xcpendingexport" TINYINT,
	"total" DECIMAL,
	"subtotal" DECIMAL,
	"is_order" INT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "FK_9A9BE33528DE2F95" FOREIGN KEY ("payment_status_id") REFERENCES "xlite_order_payment_statuses" ("id"),
	 CONSTRAINT "FK_9A9BE335791AE370" FOREIGN KEY ("not_finished_order_id") REFERENCES "xlite_orders" ("order_id"),
	 CONSTRAINT "FK_9A9BE33538248176" FOREIGN KEY ("currency_id") REFERENCES "xlite_currencies" ("currency_id"),
	 CONSTRAINT "FK_9A9BE3352D02518A" FOREIGN KEY ("shipping_status_id") REFERENCES "xlite_order_shipping_statuses" ("id")
);

CREATE TABLE "xlite_order_review_keys" (
	"id" INT,
	"order_id" INT,
	"keyvalue" CHAR,
	"addeddate" INT,
	"sentdate" INT,
	"firstclickdate" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_3869BA7B8D9F6D38" FOREIGN KEY ("order_id") REFERENCES "xlite_orders" ("order_id")
);

CREATE TABLE "xlite_order_tracking_number" (
	"tracking_id" INT,
	"order_id" INT,
	"value" LONGTEXT,
	"creationdate" INT,
	 PRIMARY KEY ("tracking_id"),
	 CONSTRAINT "FK_77A238F48D9F6D38" FOREIGN KEY ("order_id") REFERENCES "xlite_orders" ("order_id")
);

CREATE TABLE "xlite_order_backorder_competitors" (
	"id" INT,
	"competitor_id" INT,
	 PRIMARY KEY ("id","competitor_id"),
	 CONSTRAINT "FK_C73B739BBF396750" FOREIGN KEY ("id") REFERENCES "xlite_orders" ("order_id"),
	 CONSTRAINT "FK_C73B739B78A5D405" FOREIGN KEY ("competitor_id") REFERENCES "xlite_orders" ("order_id")
);

CREATE TABLE "xlite_order_surcharges" (
	"id" INT,
	"order_id" INT,
	"type" CHAR,
	"code" VARCHAR,
	"class" VARCHAR,
	"include" TINYINT,
	"available" TINYINT,
	"value" DECIMAL,
	"name" VARCHAR,
	"weight" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_currency_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_category_translations" (
	"label_id" INT,
	"id" INT,
	"ogmeta" LONGTEXT,
	"name" VARCHAR,
	"description" LONGTEXT,
	"metatags" VARCHAR,
	"metadesc" LONGTEXT,
	"metatitle" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_page_images" (
	"id" INT,
	"page_id" INT,
	"width" INT,
	"height" INT,
	"hash" CHAR,
	"needprocess" TINYINT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_sessions" (
	"id" INT,
	"sid" CHAR,
	"expiry" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_usps_shipment" (
	"id" INT,
	"order_id" INT,
	"transactionid" VARCHAR,
	"requestdata" LONGTEXT,
	"responsedata" LONGTEXT,
	"printdate" INT,
	"price" DECIMAL,
	"shipmentid" VARCHAR,
	"trackingnumber" VARCHAR,
	"trackingdata" LONGTEXT,
	"labelurl" VARCHAR,
	"labelcontent" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_mailchimp_lists" (
	"id" VARCHAR,
	"name" VARCHAR,
	"date_created" VARCHAR,
	"date_updated" INT,
	"list_rating" DECIMAL,
	"subscribe_url_short" VARCHAR,
	"subscribe_url_long" VARCHAR,
	"member_count" INT,
	"open_rate" DECIMAL,
	"click_rate" DECIMAL,
	"enabled" TINYINT,
	"subscribebydefault" TINYINT,
	"isremoved" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_mailchimp_list_segments" (
	"id" VARCHAR,
	"list_id" VARCHAR,
	"name" VARCHAR,
	"created_date" VARCHAR,
	"static" TINYINT,
	"useorderslastmonth" TINYINT,
	"orderslastmonth" INT,
	"useorderamount" TINYINT,
	"orderamount" DECIMAL,
	"usememberships" TINYINT,
	"useproducts" TINYINT,
	"enabled" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_93CC76423DAE168B" FOREIGN KEY ("list_id") REFERENCES "xlite_mailchimp_lists" ("id")
);

CREATE TABLE "xlite_mailchimp_segment_subscriptions" (
	"segment_id" VARCHAR,
	"profile_id" INT,
	 PRIMARY KEY ("segment_id","profile_id"),
	 CONSTRAINT "FK_CE45B298DB296AAD" FOREIGN KEY ("segment_id") REFERENCES "xlite_mailchimp_list_segments" ("id")
);

CREATE TABLE "xlite_shipping_markups" (
	"markup_id" INT,
	"method_id" INT,
	"zone_id" INT,
	"min_weight" DECIMAL,
	"max_weight" DECIMAL,
	"min_total" DECIMAL,
	"max_total" DECIMAL,
	"min_discounted_total" DECIMAL,
	"max_discounted_total" DECIMAL,
	"min_items" DECIMAL,
	"max_items" DECIMAL,
	"markup_flat" DECIMAL,
	"markup_percent" DECIMAL,
	"markup_per_item" DECIMAL,
	"markup_per_weight" DECIMAL,
	 PRIMARY KEY ("markup_id")
);

CREATE TABLE "xlite_order_history_events" (
	"event_id" INT,
	"order_id" INT,
	"author_id" INT,
	"date" INT,
	"code" VARCHAR,
	"description" VARCHAR,
	"data" LONGTEXT,
	"comment" LONGTEXT,
	"authorname" VARCHAR,
	"authorip" VARCHAR,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "xlite_category_images" (
	"id" INT,
	"category_id" INT,
	"alt" VARCHAR,
	"width" INT,
	"height" INT,
	"hash" CHAR,
	"needprocess" TINYINT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_capost_parcels" (
	"id" INT,
	"order_id" INT,
	"number" INT,
	"status" CHAR,
	"quotetype" CHAR,
	"boxweight" DECIMAL,
	"boxwidth" DECIMAL,
	"boxlength" DECIMAL,
	"boxheight" DECIMAL,
	"isdocument" TINYINT,
	"isunpackaged" TINYINT,
	"ismailingtube" TINYINT,
	"isoversized" TINYINT,
	"notifyonshipment" TINYINT,
	"notifyonexception" TINYINT,
	"notifyondelivery" TINYINT,
	"optsignature" TINYINT,
	"optcoverage" DECIMAL,
	"optageproof" VARCHAR,
	"optwaytodeliver" VARCHAR,
	"optnondelivery" VARCHAR,
	"hasremoveditems" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_capost_parcel_items" (
	"id" INT,
	"amount" INT,
	"parcelid" INT,
	"orderitemid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_18699C805A9ACC87" FOREIGN KEY ("parcelid") REFERENCES "xlite_order_capost_parcels" ("id")
);

CREATE TABLE "xlite_order_payment_status_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"customername" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_product_classes" (
	"id" INT,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_attribute_groups" (
	"id" INT,
	"product_class_id" INT,
	"position" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_59E382E821B06187" FOREIGN KEY ("product_class_id") REFERENCES "xlite_product_classes" ("id")
);

CREATE TABLE "xlite_product_class_coupons" (
	"coupon_id" INT,
	"class_id" INT,
	 PRIMARY KEY ("coupon_id","class_id")
);

CREATE TABLE "xlite_sales_taxes" (
	"id" INT,
	"enabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_sales_tax_rates" (
	"id" INT,
	"tax_id" INT,
	"zone_id" INT,
	"tax_class_id" INT,
	"membership_id" INT,
	"value" DECIMAL,
	"type" CHAR,
	"position" INT,
	"notaxclass" TINYINT,
	"taxablebase" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_1ACD2E0EB2A824D8" FOREIGN KEY ("tax_id") REFERENCES "xlite_sales_taxes" ("id")
);

CREATE TABLE "xlite_language_labels" (
	"label_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_search_filter_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_import_logs" (
	"id" INT,
	"date" INT,
	"type" CHAR,
	"code" CHAR,
	"arguments" LONGTEXT,
	"file" VARCHAR,
	"row" INT,
	"processor" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_modifiers" (
	"id" INT,
	"class" VARCHAR,
	"weight" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_membership_sale_discounts" (
	"sale_id" INT,
	"membership_id" INT,
	 PRIMARY KEY ("sale_id","membership_id")
);

CREATE TABLE "xlite_access_control_zone_types" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_access_control_zones" (
	"id" INT,
	"cell_id" INT,
	"type_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_19AE0547C54C8C93" FOREIGN KEY ("type_id") REFERENCES "xlite_access_control_zone_types" ("id")
);

CREATE TABLE "xlite_mailchimp_subscriptions" (
	"list_id" VARCHAR,
	"profile_id" INT,
	 PRIMARY KEY ("list_id","profile_id")
);

CREATE TABLE "xlite_order_capost_parcel_shipment_tracking_events" (
	"id" INT,
	"identifier" VARCHAR,
	"date" CHAR,
	"time" CHAR,
	"timezone" VARCHAR,
	"description" VARCHAR,
	"signatoryname" VARCHAR,
	"site" VARCHAR,
	"province" VARCHAR,
	"retaillocationid" VARCHAR,
	"retailname" VARCHAR,
	"trackingid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_capost_returns" (
	"id" INT,
	"status" CHAR,
	"date" INT,
	"lastrenewdate" INT,
	"notes" LONGTEXT,
	"adminnotes" LONGTEXT,
	"trackingpin" VARCHAR,
	"orderid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_capost_return_items" (
	"id" INT,
	"amount" INT,
	"returnid" INT,
	"orderitemid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_32022371B43D59E" FOREIGN KEY ("returnid") REFERENCES "xlite_capost_returns" ("id")
);

CREATE TABLE "xlite_order_coupons" (
	"id" INT,
	"order_id" INT,
	"coupon_id" INT,
	"code" CHAR,
	"value" DECIMAL,
	"type" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_money_modificators" (
	"id" INT,
	"class" VARCHAR,
	"modificator" VARCHAR,
	"validator" VARCHAR,
	"position" INT,
	"behavior" VARCHAR,
	"purpose" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_tasks" (
	"id" INT,
	"owner" VARCHAR,
	"triggertime" INT,
	"data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_iframe_contents" (
	"id" INT,
	"url" VARCHAR,
	"method" VARCHAR,
	"data" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_address_field_translation" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_role_permissions" (
	"permission_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("permission_id","role_id")
);

CREATE TABLE "xlite_banner_rotation_image" (
	"id" INT,
	"banner_rotation_slide_id" INT,
	"alt" VARCHAR,
	"width" INT,
	"height" INT,
	"hash" CHAR,
	"needprocess" TINYINT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_attribute_group_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_product_attachment_storages" (
	"id" INT,
	"attachment_id" INT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_event_tasks" (
	"id" INT,
	"name" VARCHAR,
	"arguments" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_measures" (
	"id" INT,
	"date" INT,
	"fstime" INT,
	"dbtime" INT,
	"cputime" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_xpayments_subscriptions" (
	"id" INT,
	"calculateshipping" TINYINT,
	"shippingid" INT,
	"xpaymentssubscriptionpublicid" VARCHAR,
	"status" CHAR,
	"failedattempts" INT,
	"successfulattempts" INT,
	"startdate" INT,
	"planneddate" INT,
	"actualdate" INT,
	"cardid" VARCHAR,
	"fee" DECIMAL,
	"type" VARCHAR,
	"number" INT,
	"period" CHAR,
	"reverse" TINYINT,
	"periods" INT,
	"initialorderitem" INT,
	"shippingaddress" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_global_product_tab_provider" (
	"id" INT,
	"tab_id" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_payment_methods" (
	"method_id" INT,
	"service_name" VARCHAR,
	"class" VARCHAR,
	"modulename" VARCHAR,
	"orderby" INT,
	"adminorderby" INT,
	"enabled" TINYINT,
	"added" TINYINT,
	"type" CHAR,
	"frommarketplace" TINYINT,
	"iconurl" VARCHAR,
	"countries" LONGTEXT,
	"excountries" LONGTEXT,
	 PRIMARY KEY ("method_id")
);

CREATE TABLE "xlite_payment_method_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"title" VARCHAR,
	"description" LONGTEXT,
	"admindescription" LONGTEXT,
	"altadmindescription" LONGTEXT,
	"instruction" LONGTEXT,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_9FBF065BF396750" FOREIGN KEY ("id") REFERENCES "xlite_payment_methods" ("method_id")
);

CREATE TABLE "xlite_payment_method_settings" (
	"setting_id" INT,
	"method_id" INT,
	"name" VARCHAR,
	"value" LONGTEXT,
	 PRIMARY KEY ("setting_id"),
	 CONSTRAINT "FK_33B9DA0019883967" FOREIGN KEY ("method_id") REFERENCES "xlite_payment_methods" ("method_id")
);

CREATE TABLE "xlite_regions" (
	"code" VARCHAR,
	"country_code" CHAR,
	"name" VARCHAR,
	"weight" INT,
	 PRIMARY KEY ("code")
);

CREATE TABLE "xlite_payment_transactions" (
	"transaction_id" INT,
	"order_id" INT,
	"method_id" INT,
	"currency_id" INT,
	"date" INT,
	"publictxnid" VARCHAR,
	"method_name" VARCHAR,
	"method_local_name" VARCHAR,
	"status" CHAR,
	"value" DECIMAL,
	"note" VARCHAR,
	"type" VARCHAR,
	"public_id" VARCHAR,
	 PRIMARY KEY ("transaction_id")
);

CREATE TABLE "xlite_xpayments_fraud_check_data" (
	"id" INT,
	"transaction_id" INT,
	"code" VARCHAR,
	"service" VARCHAR,
	"module" VARCHAR,
	"result" INT,
	"status" VARCHAR,
	"score" INT,
	"message" VARCHAR,
	"servicetransactionid" VARCHAR,
	"url" VARCHAR,
	"errors" VARCHAR,
	"warnings" VARCHAR,
	"rules" VARCHAR,
	"data" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_BC7EC2A42FC0CB0F" FOREIGN KEY ("transaction_id") REFERENCES "xlite_payment_transactions" ("transaction_id")
);

CREATE TABLE "xlite_form_ids" (
	"id" INT,
	"session_id" INT,
	"form_id" VARCHAR,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_products" (
	"product_id" INT,
	"product_class_id" INT,
	"tax_class_id" INT,
	"marketprice" DECIMAL,
	"pincodesenabled" TINYINT,
	"autopincodes" TINYINT,
	"participatesale" TINYINT,
	"discounttype" VARCHAR,
	"salepricevalue" DECIMAL,
	"cslastupdate" INT,
	"xcpendingbulkedit" TINYINT,
	"iscustomerattachmentsavailable" TINYINT,
	"iscustomerattachmentsrequired" TINYINT,
	"facebookmarketingenabled" TINYINT,
	"freeship" TINYINT,
	"shipforfree" TINYINT,
	"freightfixedfee" DECIMAL,
	"googlefeedenabled" TINYINT,
	"usecustomog" TINYINT,
	"useassegmentcondition" TINYINT,
	"demo" TINYINT,
	"price" DECIMAL,
	"sku" VARCHAR,
	"enabled" TINYINT,
	"weight" DECIMAL,
	"useseparatebox" TINYINT,
	"boxwidth" DECIMAL,
	"boxlength" DECIMAL,
	"boxheight" DECIMAL,
	"itemsperbox" INT,
	"free_shipping" TINYINT,
	"taxable" TINYINT,
	"arrivaldate" INT,
	"date" INT,
	"updatedate" INT,
	"needprocess" TINYINT,
	"inventoryenabled" TINYINT,
	"amount" INT,
	"lowlimitenabledcustomer" TINYINT,
	"lowlimitenabled" TINYINT,
	"lowlimitamount" INT,
	"attrseptab" TINYINT,
	"metadesctype" VARCHAR,
	"sales" INT,
	"xcpendingexport" TINYINT,
	"entityversion" CHAR,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "xlite_order_items" (
	"item_id" INT,
	"object_id" INT,
	"order_id" INT,
	"categoryadded" VARCHAR,
	"xpaymentsemulated" TINYINT,
	"xpaymentsuniqueid" VARCHAR,
	"name" VARCHAR,
	"sku" VARCHAR,
	"price" DECIMAL,
	"itemnetprice" DECIMAL,
	"discountedsubtotal" DECIMAL,
	"amount" INT,
	"backorderedamount" INT,
	"total" DECIMAL,
	"subtotal" DECIMAL,
	"subscriptionid" INT,
	"object_type" VARCHAR,
	 PRIMARY KEY ("item_id"),
	 CONSTRAINT "FK_4693C0A1232D562B" FOREIGN KEY ("object_id") REFERENCES "xlite_products" ("product_id"),
	 CONSTRAINT "FK_4693C0A18D9F6D38" FOREIGN KEY ("order_id") REFERENCES "xlite_orders" ("order_id"),
	 CONSTRAINT "FK_4693C0A1CA77D3A9" FOREIGN KEY ("subscriptionid") REFERENCES "xlite_xpayments_subscriptions" ("id")
);

CREATE TABLE "xlite_clean_urls" (
	"id" INT,
	"sale_discount_id" INT,
	"page_id" INT,
	"news_message_id" INT,
	"product_id" INT,
	"category_id" INT,
	"cleanurl" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_F2542545BF05C450" FOREIGN KEY ("news_message_id") REFERENCES "xlite_news" ("id"),
	 CONSTRAINT "FK_F254254512469DE2" FOREIGN KEY ("category_id") REFERENCES "xlite_categories" ("category_id"),
	 CONSTRAINT "FK_F25425454584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_attributes" (
	"id" INT,
	"product_class_id" INT,
	"attribute_group_id" INT,
	"product_id" INT,
	"googleshoppinggroup" VARCHAR,
	"position" INT,
	"displayabove" TINYINT,
	"decimals" INT,
	"type" CHAR,
	"displaymode" CHAR,
	"addtonew" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_966529834584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id"),
	 CONSTRAINT "FK_9665298362D643B7" FOREIGN KEY ("attribute_group_id") REFERENCES "xlite_attribute_groups" ("id"),
	 CONSTRAINT "FK_9665298321B06187" FOREIGN KEY ("product_class_id") REFERENCES "xlite_product_classes" ("id")
);

CREATE TABLE "xlite_attribute_values_text" (
	"id" INT,
	"product_id" INT,
	"attribute_id" INT,
	"editable" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_560D03DA4584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id"),
	 CONSTRAINT "FK_560D03DAB6E62EFA" FOREIGN KEY ("attribute_id") REFERENCES "xlite_attributes" ("id")
);

CREATE TABLE "xlite_attribute_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"unit" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_8BBAD04BBF396750" FOREIGN KEY ("id") REFERENCES "xlite_attributes" ("id")
);

CREATE TABLE "xlite_quick_data" (
	"id" INT,
	"product_id" INT,
	"membership_id" INT,
	"zone_id" INT,
	"price" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_C6F6D1AD4584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_product_images" (
	"id" INT,
	"product_id" INT,
	"orderby" INT,
	"alt" VARCHAR,
	"width" INT,
	"height" INT,
	"hash" CHAR,
	"needprocess" TINYINT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_142C546A4584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_sale_discount_products" (
	"id" INT,
	"sale_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_9651D9A14584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_attribute_properties" (
	"id" INT,
	"product_id" INT,
	"attribute_id" INT,
	"position" INT,
	"displayabove" TINYINT,
	"displaymode" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_3C3647F44584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_attribute_values_hidden" (
	"id" INT,
	"attribute_option_id" INT,
	"product_id" INT,
	"attribute_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_A68A8FD64584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_product_attachments" (
	"id" INT,
	"product_id" INT,
	"private" TINYINT,
	"orderby" INT,
	"access" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_A8FB24FA4584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_order_item_private_attachments" (
	"id" INT,
	"item_id" INT,
	"attachment_id" INT,
	"title" VARCHAR,
	"downloadkey" CHAR,
	"expire" INT,
	"attempt" INT,
	"attemptlimit" INT,
	"blocked" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_BC5B98F1464E68B" FOREIGN KEY ("attachment_id") REFERENCES "xlite_product_attachments" ("id")
);

CREATE TABLE "xlite_product_attachment_translations" (
	"label_id" INT,
	"id" INT,
	"title" VARCHAR,
	"description" LONGTEXT,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_C05C8533BF396750" FOREIGN KEY ("id") REFERENCES "xlite_product_attachments" ("id")
);

CREATE TABLE "xlite_attribute_values_checkbox" (
	"id" INT,
	"product_id" INT,
	"attribute_id" INT,
	"value" TINYINT,
	"xpaymentssubscriptionfeemodifier" DECIMAL,
	"xpaymentssubscriptionfeemodifiertype" CHAR,
	"pricemodifier" DECIMAL,
	"pricemodifiertype" CHAR,
	"weightmodifier" DECIMAL,
	"weightmodifiertype" CHAR,
	"defaultvalue" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_3CA3503B4584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_attribute_values_checkbox_translations" (
	"label_id" INT,
	"id" INT,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_5A770E51BF396750" FOREIGN KEY ("id") REFERENCES "xlite_attribute_values_checkbox" ("id")
);

CREATE TABLE "xlite_segment_products" (
	"segment_id" VARCHAR,
	"product_id" INT,
	 PRIMARY KEY ("segment_id","product_id"),
	 CONSTRAINT "FK_768E358D4584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_coupon_products" (
	"id" INT,
	"coupon_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_7B142C324584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_upselling_products" (
	"id" INT,
	"product_id" INT,
	"parent_product_id" INT,
	"orderby" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_1DF3D3E12C7E20A" FOREIGN KEY ("parent_product_id") REFERENCES "xlite_products" ("product_id"),
	 CONSTRAINT "FK_1DF3D3E14584665A" FOREIGN KEY ("product_id") REFERENCES "xlite_products" ("product_id")
);

CREATE TABLE "xlite_product_translations" (
	"label_id" INT,
	"id" INT,
	"ogmeta" LONGTEXT,
	"name" VARCHAR,
	"description" LONGTEXT,
	"briefdescription" LONGTEXT,
	"metatags" VARCHAR,
	"metadesc" LONGTEXT,
	"metatitle" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_membership_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_content_videos" (
	"id" INT,
	"path" VARCHAR,
	"filename" VARCHAR,
	"mime" VARCHAR,
	"storagetype" VARCHAR,
	"size" INT,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_attribute_values_hidden_translations" (
	"label_id" INT,
	"id" INT,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_product_stats" (
	"stat_id" INT,
	"viewed_product_id" INT,
	"bought_product_id" INT,
	"count" INT,
	 PRIMARY KEY ("stat_id")
);

CREATE TABLE "xlite_tags" (
	"id" INT,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_tag_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_EDCE6447BF396750" FOREIGN KEY ("id") REFERENCES "xlite_tags" ("id")
);

CREATE TABLE "xlite_attribute_values_text_translations" (
	"label_id" INT,
	"id" INT,
	"value" LONGTEXT,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_theme_tweaker_template" (
	"id" INT,
	"enabled" TINYINT,
	"template" VARCHAR,
	"date" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_attribute_values_select" (
	"id" INT,
	"attribute_option_id" INT,
	"product_id" INT,
	"attribute_id" INT,
	"position" INT,
	"xpaymentssubscriptionfeemodifier" DECIMAL,
	"xpaymentssubscriptionfeemodifiertype" CHAR,
	"pricemodifier" DECIMAL,
	"pricemodifiertype" CHAR,
	"weightmodifier" DECIMAL,
	"weightmodifiertype" CHAR,
	"defaultvalue" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_order_item_attribute_values" (
	"id" INT,
	"item_id" INT,
	"attribute_value_checkbox_id" INT,
	"attribute_value_select_id" INT,
	"attribute_value_text_id" INT,
	"name" VARCHAR,
	"value" VARCHAR,
	"attributeid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_46E30CEA571B5A02" FOREIGN KEY ("attribute_value_checkbox_id") REFERENCES "xlite_attribute_values_checkbox" ("id"),
	 CONSTRAINT "FK_46E30CEAA16D6CC9" FOREIGN KEY ("attribute_value_select_id") REFERENCES "xlite_attribute_values_select" ("id")
);

CREATE TABLE "xlite_attribute_values_select_translations" (
	"label_id" INT,
	"id" INT,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_CDF9A7AFBF396750" FOREIGN KEY ("id") REFERENCES "xlite_attribute_values_select" ("id")
);

CREATE TABLE "xlite_data_source_parameters" (
	"id" INT,
	"data_source_id" INT,
	"name" VARCHAR,
	"value" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_product_tabs" (
	"id" INT,
	"product_id" INT,
	"global_tab_id" INT,
	"position" INT,
	"enabled" TINYINT,
	"link" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xlite_product_tab_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"brief_info" LONGTEXT,
	"content" LONGTEXT,
	"code" CHAR,
	 PRIMARY KEY ("label_id"),
	 CONSTRAINT "FK_D669DEC9BF396750" FOREIGN KEY ("id") REFERENCES "xlite_product_tabs" ("id")
);

CREATE TABLE "xlite_language_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);

CREATE TABLE "xlite_attribute_option_translations" (
	"label_id" INT,
	"id" INT,
	"name" VARCHAR,
	"code" CHAR,
	 PRIMARY KEY ("label_id")
);
