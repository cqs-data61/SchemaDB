DROP DATABASE IF EXISTS "schema243";
CREATE DATABASE "schema243";
USE "schema243";
CREATE TABLE "notifdet" (
	"iddu" VARCHAR,
	"sku_id" VARCHAR,
	"name" VARCHAR,
	"expiration_date" DATE,
	"production_date" DATE,
	"lot" VARCHAR,
	"marker" VARCHAR,
	"marker2" VARCHAR,
	"marker3" VARCHAR,
	"qty" INTEGER,
	"comments" VARCHAR,
	"serial_num" VARCHAR
);

CREATE TABLE "notif" (
	"dt_sost" DATE,
	"dt_sost_end" DATE,
	"sost_doc" VARCHAR,
	"sost_prm" VARCHAR,
	"id_du" VARCHAR,
	"dt_veh" DATE,
	"id_suppl" VARCHAR,
	"id_klient" INTEGER,
	"n_zak" VARCHAR,
	"ur_adr" VARCHAR,
	"n_avto" VARCHAR,
	"vodit" VARCHAR,
	"id_usr" VARCHAR,
	"id_obsl" VARCHAR
);

CREATE TABLE "detail" (
	"rownum" INTEGER,
	"iddu" VARCHAR,
	"sku_id" VARCHAR,
	"name" VARCHAR,
	"expiration_date" DATE,
	"production_date" DATE,
	"lot" VARCHAR,
	"marker" VARCHAR,
	"marker2" VARCHAR,
	"marker3" VARCHAR,
	"qty" INTEGER,
	"comments" VARCHAR,
	"serial_num" VARCHAR
);

CREATE TABLE "master" (
	"order_id" VARCHAR,
	"dt_sost" DATE,
	"dt_sost_end" DATE,
	"sost_doc" VARCHAR,
	"sost_prm" VARCHAR,
	"id_du" VARCHAR,
	"dt_veh" DATE,
	"id_suppl" VARCHAR,
	"id_klient" INTEGER,
	"n_zak" VARCHAR,
	"ur_adr" VARCHAR,
	"n_avto" VARCHAR,
	"vodit" VARCHAR,
	"id_usr" VARCHAR,
	"id_obsl" VARCHAR
);

CREATE TABLE "kb_t_article" (
	"id_sost" VARCHAR,
	"marker" VARCHAR,
	"price" VARCHAR,
	"comments" VARCHAR,
	"tip_tov" VARCHAR,
	"num" VARCHAR,
	"categ" VARCHAR,
	"upc" VARCHAR,
	"code" VARCHAR,
	"expiry_date" VARCHAR,
	"str_sr_godn" VARCHAR,
	"str_part" VARCHAR,
	"str_sscc" VARCHAR,
	"str_sert" VARCHAR,
	"str_mu_code" VARCHAR,
	"n_mu_unit" VARCHAR,
	"abc" VARCHAR,
	"storage_pos" VARCHAR,
	"producer" VARCHAR,
	"vendor" VARCHAR,
	"coo" VARCHAR,
	"measure" VARCHAR,
	"kit_type" VARCHAR,
	"usage_state" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "sv_hvoc" (
	"val_id" VARCHAR,
	"hvoc_val_id" VARCHAR,
	"voc_id" VARCHAR,
	"val_full" VARCHAR,
	"val_short" VARCHAR,
	"val_state" VARCHAR,
	"val_changes" VARCHAR,
	"tools" VARCHAR,
	"data_begin" DATE,
	"data_end" DATE,
	"master_val_id" VARCHAR,
	"police_code" VARCHAR
);

CREATE TABLE "kb_zak" (
	"id" VARCHAR,
	"id_svh" VARCHAR,
	"id_wms" VARCHAR,
	"is_holder" NUMBER,
	"id_usr" VARCHAR,
	"n_zak" VARCHAR,
	"id_klient" NUMBER,
	"prf_wms" VARCHAR,
	 PRIMARY KEY ("id")
);
