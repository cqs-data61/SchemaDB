DROP DATABASE IF EXISTS "schema1854";
CREATE DATABASE "schema1854";
USE "schema1854";
CREATE TABLE "ping_graph_series" (
	"graph_id" VARCHAR,
	"ping_probe_id" VARCHAR,
	"function_type" VARCHAR,
	"style_type" VARCHAR
);

CREATE TABLE "snmp_graph_series" (
	"graph_id" VARCHAR,
	"snmp_probe_id" VARCHAR,
	"function_type" VARCHAR,
	"style_type" VARCHAR
);

CREATE TABLE "graphs" (
	"id" VARCHAR,
	"title" VARCHAR,
	"graph_type" VARCHAR,
	"unit_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "links" (
	"id" VARCHAR,
	"link_type_id" VARCHAR,
	"map_id" VARCHAR,
	"snmp_probe_id" VARCHAR,
	"source_node_id" VARCHAR,
	"target_node_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "link_types" (
	"id" VARCHAR,
	"name" VARCHAR,
	"code" VARCHAR,
	"stroke_style" VARCHAR,
	"line_width" INTEGER,
	"line_dash" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "map_shortcut_nodes" (
	"id" VARCHAR,
	"name" VARCHAR,
	"x_pos" INTEGER,
	"y_pos" INTEGER,
	"map_id" VARCHAR,
	"anchor_map_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "unmanaged_device_nodes" (
	"id" VARCHAR,
	"name" VARCHAR,
	"x_pos" INTEGER,
	"y_pos" INTEGER,
	"map_id" VARCHAR,
	"unmanaged_device_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "managed_device_nodes" (
	"id" VARCHAR,
	"name" VARCHAR,
	"x_pos" INTEGER,
	"y_pos" INTEGER,
	"managed_device_id" VARCHAR,
	"map_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "unmanaged_devices" (
	"id" VARCHAR,
	"name" VARCHAR,
	"serial_number" VARCHAR,
	"device_type_id" VARCHAR,
	"vendor_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snmp_probes" (
	"id" VARCHAR,
	"interface_index" INTEGER,
	"interface_name" VARCHAR,
	"interval" INTEGER,
	"managed_device_id" VARCHAR,
	"snmp_oid_id" VARCHAR,
	"snmp_profile_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ping_probes" (
	"id" VARCHAR,
	"interval" INTEGER,
	"managed_device_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "imap_probes" (
	"id" VARCHAR,
	"interval" INTEGER,
	"managed_device_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "http_probes" (
	"id" VARCHAR,
	"interval" INTEGER,
	"managed_device_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "managed_devices" (
	"id" VARCHAR,
	"ip_address" VARCHAR,
	"mac_address" VARCHAR,
	"serial_number" VARCHAR,
	"name" VARCHAR,
	"poll_shift" INTEGER,
	"device_type_id" VARCHAR,
	"vendor_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vendors" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snmp_oids_templates_items" (
	"template_id" VARCHAR,
	"snmp_oid_id" VARCHAR
);

CREATE TABLE "snmp_oids_templates" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"need_interface" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snmp_profiles" (
	"id" VARCHAR,
	"community" VARCHAR,
	"name" VARCHAR,
	"version" VARCHAR,
	"port" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snmp_oids" (
	"id" VARCHAR,
	"default_interval" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"need_interface" BOOLEAN,
	"oid" VARCHAR,
	"snmp_type" VARCHAR,
	"delta" BOOLEAN,
	"multiplier" DOUBLE PRECISION,
	"unit_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "maps" (
	"id" VARCHAR,
	"background_color" VARCHAR,
	"name" VARCHAR,
	"slug" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "device_types" (
	"id" VARCHAR,
	"description" VARCHAR,
	"image_source" TEXT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "units" (
	"id" VARCHAR,
	"name" VARCHAR,
	"symbol" VARCHAR,
	"calculate_prefix" BOOLEAN,
	"base" INTEGER,
	"exponent" INTEGER,
	"is_custom" BOOLEAN,
	 PRIMARY KEY ("id")
);
