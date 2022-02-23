DROP DATABASE IF EXISTS "schema1750";
CREATE DATABASE "schema1750";
USE "schema1750";
CREATE TABLE "port_profile" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"port_profile_name" VARCHAR,
	"port_mode" VARCHAR,
	"vsm_id" BIGINT,
	"trunk_low_vlan_id" INT,
	"trunk_high_vlan_id" INT,
	"access_vlan_id" INT,
	"port_type" VARCHAR,
	"port_binding" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "virtual_supervisor_module" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"host_id" BIGINT,
	"vsm_name" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"ipaddr" VARCHAR,
	"management_vlan" INT,
	"control_vlan" INT,
	"packet_vlan" INT,
	"storage_vlan" INT,
	"vsm_domain_id" BIGINT,
	"config_mode" VARCHAR,
	"config_state" VARCHAR,
	"vsm_device_state" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cluster_vsm_map" (
	"cluster_id" BIGINT,
	"vsm_id" BIGINT,
	 PRIMARY KEY ("cluster_id")
);

CREATE TABLE "op_user_stats_log" (
	"user_stats_id" BIGINT,
	"net_bytes_received" BIGINT,
	"net_bytes_sent" BIGINT,
	"current_bytes_received" BIGINT,
	"current_bytes_sent" BIGINT,
	"agg_bytes_received" BIGINT,
	"agg_bytes_sent" BIGINT,
	"updated" DATETIME
);

CREATE TABLE "swift" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"url" VARCHAR,
	"account" VARCHAR,
	"username" VARCHAR,
	"key" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "keystore" (
	"id" BIGINT,
	"name" VARCHAR,
	"certificate" TEXT,
	"key" TEXT,
	"domain_suffix" VARCHAR,
	"seq" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "storage_pool_work" (
	"id" BIGINT,
	"pool_id" BIGINT,
	"vm_id" BIGINT,
	"stopped_for_maintenance" TINYINT,
	"started_after_maintenance" TINYINT,
	"mgmt_server_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ovs_tunnel_network" (
	"id" BIGINT,
	"from" BIGINT,
	"to" BIGINT,
	"network_id" BIGINT,
	"key" INT,
	"port_name" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("from","to","network_id")
);

CREATE TABLE "ovs_tunnel_interface" (
	"id" BIGINT,
	"ip" VARCHAR,
	"netmask" VARCHAR,
	"mac" VARCHAR,
	"host_id" BIGINT,
	"label" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usage_event" (
	"id" BIGINT,
	"type" VARCHAR,
	"account_id" BIGINT,
	"created" DATETIME,
	"zone_id" BIGINT,
	"resource_id" BIGINT,
	"resource_name" VARCHAR,
	"offering_id" BIGINT,
	"template_id" BIGINT,
	"size" BIGINT,
	"resource_type" VARCHAR,
	"processed" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "op_vm_ruleset_log" (
	"id" BIGINT,
	"instance_id" BIGINT,
	"created" DATETIME,
	"logsequence" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "op_nwgrp_work" (
	"id" BIGINT,
	"instance_id" BIGINT,
	"mgmt_server_id" BIGINT,
	"created" DATETIME,
	"taken" DATETIME,
	"step" VARCHAR,
	"seq_no" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "op_pod_vlan_alloc" (
	"id" BIGINT,
	"vlan" VARCHAR,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"account_id" BIGINT,
	"taken" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snapshot_policy" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"volume_id" BIGINT,
	"schedule" VARCHAR,
	"timezone" VARCHAR,
	"interval" INT,
	"max_snaps" INT,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "launch_permission" (
	"id" BIGINT,
	"template_id" BIGINT,
	"account_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hypervisor_capabilities" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"hypervisor_type" VARCHAR,
	"hypervisor_version" VARCHAR,
	"max_guests_limit" BIGINT,
	"security_group_enabled" INT,
	"max_data_volumes_limit" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "guest_os_category" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "guest_os_hypervisor" (
	"id" BIGINT,
	"hypervisor_type" VARCHAR,
	"guest_os_name" VARCHAR,
	"guest_os_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "guest_os" (
	"id" BIGINT,
	"category_id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"display_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "network_rule_config" (
	"id" BIGINT,
	"security_group_id" BIGINT,
	"public_port" VARCHAR,
	"private_port" VARCHAR,
	"protocol" VARCHAR,
	"create_status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "disk_offering" (
	"id" BIGINT,
	"domain_id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"display_text" VARCHAR,
	"disk_size" BIGINT,
	"type" VARCHAR,
	"tags" VARCHAR,
	"recreatable" TINYINT,
	"use_local_storage" TINYINT,
	"unique_name" VARCHAR,
	"system_use" TINYINT,
	"customized" TINYINT,
	"removed" DATETIME,
	"created" DATETIME,
	"sort_key" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service_offering" (
	"id" BIGINT,
	"cpu" INT,
	"speed" INT,
	"ram_size" BIGINT,
	"nw_rate" SMALLINT,
	"mc_rate" SMALLINT,
	"ha_enabled" TINYINT,
	"limit_cpu_use" TINYINT,
	"host_tag" VARCHAR,
	"default_use" TINYINT,
	"vm_type" VARCHAR,
	"sort_key" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_service_offering__id" FOREIGN KEY ("id") REFERENCES "disk_offering" ("id")
);

CREATE TABLE "vpc_offerings" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"unique_name" VARCHAR,
	"name" VARCHAR,
	"display_text" VARCHAR,
	"state" CHAR,
	"default" INT,
	"removed" DATETIME,
	"created" DATETIME,
	"service_offering_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vpc_offerings__service_offering_id" FOREIGN KEY ("service_offering_id") REFERENCES "service_offering" ("id")
);

CREATE TABLE "vpc_offering_service_map" (
	"id" BIGINT,
	"vpc_offering_id" BIGINT,
	"service" VARCHAR,
	"provider" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vpc_offering_service_map__vpc_offering_id" FOREIGN KEY ("vpc_offering_id") REFERENCES "vpc_offerings" ("id")
);

CREATE TABLE "stack_maid" (
	"id" BIGINT,
	"msid" BIGINT,
	"thread_id" BIGINT,
	"seq" INT,
	"cleanup_delegate" VARCHAR,
	"cleanup_context" TEXT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sync_queue" (
	"id" BIGINT,
	"sync_objtype" VARCHAR,
	"sync_objid" BIGINT,
	"queue_proc_msid" BIGINT,
	"queue_proc_number" BIGINT,
	"queue_proc_time" DATETIME,
	"created" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sync_queue_item" (
	"id" BIGINT,
	"queue_id" BIGINT,
	"content_type" VARCHAR,
	"content_id" BIGINT,
	"queue_proc_msid" BIGINT,
	"queue_proc_number" BIGINT,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_sync_queue_item__queue_id" FOREIGN KEY ("queue_id") REFERENCES "sync_queue" ("id")
);

CREATE TABLE "async_job" (
	"id" BIGINT,
	"user_id" BIGINT,
	"account_id" BIGINT,
	"session_key" VARCHAR,
	"instance_type" VARCHAR,
	"instance_id" BIGINT,
	"job_cmd" VARCHAR,
	"job_cmd_originator" VARCHAR,
	"job_cmd_info" TEXT,
	"job_cmd_ver" INT,
	"callback_type" INT,
	"callback_address" VARCHAR,
	"job_status" INT,
	"job_process_status" INT,
	"job_result_code" INT,
	"job_result" TEXT,
	"job_init_msid" BIGINT,
	"job_complete_msid" BIGINT,
	"created" DATETIME,
	"last_updated" DATETIME,
	"last_polled" DATETIME,
	"removed" DATETIME,
	"uuid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "alert" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"type" INT,
	"cluster_id" BIGINT,
	"pod_id" BIGINT,
	"data_center_id" BIGINT,
	"subject" VARCHAR,
	"sent_count" INT,
	"created" DATETIME,
	"last_sent" DATETIME,
	"resolved" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "op_host_capacity" (
	"id" BIGINT,
	"host_id" BIGINT,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"cluster_id" BIGINT,
	"used_capacity" BIGINT,
	"reserved_capacity" BIGINT,
	"total_capacity" BIGINT,
	"capacity_type" INT,
	"capacity_state" VARCHAR,
	"update_time" DATETIME,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "domain" (
	"id" BIGINT,
	"parent" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"owner" BIGINT,
	"path" VARCHAR,
	"level" INT,
	"child_count" INT,
	"next_child_seq" BIGINT,
	"removed" DATETIME,
	"state" CHAR,
	"network_domain" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vm_template" (
	"id" BIGINT,
	"unique_name" VARCHAR,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"public" INT,
	"featured" INT,
	"type" VARCHAR,
	"hvm" INT,
	"bits" INT,
	"url" VARCHAR,
	"format" VARCHAR,
	"created" DATETIME,
	"removed" DATETIME,
	"account_id" BIGINT,
	"checksum" VARCHAR,
	"display_text" VARCHAR,
	"enable_password" INT,
	"enable_sshkey" INT,
	"guest_os_id" BIGINT,
	"bootable" INT,
	"prepopulate" INT,
	"cross_zones" INT,
	"extractable" INT,
	"hypervisor_type" VARCHAR,
	"source_template_id" BIGINT,
	"template_tag" VARCHAR,
	"sort_key" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "template_swift_ref" (
	"id" BIGINT,
	"swift_id" BIGINT,
	"template_id" BIGINT,
	"created" DATETIME,
	"path" VARCHAR,
	"size" BIGINT,
	"physical_size" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_template_swift_ref__template_id" FOREIGN KEY ("template_id") REFERENCES "vm_template" ("id")
);

CREATE TABLE "vm_template_details" (
	"id" BIGINT,
	"template_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vm_template_details__template_id" FOREIGN KEY ("template_id") REFERENCES "vm_template" ("id")
);

CREATE TABLE "user_statistics" (
	"id" BIGINT,
	"data_center_id" BIGINT,
	"account_id" BIGINT,
	"public_ip_address" CHAR,
	"device_id" BIGINT,
	"device_type" VARCHAR,
	"network_id" BIGINT,
	"net_bytes_received" BIGINT,
	"net_bytes_sent" BIGINT,
	"current_bytes_received" BIGINT,
	"current_bytes_sent" BIGINT,
	"agg_bytes_received" BIGINT,
	"agg_bytes_sent" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"type" VARCHAR,
	"state" VARCHAR,
	"description" VARCHAR,
	"user_id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"created" DATETIME,
	"level" VARCHAR,
	"start_id" BIGINT,
	"parameters" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"account_id" BIGINT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"state" VARCHAR,
	"api_key" VARCHAR,
	"secret_key" VARCHAR,
	"created" DATETIME,
	"removed" DATETIME,
	"timezone" VARCHAR,
	"registration_token" VARCHAR,
	"is_registered" TINYINT,
	"incorrect_login_attempts" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mshost" (
	"id" BIGINT,
	"msid" BIGINT,
	"runid" BIGINT,
	"name" VARCHAR,
	"state" VARCHAR,
	"version" VARCHAR,
	"service_ip" CHAR,
	"service_port" INTEGER,
	"last_update" DATETIME,
	"removed" DATETIME,
	"alert_count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mshost_peer" (
	"id" BIGINT,
	"owner_mshost" BIGINT,
	"peer_mshost" BIGINT,
	"peer_runid" BIGINT,
	"peer_state" VARCHAR,
	"last_update" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_mshost_peer__peer_mshost" FOREIGN KEY ("peer_mshost") REFERENCES "mshost" ("id"),
	 CONSTRAINT "fk_mshost_peer__owner_mshost" FOREIGN KEY ("owner_mshost") REFERENCES "mshost" ("id")
);

CREATE TABLE "account_details" (
	"id" BIGINT,
	"account_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "host_pod_ref" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"data_center_id" BIGINT,
	"gateway" VARCHAR,
	"cidr_address" VARCHAR,
	"cidr_size" BIGINT,
	"description" VARCHAR,
	"allocation_state" VARCHAR,
	"external_dhcp" TINYINT,
	"removed" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "op_dc_link_local_ip_address_alloc" (
	"id" BIGINT,
	"ip_address" CHAR,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"nic_id" BIGINT,
	"reservation_id" CHAR,
	"taken" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "data_center" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"description" VARCHAR,
	"dns1" VARCHAR,
	"dns2" VARCHAR,
	"internal_dns1" VARCHAR,
	"internal_dns2" VARCHAR,
	"gateway" VARCHAR,
	"netmask" VARCHAR,
	"router_mac_address" VARCHAR,
	"mac_address" BIGINT,
	"guest_network_cidr" VARCHAR,
	"domain" VARCHAR,
	"domain_id" BIGINT,
	"networktype" VARCHAR,
	"dns_provider" CHAR,
	"gateway_provider" CHAR,
	"firewall_provider" CHAR,
	"dhcp_provider" CHAR,
	"lb_provider" CHAR,
	"vpn_provider" CHAR,
	"userdata_provider" CHAR,
	"allocation_state" VARCHAR,
	"zone_token" VARCHAR,
	"is_security_group_enabled" TINYINT,
	"is_local_storage_enabled" TINYINT,
	"removed" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "physical_network" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"name" VARCHAR,
	"data_center_id" BIGINT,
	"vnet" VARCHAR,
	"speed" VARCHAR,
	"domain_id" BIGINT,
	"broadcast_domain_range" VARCHAR,
	"state" VARCHAR,
	"created" DATETIME,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_physical_network__data_center_id" FOREIGN KEY ("data_center_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_physical_network__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "physical_network_service_providers" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"physical_network_id" BIGINT,
	"provider_name" VARCHAR,
	"state" VARCHAR,
	"destination_physical_network_id" BIGINT,
	"vpn_service_provided" TINYINT,
	"dhcp_service_provided" TINYINT,
	"dns_service_provided" TINYINT,
	"gateway_service_provided" TINYINT,
	"firewall_service_provided" TINYINT,
	"source_nat_service_provided" TINYINT,
	"load_balance_service_provided" TINYINT,
	"static_nat_service_provided" TINYINT,
	"port_forwarding_service_provided" TINYINT,
	"user_data_service_provided" TINYINT,
	"security_group_service_provided" TINYINT,
	"networkacl_service_provided" TINYINT,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_pnetwork_service_providers__physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id")
);

CREATE TABLE "virtual_router_providers" (
	"id" BIGINT,
	"nsp_id" BIGINT,
	"uuid" VARCHAR,
	"type" VARCHAR,
	"enabled" INT,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_virtual_router_providers__nsp_id" FOREIGN KEY ("nsp_id") REFERENCES "physical_network_service_providers" ("id")
);

CREATE TABLE "physical_network_traffic_types" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"physical_network_id" BIGINT,
	"traffic_type" VARCHAR,
	"xen_network_label" VARCHAR,
	"kvm_network_label" VARCHAR,
	"vmware_network_label" VARCHAR,
	"simulator_network_label" VARCHAR,
	"ovm_network_label" VARCHAR,
	"vlan" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_physical_network_traffic_types__physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id")
);

CREATE TABLE "physical_network_isolation_methods" (
	"id" BIGINT,
	"physical_network_id" BIGINT,
	"isolation_method" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_physical_network_imethods__physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id")
);

CREATE TABLE "physical_network_tags" (
	"id" BIGINT,
	"physical_network_id" BIGINT,
	"tag" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_physical_network_tags__physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id")
);

CREATE TABLE "data_center_details" (
	"id" BIGINT,
	"dc_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_dc_details__dc_id" FOREIGN KEY ("dc_id") REFERENCES "data_center" ("id")
);

CREATE TABLE "account" (
	"id" BIGINT,
	"account_name" VARCHAR,
	"uuid" VARCHAR,
	"type" INT,
	"domain_id" BIGINT,
	"state" VARCHAR,
	"removed" DATETIME,
	"cleanup_needed" TINYINT,
	"network_domain" VARCHAR,
	"default_zone_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_account__default_zone_id" FOREIGN KEY ("default_zone_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_account__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "resource_tags" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"key" VARCHAR,
	"value" VARCHAR,
	"resource_id" BIGINT,
	"resource_uuid" VARCHAR,
	"resource_type" VARCHAR,
	"customer" VARCHAR,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_tags__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_tags__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "vpc" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"name" VARCHAR,
	"display_text" VARCHAR,
	"cidr" VARCHAR,
	"vpc_offering_id" BIGINT,
	"zone_id" BIGINT,
	"state" VARCHAR,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	"network_domain" VARCHAR,
	"removed" DATETIME,
	"created" DATETIME,
	"restart_required" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vpc__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_vpc__zone_id" FOREIGN KEY ("zone_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_vpc__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "s2s_customer_gateway" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"name" VARCHAR,
	"gateway_ip" CHAR,
	"guest_cidr_list" VARCHAR,
	"ipsec_psk" VARCHAR,
	"ike_policy" VARCHAR,
	"esp_policy" VARCHAR,
	"ike_lifetime" INT,
	"esp_lifetime" INT,
	"dpd" INT,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_s2s_customer_gateway__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_s2s_customer_gateway__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "projects" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"display_text" VARCHAR,
	"project_account_id" BIGINT,
	"domain_id" BIGINT,
	"created" DATETIME,
	"removed" DATETIME,
	"state" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_projects__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_projects__project_account_id" FOREIGN KEY ("project_account_id") REFERENCES "account" ("id")
);

CREATE TABLE "project_invitations" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"project_id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"email" VARCHAR,
	"token" VARCHAR,
	"state" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_project_invitations__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_project_invitations__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_project_invitations__project_id" FOREIGN KEY ("project_id") REFERENCES "projects" ("id")
);

CREATE TABLE "project_account" (
	"id" BIGINT,
	"account_id" BIGINT,
	"account_role" VARCHAR,
	"project_id" BIGINT,
	"project_account_id" BIGINT,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_project_account__project_id" FOREIGN KEY ("project_id") REFERENCES "projects" ("id"),
	 CONSTRAINT "fk_project_account__project_account_id" FOREIGN KEY ("project_account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_project_account__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "ssh_keypairs" (
	"id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"keypair_name" VARCHAR,
	"fingerprint" VARCHAR,
	"public_key" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ssh_keypairs__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_ssh_keypairs__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "instance_group" (
	"id" BIGINT,
	"account_id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"removed" DATETIME,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_instance_group__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "security_group" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"description" VARCHAR,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_security_group__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_security_group__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "security_group_rule" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"security_group_id" BIGINT,
	"type" VARCHAR,
	"start_port" VARCHAR,
	"end_port" VARCHAR,
	"protocol" VARCHAR,
	"allowed_network_id" BIGINT,
	"allowed_ip_cidr" VARCHAR,
	"create_status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_security_group_rule___security_group_id" FOREIGN KEY ("security_group_id") REFERENCES "security_group" ("id"),
	 CONSTRAINT "fk_security_group_rule___allowed_network_id" FOREIGN KEY ("allowed_network_id") REFERENCES "security_group" ("id")
);

CREATE TABLE "vpn_users" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"owner_id" BIGINT,
	"domain_id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"state" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vpn_users__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_vpn_users__owner_id" FOREIGN KEY ("owner_id") REFERENCES "account" ("id")
);

CREATE TABLE "resource_count" (
	"id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"type" VARCHAR,
	"count" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_resource_count__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_resource_count__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "resource_limit" (
	"id" BIGINT,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	"type" VARCHAR,
	"max" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_resource_limit__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_resource_limit__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "template_zone_ref" (
	"id" BIGINT,
	"zone_id" BIGINT,
	"template_id" BIGINT,
	"created" DATETIME,
	"last_updated" DATETIME,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_template_zone_ref__zone_id" FOREIGN KEY ("zone_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_template_zone_ref__template_id" FOREIGN KEY ("template_id") REFERENCES "vm_template" ("id")
);

CREATE TABLE "op_dc_vnet_alloc" (
	"id" BIGINT,
	"vnet" VARCHAR,
	"physical_network_id" BIGINT,
	"data_center_id" BIGINT,
	"reservation_id" CHAR,
	"account_id" BIGINT,
	"taken" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_op_dc_vnet_alloc__data_center_id" FOREIGN KEY ("data_center_id") REFERENCES "data_center" ("id")
);

CREATE TABLE "op_dc_ip_address_alloc" (
	"id" BIGINT,
	"ip_address" CHAR,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"nic_id" BIGINT,
	"reservation_id" CHAR,
	"taken" DATETIME,
	"mac_address" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_op_dc_ip_address_alloc__data_center_id" FOREIGN KEY ("data_center_id") REFERENCES "data_center" ("id")
);

CREATE TABLE "vlan" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"vlan_id" VARCHAR,
	"vlan_gateway" VARCHAR,
	"vlan_netmask" VARCHAR,
	"description" VARCHAR,
	"vlan_type" VARCHAR,
	"data_center_id" BIGINT,
	"network_id" BIGINT,
	"physical_network_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_vlan_map" (
	"id" BIGINT,
	"account_id" BIGINT,
	"vlan_db_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_account_vlan_map__vlan_id" FOREIGN KEY ("vlan_db_id") REFERENCES "vlan" ("id")
);

CREATE TABLE "pod_vlan_map" (
	"id" BIGINT,
	"pod_id" BIGINT,
	"vlan_db_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_pod_vlan_map__vlan_id" FOREIGN KEY ("vlan_db_id") REFERENCES "vlan" ("id")
);

CREATE TABLE "snapshots" (
	"id" BIGINT,
	"data_center_id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"volume_id" BIGINT,
	"disk_offering_id" BIGINT,
	"status" VARCHAR,
	"path" VARCHAR,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"snapshot_type" INT,
	"type_description" VARCHAR,
	"size" BIGINT,
	"created" DATETIME,
	"removed" DATETIME,
	"backup_snap_id" VARCHAR,
	"swift_id" BIGINT,
	"sechost_id" BIGINT,
	"prev_snap_id" BIGINT,
	"hypervisor_type" VARCHAR,
	"version" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "volumes" (
	"id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"pool_id" BIGINT,
	"last_pool_id" BIGINT,
	"instance_id" BIGINT,
	"device_id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"size" BIGINT,
	"folder" VARCHAR,
	"path" VARCHAR,
	"pod_id" BIGINT,
	"data_center_id" BIGINT,
	"iscsi_name" VARCHAR,
	"host_ip" CHAR,
	"volume_type" VARCHAR,
	"pool_type" VARCHAR,
	"disk_offering_id" BIGINT,
	"template_id" BIGINT,
	"first_snapshot_backup_uuid" VARCHAR,
	"recreatable" TINYINT,
	"created" DATETIME,
	"attached" DATETIME,
	"updated" DATETIME,
	"removed" DATETIME,
	"state" VARCHAR,
	"chain_info" TEXT,
	"update_count" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snapshot_schedule" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"volume_id" BIGINT,
	"policy_id" BIGINT,
	"scheduled_timestamp" DATETIME,
	"async_job_id" BIGINT,
	"snapshot_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk__snapshot_schedule_policy_id" FOREIGN KEY ("policy_id") REFERENCES "snapshot_policy" ("id"),
	 CONSTRAINT "fk__snapshot_schedule_async_job_id" FOREIGN KEY ("async_job_id") REFERENCES "async_job" ("id"),
	 CONSTRAINT "fk__snapshot_schedule_volume_id" FOREIGN KEY ("volume_id") REFERENCES "volumes" ("id"),
	 CONSTRAINT "fk__snapshot_schedule_snapshot_id" FOREIGN KEY ("snapshot_id") REFERENCES "snapshots" ("id")
);

CREATE TABLE "sequence" (
	"name" VARCHAR,
	"value" BIGINT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "op_ha_work" (
	"id" BIGINT,
	"instance_id" BIGINT,
	"type" VARCHAR,
	"vm_type" VARCHAR,
	"state" VARCHAR,
	"mgmt_server_id" BIGINT,
	"host_id" BIGINT,
	"created" DATETIME,
	"tried" INT,
	"taken" DATETIME,
	"step" VARCHAR,
	"time_to_try" BIGINT,
	"updated" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "configuration" (
	"category" VARCHAR,
	"instance" VARCHAR,
	"component" VARCHAR,
	"name" VARCHAR,
	"value" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "op_lock" (
	"key" VARCHAR,
	"mac" VARCHAR,
	"ip" CHAR,
	"thread" VARCHAR,
	"acquired_on" TIMESTAMP,
	"waiters" INT,
	 PRIMARY KEY ("key")
);

CREATE TABLE "op_host_upgrade" (
	"host_id" BIGINT,
	"version" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("host_id")
);

CREATE TABLE "cluster" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"guid" VARCHAR,
	"pod_id" BIGINT,
	"data_center_id" BIGINT,
	"hypervisor_type" VARCHAR,
	"cluster_type" VARCHAR,
	"allocation_state" VARCHAR,
	"managed_state" VARCHAR,
	"removed" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "storage_pool" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"pool_type" VARCHAR,
	"port" INT,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"cluster_id" BIGINT,
	"available_bytes" BIGINT,
	"capacity_bytes" BIGINT,
	"host_address" VARCHAR,
	"user_info" VARCHAR,
	"path" VARCHAR,
	"created" DATETIME,
	"removed" DATETIME,
	"update_time" DATETIME,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_storage_pool__pod_id" FOREIGN KEY ("pod_id") REFERENCES "host_pod_ref" ("id"),
	 CONSTRAINT "fk_storage_pool__cluster_id" FOREIGN KEY ("cluster_id") REFERENCES "cluster" ("id")
);

CREATE TABLE "template_spool_ref" (
	"id" BIGINT,
	"pool_id" BIGINT,
	"template_id" BIGINT,
	"created" DATETIME,
	"last_updated" DATETIME,
	"job_id" VARCHAR,
	"download_pct" INT,
	"download_state" VARCHAR,
	"error_str" VARCHAR,
	"local_path" VARCHAR,
	"install_path" VARCHAR,
	"template_size" BIGINT,
	"marked_for_gc" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_template_spool_ref__template_id" FOREIGN KEY ("template_id") REFERENCES "vm_template" ("id"),
	 CONSTRAINT "fk_template_spool_ref__pool_id" FOREIGN KEY ("pool_id") REFERENCES "storage_pool" ("id")
);

CREATE TABLE "storage_pool_details" (
	"id" BIGINT,
	"pool_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_storage_pool_details__pool_id" FOREIGN KEY ("pool_id") REFERENCES "storage_pool" ("id")
);

CREATE TABLE "host" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"status" VARCHAR,
	"type" VARCHAR,
	"private_ip_address" CHAR,
	"private_netmask" VARCHAR,
	"private_mac_address" VARCHAR,
	"storage_ip_address" CHAR,
	"storage_netmask" VARCHAR,
	"storage_mac_address" VARCHAR,
	"storage_ip_address_2" CHAR,
	"storage_mac_address_2" VARCHAR,
	"storage_netmask_2" VARCHAR,
	"cluster_id" BIGINT,
	"public_ip_address" CHAR,
	"public_netmask" VARCHAR,
	"public_mac_address" VARCHAR,
	"proxy_port" INT,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"cpus" INT,
	"speed" INT,
	"url" VARCHAR,
	"fs_type" VARCHAR,
	"hypervisor_type" VARCHAR,
	"hypervisor_version" VARCHAR,
	"ram" BIGINT,
	"resource" VARCHAR,
	"version" VARCHAR,
	"parent" VARCHAR,
	"total_size" BIGINT,
	"capabilities" VARCHAR,
	"guid" VARCHAR,
	"available" INT,
	"setup" INT,
	"dom0_memory" BIGINT,
	"last_ping" INT,
	"mgmt_server_id" BIGINT,
	"disconnected" DATETIME,
	"created" DATETIME,
	"removed" DATETIME,
	"update_count" BIGINT,
	"resource_state" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_host__pod_id" FOREIGN KEY ("pod_id") REFERENCES "host_pod_ref" ("id"),
	 CONSTRAINT "fk_host__cluster_id" FOREIGN KEY ("cluster_id") REFERENCES "cluster" ("id")
);

CREATE TABLE "external_nicira_nvp_devices" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"physical_network_id" BIGINT,
	"provider_name" VARCHAR,
	"device_name" VARCHAR,
	"host_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_external_nicira_nvp_devices__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_external_nicira_nvp_devices__physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id")
);

CREATE TABLE "external_firewall_devices" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"physical_network_id" BIGINT,
	"provider_name" VARCHAR,
	"device_name" VARCHAR,
	"device_state" VARCHAR,
	"is_dedicated" INT,
	"allocation_state" VARCHAR,
	"host_id" BIGINT,
	"capacity" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_external_firewall_devices__physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id"),
	 CONSTRAINT "fk_external_firewall_devices__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "external_load_balancer_devices" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"physical_network_id" BIGINT,
	"provider_name" VARCHAR,
	"device_name" VARCHAR,
	"capacity" BIGINT,
	"device_state" VARCHAR,
	"allocation_state" VARCHAR,
	"is_dedicated" INT,
	"is_inline" INT,
	"is_managed" INT,
	"host_id" BIGINT,
	"parent_host_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_external_lb_devices_physical_network_id" FOREIGN KEY ("physical_network_id") REFERENCES "physical_network" ("id"),
	 CONSTRAINT "fk_external_lb_devices_host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_external_lb_devices_parent_host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "netscaler_pod_ref" (
	"id" BIGINT,
	"external_load_balancer_device_id" BIGINT,
	"pod_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ns_pod_ref__device_id" FOREIGN KEY ("external_load_balancer_device_id") REFERENCES "external_load_balancer_devices" ("id"),
	 CONSTRAINT "fk_ns_pod_ref__pod_id" FOREIGN KEY ("pod_id") REFERENCES "host_pod_ref" ("id")
);

CREATE TABLE "op_host_transfer" (
	"id" BIGINT,
	"initial_mgmt_server_id" BIGINT,
	"future_mgmt_server_id" BIGINT,
	"state" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_op_host_transfer__future_mgmt_server_id" FOREIGN KEY ("future_mgmt_server_id") REFERENCES "mshost" ("msid"),
	 CONSTRAINT "fk_op_host_transfer__id" FOREIGN KEY ("id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_op_host_transfer__initial_mgmt_server_id" FOREIGN KEY ("initial_mgmt_server_id") REFERENCES "mshost" ("msid")
);

CREATE TABLE "storage_pool_host_ref" (
	"id" BIGINT,
	"host_id" BIGINT,
	"pool_id" BIGINT,
	"created" DATETIME,
	"last_updated" DATETIME,
	"local_path" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_storage_pool_host_ref__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_storage_pool_host_ref__pool_id" FOREIGN KEY ("pool_id") REFERENCES "storage_pool" ("id")
);

CREATE TABLE "volume_host_ref" (
	"id" BIGINT,
	"host_id" BIGINT,
	"volume_id" BIGINT,
	"zone_id" BIGINT,
	"created" DATETIME,
	"last_updated" DATETIME,
	"job_id" VARCHAR,
	"download_pct" INT,
	"size" BIGINT,
	"physical_size" BIGINT,
	"download_state" VARCHAR,
	"checksum" VARCHAR,
	"error_str" VARCHAR,
	"local_path" VARCHAR,
	"install_path" VARCHAR,
	"url" VARCHAR,
	"format" VARCHAR,
	"destroyed" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_volume_host_ref__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_volume_host_ref__volume_id" FOREIGN KEY ("volume_id") REFERENCES "volumes" ("id")
);

CREATE TABLE "template_host_ref" (
	"id" BIGINT,
	"host_id" BIGINT,
	"template_id" BIGINT,
	"created" DATETIME,
	"last_updated" DATETIME,
	"job_id" VARCHAR,
	"download_pct" INT,
	"size" BIGINT,
	"physical_size" BIGINT,
	"download_state" VARCHAR,
	"error_str" VARCHAR,
	"local_path" VARCHAR,
	"install_path" VARCHAR,
	"url" VARCHAR,
	"destroyed" TINYINT,
	"is_copy" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_template_host_ref__template_id" FOREIGN KEY ("template_id") REFERENCES "vm_template" ("id"),
	 CONSTRAINT "fk_template_host_ref__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "upload" (
	"id" BIGINT,
	"host_id" BIGINT,
	"type_id" BIGINT,
	"type" VARCHAR,
	"mode" VARCHAR,
	"created" DATETIME,
	"last_updated" DATETIME,
	"job_id" VARCHAR,
	"upload_pct" INT,
	"upload_state" VARCHAR,
	"error_str" VARCHAR,
	"url" VARCHAR,
	"install_path" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_upload__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "vm_instance" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"instance_name" VARCHAR,
	"state" VARCHAR,
	"vm_template_id" BIGINT,
	"guest_os_id" BIGINT,
	"private_mac_address" VARCHAR,
	"private_ip_address" CHAR,
	"pod_id" BIGINT,
	"data_center_id" BIGINT,
	"host_id" BIGINT,
	"last_host_id" BIGINT,
	"proxy_id" BIGINT,
	"proxy_assign_time" DATETIME,
	"vnc_password" VARCHAR,
	"ha_enabled" TINYINT,
	"limit_cpu_use" TINYINT,
	"update_count" BIGINT,
	"update_time" DATETIME,
	"created" DATETIME,
	"removed" DATETIME,
	"type" VARCHAR,
	"vm_type" VARCHAR,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"service_offering_id" BIGINT,
	"reservation_id" CHAR,
	"hypervisor_type" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vm_instance__last_host_id" FOREIGN KEY ("last_host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_vm_instance__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id"),
	 CONSTRAINT "fk_vm_instance__template_id" FOREIGN KEY ("vm_template_id") REFERENCES "vm_template" ("id")
);

CREATE TABLE "cmd_exec_log" (
	"id" BIGINT,
	"host_id" BIGINT,
	"instance_id" BIGINT,
	"command_name" VARCHAR,
	"weight" INTEGER,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cmd_exec_log_ref__inst_id" FOREIGN KEY ("instance_id") REFERENCES "vm_instance" ("id")
);

CREATE TABLE "secondary_storage_vm" (
	"id" BIGINT,
	"public_mac_address" VARCHAR,
	"public_ip_address" CHAR,
	"public_netmask" VARCHAR,
	"guid" VARCHAR,
	"nfs_share" VARCHAR,
	"last_update" DATETIME,
	"role" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_secondary_storage_vm__id" FOREIGN KEY ("id") REFERENCES "vm_instance" ("id")
);

CREATE TABLE "console_proxy" (
	"id" BIGINT,
	"public_mac_address" VARCHAR,
	"public_ip_address" CHAR,
	"public_netmask" VARCHAR,
	"active_session" INT,
	"last_update" DATETIME,
	"session_details" BLOB,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_console_proxy__id" FOREIGN KEY ("id") REFERENCES "vm_instance" ("id")
);

CREATE TABLE "domain_router" (
	"id" BIGINT,
	"element_id" BIGINT,
	"public_mac_address" VARCHAR,
	"public_ip_address" CHAR,
	"public_netmask" VARCHAR,
	"guest_netmask" VARCHAR,
	"guest_ip_address" CHAR,
	"is_redundant_router" INT,
	"priority" INT,
	"is_priority_bumpup" INT,
	"redundant_state" VARCHAR,
	"stop_pending" INT,
	"role" VARCHAR,
	"template_version" VARCHAR,
	"scripts_version" VARCHAR,
	"vpc_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_domain_router__id" FOREIGN KEY ("id") REFERENCES "vm_instance" ("id")
);

CREATE TABLE "user_vm_details" (
	"id" BIGINT,
	"vm_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_vm_details__vm_id" FOREIGN KEY ("vm_id") REFERENCES "vm_instance" ("id")
);

CREATE TABLE "user_vm" (
	"id" BIGINT,
	"iso_id" BIGINT,
	"display_name" VARCHAR,
	"user_data" VARCHAR,
	"update_parameters" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_vm__id" FOREIGN KEY ("id") REFERENCES "vm_instance" ("id")
);

CREATE TABLE "instance_group_vm_map" (
	"id" BIGINT,
	"group_id" BIGINT,
	"instance_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_instance_group_vm_map___group_id" FOREIGN KEY ("group_id") REFERENCES "instance_group" ("id"),
	 CONSTRAINT "fk_instance_group_vm_map___instance_id" FOREIGN KEY ("instance_id") REFERENCES "user_vm" ("id")
);

CREATE TABLE "security_group_vm_map" (
	"id" BIGINT,
	"security_group_id" BIGINT,
	"instance_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_security_group_vm_map___security_group_id" FOREIGN KEY ("security_group_id") REFERENCES "security_group" ("id"),
	 CONSTRAINT "fk_security_group_vm_map___instance_id" FOREIGN KEY ("instance_id") REFERENCES "user_vm" ("id")
);

CREATE TABLE "host_tags" (
	"id" BIGINT,
	"host_id" BIGINT,
	"tag" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_host_tags__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "host_details" (
	"id" BIGINT,
	"host_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_host_details__host_id" FOREIGN KEY ("host_id") REFERENCES "host" ("id")
);

CREATE TABLE "op_host" (
	"id" BIGINT,
	"sequence" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_op_host__id" FOREIGN KEY ("id") REFERENCES "host" ("id")
);

CREATE TABLE "cluster_details" (
	"id" BIGINT,
	"cluster_id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cluster_details__cluster_id" FOREIGN KEY ("cluster_id") REFERENCES "cluster" ("id")
);

CREATE TABLE "network_offerings" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"unique_name" VARCHAR,
	"display_text" VARCHAR,
	"nw_rate" SMALLINT,
	"mc_rate" SMALLINT,
	"traffic_type" VARCHAR,
	"tags" VARCHAR,
	"system_only" INT,
	"specify_vlan" INT,
	"service_offering_id" BIGINT,
	"conserve_mode" INT,
	"created" DATETIME,
	"removed" DATETIME,
	"default" INT,
	"availability" VARCHAR,
	"dedicated_lb_service" INT,
	"shared_source_nat_service" INT,
	"sort_key" INT,
	"redundant_router_service" INT,
	"state" CHAR,
	"guest_type" CHAR,
	"elastic_ip_service" INT,
	"elastic_lb_service" INT,
	"specify_ip_ranges" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ntwk_offering_service_map" (
	"id" BIGINT,
	"network_offering_id" BIGINT,
	"service" VARCHAR,
	"provider" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ntwk_offering_service_map__network_offering_id" FOREIGN KEY ("network_offering_id") REFERENCES "network_offerings" ("id")
);

CREATE TABLE "networks" (
	"id" BIGINT,
	"name" VARCHAR,
	"uuid" VARCHAR,
	"display_text" VARCHAR,
	"traffic_type" VARCHAR,
	"broadcast_domain_type" VARCHAR,
	"broadcast_uri" VARCHAR,
	"gateway" VARCHAR,
	"cidr" VARCHAR,
	"mode" VARCHAR,
	"network_offering_id" BIGINT,
	"physical_network_id" BIGINT,
	"data_center_id" BIGINT,
	"guru_name" VARCHAR,
	"state" VARCHAR,
	"related" BIGINT,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	"dns1" VARCHAR,
	"dns2" VARCHAR,
	"guru_data" VARCHAR,
	"set_fields" BIGINT,
	"acl_type" VARCHAR,
	"network_domain" VARCHAR,
	"reservation_id" CHAR,
	"guest_type" CHAR,
	"restart_required" INT,
	"created" DATETIME,
	"removed" DATETIME,
	"specify_ip_ranges" INT,
	"vpc_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_networks__related" FOREIGN KEY ("related") REFERENCES "networks" ("id")
);

CREATE TABLE "private_ip_address" (
	"id" BIGINT,
	"ip_address" CHAR,
	"network_id" BIGINT,
	"reservation_id" CHAR,
	"mac_address" VARCHAR,
	"vpc_id" BIGINT,
	"taken" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_private_ip_address__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_private_ip_address__vpc_id" FOREIGN KEY ("vpc_id") REFERENCES "vpc" ("id")
);

CREATE TABLE "vpc_gateways" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"ip4_address" CHAR,
	"netmask" VARCHAR,
	"gateway" VARCHAR,
	"vlan_tag" VARCHAR,
	"type" VARCHAR,
	"network_id" BIGINT,
	"vpc_id" BIGINT,
	"zone_id" BIGINT,
	"created" DATETIME,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"state" VARCHAR,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_vpc_gateways__zone_id" FOREIGN KEY ("zone_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_vpc_gateways__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_vpc_gateways__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_vpc_gateways__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_vpc_gateways__vpc_id" FOREIGN KEY ("vpc_id") REFERENCES "vpc" ("id")
);

CREATE TABLE "static_routes" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"vpc_gateway_id" BIGINT,
	"cidr" VARCHAR,
	"state" CHAR,
	"vpc_id" BIGINT,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_static_routes__vpc_gateway_id" FOREIGN KEY ("vpc_gateway_id") REFERENCES "vpc_gateways" ("id"),
	 CONSTRAINT "fk_static_routes__vpc_id" FOREIGN KEY ("vpc_id") REFERENCES "vpc" ("id"),
	 CONSTRAINT "fk_static_routes__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_static_routes__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "router_network_ref" (
	"id" BIGINT,
	"router_id" BIGINT,
	"network_id" BIGINT,
	"guest_type" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_router_network_ref__router_id" FOREIGN KEY ("router_id") REFERENCES "domain_router" ("id"),
	 CONSTRAINT "fk_router_network_ref__networks_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "network_external_firewall_device_map" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"network_id" BIGINT,
	"external_firewall_device_id" BIGINT,
	"created" DATETIME,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_network_external_firewall_devices_network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_network_external_firewall_devices_device_id" FOREIGN KEY ("external_firewall_device_id") REFERENCES "external_firewall_devices" ("id")
);

CREATE TABLE "network_external_lb_device_map" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"network_id" BIGINT,
	"external_load_balancer_device_id" BIGINT,
	"created" DATETIME,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_network_external_lb_devices_device_id" FOREIGN KEY ("external_load_balancer_device_id") REFERENCES "external_load_balancer_devices" ("id"),
	 CONSTRAINT "fk_network_external_lb_devices_network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "ntwk_service_map" (
	"id" BIGINT,
	"network_id" BIGINT,
	"service" VARCHAR,
	"provider" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_ntwk_service_map__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "domain_network_ref" (
	"id" BIGINT,
	"domain_id" BIGINT,
	"network_id" BIGINT,
	"subdomain_access" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_domain_network_ref__networks_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_domain_network_ref__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "user_ip_address" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"public_ip_address" CHAR,
	"data_center_id" BIGINT,
	"source_nat" INT,
	"allocated" DATETIME,
	"vlan_db_id" BIGINT,
	"one_to_one_nat" INT,
	"vm_id" BIGINT,
	"state" CHAR,
	"mac_address" BIGINT,
	"source_network_id" BIGINT,
	"network_id" BIGINT,
	"physical_network_id" BIGINT,
	"is_system" INT,
	"vpc_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_ip_address__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_user_ip_address__vlan_db_id" FOREIGN KEY ("vlan_db_id") REFERENCES "vlan" ("id"),
	 CONSTRAINT "fk_user_ip_address__data_center_id" FOREIGN KEY ("data_center_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_user_ip_address__source_network_id" FOREIGN KEY ("source_network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "s2s_vpn_gateway" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"addr_id" BIGINT,
	"vpc_id" BIGINT,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_s2s_vpn_gateway__addr_id" FOREIGN KEY ("addr_id") REFERENCES "user_ip_address" ("id"),
	 CONSTRAINT "fk_s2s_vpn_gateway__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_s2s_vpn_gateway__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "s2s_vpn_connection" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"vpn_gateway_id" BIGINT,
	"customer_gateway_id" BIGINT,
	"state" VARCHAR,
	"domain_id" BIGINT,
	"account_id" BIGINT,
	"created" DATETIME,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_s2s_vpn_connection__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_s2s_vpn_connection__vpn_gateway_id" FOREIGN KEY ("vpn_gateway_id") REFERENCES "s2s_vpn_gateway" ("id"),
	 CONSTRAINT "fk_s2s_vpn_connection__customer_gateway_id" FOREIGN KEY ("customer_gateway_id") REFERENCES "s2s_customer_gateway" ("id"),
	 CONSTRAINT "fk_s2s_vpn_connection__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id")
);

CREATE TABLE "remote_access_vpn" (
	"vpn_server_addr_id" BIGINT,
	"account_id" BIGINT,
	"network_id" BIGINT,
	"domain_id" BIGINT,
	"local_ip" CHAR,
	"ip_range" VARCHAR,
	"ipsec_psk" VARCHAR,
	"state" CHAR,
	 PRIMARY KEY ("vpn_server_addr_id"),
	 CONSTRAINT "fk_remote_access_vpn__domain_id" FOREIGN KEY ("domain_id") REFERENCES "domain" ("id"),
	 CONSTRAINT "fk_remote_access_vpn__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_remote_access_vpn__vpn_server_addr_id" FOREIGN KEY ("vpn_server_addr_id") REFERENCES "user_ip_address" ("id"),
	 CONSTRAINT "fk_remote_access_vpn__account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "firewall_rules" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"ip_address_id" BIGINT,
	"start_port" INT,
	"end_port" INT,
	"state" CHAR,
	"protocol" CHAR,
	"purpose" CHAR,
	"account_id" BIGINT,
	"domain_id" BIGINT,
	"network_id" BIGINT,
	"xid" CHAR,
	"created" DATETIME,
	"icmp_code" INT,
	"icmp_type" INT,
	"related" BIGINT,
	"type" VARCHAR,
	"vpc_id" BIGINT,
	"traffic_type" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_firewall_rules__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id"),
	 CONSTRAINT "fk_firewall_rules__related" FOREIGN KEY ("related") REFERENCES "firewall_rules" ("id")
);

CREATE TABLE "port_forwarding_rules" (
	"id" BIGINT,
	"instance_id" BIGINT,
	"dest_ip_address" CHAR,
	"dest_port_start" INT,
	"dest_port_end" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_port_forwarding_rules__id" FOREIGN KEY ("id") REFERENCES "firewall_rules" ("id")
);

CREATE TABLE "load_balancing_rules" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"default_port_start" INT,
	"default_port_end" INT,
	"algorithm" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_load_balancing_rules__id" FOREIGN KEY ("id") REFERENCES "firewall_rules" ("id")
);

CREATE TABLE "elastic_lb_vm_map" (
	"id" BIGINT,
	"ip_addr_id" BIGINT,
	"elb_vm_id" BIGINT,
	"lb_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_elastic_lb_vm_map__elb_vm_id" FOREIGN KEY ("elb_vm_id") REFERENCES "vm_instance" ("id"),
	 CONSTRAINT "fk_elastic_lb_vm_map__lb_id" FOREIGN KEY ("lb_id") REFERENCES "load_balancing_rules" ("id"),
	 CONSTRAINT "fk_elastic_lb_vm_map__ip_id" FOREIGN KEY ("ip_addr_id") REFERENCES "user_ip_address" ("id")
);

CREATE TABLE "load_balancer_stickiness_policies" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"load_balancer_id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"method_name" VARCHAR,
	"params" VARCHAR,
	"revoke" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_load_balancer_stickiness_policies__load_balancer_id" FOREIGN KEY ("load_balancer_id") REFERENCES "load_balancing_rules" ("id")
);

CREATE TABLE "load_balancer_vm_map" (
	"id" BIGINT,
	"load_balancer_id" BIGINT,
	"instance_id" BIGINT,
	"revoke" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_load_balancer_vm_map__load_balancer_id" FOREIGN KEY ("load_balancer_id") REFERENCES "load_balancing_rules" ("id")
);

CREATE TABLE "firewall_rules_cidrs" (
	"id" BIGINT,
	"firewall_rule_id" BIGINT,
	"source_cidr" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_firewall_cidrs_firewall_rules" FOREIGN KEY ("firewall_rule_id") REFERENCES "firewall_rules" ("id")
);

CREATE TABLE "dc_storage_network_ip_range" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"start_ip" CHAR,
	"end_ip" CHAR,
	"gateway" VARCHAR,
	"vlan" INT,
	"netmask" VARCHAR,
	"data_center_id" BIGINT,
	"pod_id" BIGINT,
	"network_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_storage_ip_range__data_center_id" FOREIGN KEY ("data_center_id") REFERENCES "data_center" ("id"),
	 CONSTRAINT "fk_storage_ip_range__network_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "op_dc_storage_network_ip_address" (
	"id" BIGINT,
	"range_id" BIGINT,
	"ip_address" CHAR,
	"mac_address" BIGINT,
	"taken" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_storage_ip_address__range_id" FOREIGN KEY ("range_id") REFERENCES "dc_storage_network_ip_range" ("id")
);

CREATE TABLE "nics" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"instance_id" BIGINT,
	"mac_address" VARCHAR,
	"ip4_address" CHAR,
	"netmask" VARCHAR,
	"gateway" VARCHAR,
	"ip_type" VARCHAR,
	"broadcast_uri" VARCHAR,
	"network_id" BIGINT,
	"mode" VARCHAR,
	"state" VARCHAR,
	"strategy" VARCHAR,
	"reserver_name" VARCHAR,
	"reservation_id" VARCHAR,
	"device_id" INT,
	"update_time" TIMESTAMP,
	"isolation_uri" VARCHAR,
	"ip6_address" CHAR,
	"default_nic" TINYINT,
	"vm_type" VARCHAR,
	"created" DATETIME,
	"removed" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_nics__networks_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "nicira_nvp_nic_map" (
	"id" BIGINT,
	"logicalswitch" VARCHAR,
	"logicalswitchport" VARCHAR,
	"nic" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_nicira_nvp_nic_map__nic" FOREIGN KEY ("nic") REFERENCES "nics" ("uuid")
);

CREATE TABLE "inline_load_balancer_nic_map" (
	"id" BIGINT,
	"load_balancer_id" BIGINT,
	"public_ip_address" CHAR,
	"nic_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_inline_load_balancer_nic_map__nic_id" FOREIGN KEY ("nic_id") REFERENCES "nics" ("id"),
	 CONSTRAINT "fk_inline_load_balancer_nic_map__load_balancer_id" FOREIGN KEY ("load_balancer_id") REFERENCES "load_balancing_rules" ("id")
);

CREATE TABLE "account_network_ref" (
	"id" BIGINT,
	"account_id" BIGINT,
	"network_id" BIGINT,
	"is_owner" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_account_network_ref__networks_id" FOREIGN KEY ("network_id") REFERENCES "networks" ("id")
);

CREATE TABLE "op_networks" (
	"id" BIGINT,
	"mac_address_seq" BIGINT,
	"nics_count" INT,
	"gc" TINYINT,
	"check_for_gc" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "op_it_work" (
	"id" CHAR,
	"mgmt_server_id" BIGINT,
	"created_at" BIGINT,
	"thread" VARCHAR,
	"type" CHAR,
	"vm_type" CHAR,
	"step" CHAR,
	"updated_at" BIGINT,
	"instance_id" BIGINT,
	"resource_type" CHAR,
	"resource_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "version" (
	"id" BIGINT,
	"version" CHAR,
	"updated" DATETIME,
	"step" CHAR,
	 PRIMARY KEY ("id")
);
