DROP DATABASE IF EXISTS "schema2113";
CREATE DATABASE "schema2113";
USE "schema2113";
CREATE TABLE "operational_gra_contrail_route_allotted_resources" (
	"allottedresourceid" VARCHAR,
	"allottedresourcestatusaction" VARCHAR,
	"allottedresourcestatusfinalindicator" VARCHAR,
	"allottedresourcestatusrequeststatus" VARCHAR,
	"allottedresourcestatusresponsecode" VARCHAR,
	"allottedresourcestatusresponsemessage" VARCHAR,
	"allottedresourcestatusresponsetimestamp" VARCHAR,
	"allottedresourcestatusrpcaction" VARCHAR,
	"allottedresourcestatusrpcname" VARCHAR,
	"ardata" LONGTEXT
);

CREATE TABLE "config_gra_contrail_route_allotted_resources" (
	"allottedresourceid" VARCHAR,
	"allottedresourcestatusaction" VARCHAR,
	"allottedresourcestatusfinalindicator" VARCHAR,
	"allottedresourcestatusrequeststatus" VARCHAR,
	"allottedresourcestatusresponsecode" VARCHAR,
	"allottedresourcestatusresponsemessage" VARCHAR,
	"allottedresourcestatusresponsetimestamp" VARCHAR,
	"allottedresourcestatusrpcaction" VARCHAR,
	"allottedresourcestatusrpcname" VARCHAR,
	"ardata" LONGTEXT
);

CREATE TABLE "operational_gra_port_mirror_configurations" (
	"configurationid" VARCHAR,
	"portmirrorconfigurationstatusaction" VARCHAR,
	"portmirrorconfigurationstatusfinalindicator" VARCHAR,
	"portmirrorconfigurationstatusrequeststatus" VARCHAR,
	"portmirrorconfigurationstatusresponsecode" VARCHAR,
	"portmirrorconfigurationstatusresponsemessage" VARCHAR,
	"portmirrorconfigurationstatusresponsetimestamp" VARCHAR,
	"portmirrorconfigurationstatusrpcaction" VARCHAR,
	"portmirrorconfigurationstatusrpcname" VARCHAR,
	"pmcdata" LONGTEXT
);

CREATE TABLE "config_gra_port_mirror_configurations" (
	"configurationid" VARCHAR,
	"portmirrorconfigurationstatusaction" VARCHAR,
	"portmirrorconfigurationstatusfinalindicator" VARCHAR,
	"portmirrorconfigurationstatusrequeststatus" VARCHAR,
	"portmirrorconfigurationstatusresponsecode" VARCHAR,
	"portmirrorconfigurationstatusresponsemessage" VARCHAR,
	"portmirrorconfigurationstatusresponsetimestamp" VARCHAR,
	"portmirrorconfigurationstatusrpcaction" VARCHAR,
	"portmirrorconfigurationstatusrpcname" VARCHAR,
	"pmcdata" LONGTEXT
);

CREATE TABLE "operational_gra_services" (
	"svcinstanceid" VARCHAR,
	"servicestatusaction" VARCHAR,
	"servicestatusfinalindicator" VARCHAR,
	"servicestatusrequeststatus" VARCHAR,
	"servicestatusresponsecode" VARCHAR,
	"servicestatusresponsemessage" VARCHAR,
	"servicestatusresponsetimestamp" VARCHAR,
	"servicestatusrpcaction" VARCHAR,
	"servicestatusrpcname" VARCHAR,
	"svcdata" LONGTEXT
);

CREATE TABLE "config_gra_services" (
	"svcinstanceid" VARCHAR,
	"servicestatusaction" VARCHAR,
	"servicestatusfinalindicator" VARCHAR,
	"servicestatusrequeststatus" VARCHAR,
	"servicestatusresponsecode" VARCHAR,
	"servicestatusresponsemessage" VARCHAR,
	"servicestatusresponsetimestamp" VARCHAR,
	"servicestatusrpcaction" VARCHAR,
	"servicestatusrpcname" VARCHAR,
	"svcdata" LONGTEXT
);

CREATE TABLE "vnf_related_network_role" (
	"vnf_customization_uuid" VARCHAR,
	"network_role" VARCHAR,
	"related_network_role" VARCHAR,
	 PRIMARY KEY ("vnf_customization_uuid","network_role","related_network_role")
);

CREATE TABLE "vfc_related_network_role" (
	"vfc_customization_uuid" VARCHAR,
	"vm_type" VARCHAR,
	"network_role" VARCHAR,
	"related_network_role" VARCHAR,
	 PRIMARY KEY ("vfc_customization_uuid","vm_type","network_role","related_network_role")
);

CREATE TABLE "service_model_to_complex_resource_mapping" (
	"service_uuid" VARCHAR,
	"complex_resource_uuid" VARCHAR,
	"complex_resource_customization_uuid" VARCHAR,
	 PRIMARY KEY ("service_uuid","complex_resource_uuid","complex_resource_customization_uuid")
);

CREATE TABLE "resource_policy_to_target_node_mapping" (
	"policy_uuid" VARCHAR,
	"parent_uuid" VARCHAR,
	"target_node_uuid" VARCHAR,
	"target_type" VARCHAR,
	"target_node_customization_uuid" VARCHAR,
	"policy_customization_uuid" VARCHAR,
	 PRIMARY KEY ("policy_uuid","parent_uuid","target_node_uuid")
);

CREATE TABLE "resource_policy" (
	"resource_uuid" VARCHAR,
	"policy_uuid" VARCHAR,
	"policy_customization_uuid" VARCHAR,
	"policy_invariant_uuid" VARCHAR,
	"policy_name" VARCHAR,
	"version" VARCHAR,
	"policy_type" VARCHAR,
	"property_type" VARCHAR,
	"property_source" VARCHAR,
	"property_name" VARCHAR,
	 PRIMARY KEY ("resource_uuid","policy_uuid")
);

CREATE TABLE "resource_group" (
	"resource_uuid" VARCHAR,
	"group_uuid" VARCHAR,
	"group_customization_uuid" VARCHAR,
	"group_invariant_uuid" VARCHAR,
	"group_name" VARCHAR,
	"version" VARCHAR,
	"group_type" VARCHAR,
	 PRIMARY KEY ("resource_uuid","group_uuid")
);

CREATE TABLE "related_network_role" (
	"network_model_customization_uuid" VARCHAR,
	"related_network_role" VARCHAR,
	 PRIMARY KEY ("network_model_customization_uuid","related_network_role")
);

CREATE TABLE "node_requirement" (
	"requirement_id" INT,
	"capability_id" INT,
	"capability_provider_uuid" VARCHAR,
	"capability_provider_customization_uuid" VARCHAR,
	"capability_consumer_uuid" VARCHAR,
	"capability_consumer_customization_uuid" VARCHAR,
	"requirement_name" VARCHAR,
	 PRIMARY KEY ("requirement_id")
);

CREATE TABLE "node_capability" (
	"capability_id" INT,
	"capability_provider_uuid" VARCHAR,
	"capability_provider_customization_uuid" VARCHAR,
	"capability_name" VARCHAR,
	"capability_type" VARCHAR,
	 PRIMARY KEY ("capability_id")
);

CREATE TABLE "complex_resource" (
	"uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"customization_uuid" VARCHAR,
	"version" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("uuid","customization_uuid")
);

CREATE TABLE "attribute_value_pair" (
	"resource_uuid" VARCHAR,
	"attribute_name" VARCHAR,
	"resource_type" VARCHAR,
	"attribute_value" VARCHAR,
	"resource_customization_uuid" VARCHAR,
	 PRIMARY KEY ("resource_uuid","attribute_name","resource_type")
);

CREATE TABLE "resource_group_to_target_node_mapping" (
	"group_uuid" VARCHAR,
	"parent_uuid" VARCHAR,
	"target_node_uuid" VARCHAR,
	"target_type" VARCHAR,
	"table_name" VARCHAR,
	 PRIMARY KEY ("group_uuid","parent_uuid","target_node_uuid")
);

CREATE TABLE "dhcp_map" (
	"mac_addr" VARCHAR,
	"ip_addr" VARCHAR,
	 PRIMARY KEY ("mac_addr")
);

CREATE TABLE "wan_combo_allowable" (
	"combo_sequence" INT,
	"topology" VARCHAR,
	"internet_topology" VARCHAR,
	"wan1" VARCHAR,
	"wan2" VARCHAR,
	"new_start_release_flexware" VARCHAR,
	"is_active_flexware" VARCHAR,
	"new_start_release_dhv" VARCHAR,
	"is_active_dhv" VARCHAR,
	"ucpe_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("combo_sequence")
);

CREATE TABLE "vvig_vm_instance_to_cloud_region_mapping" (
	"key_id" VARCHAR,
	"cloud_region" VARCHAR,
	"key_type" VARCHAR,
	 PRIMARY KEY ("key_id","cloud_region","key_type")
);

CREATE TABLE "vserver_pserver" (
	"vserver_id" VARCHAR,
	"pserver_hostname" VARCHAR,
	 PRIMARY KEY ("vserver_id")
);

CREATE TABLE "vserver2" (
	"tenant_id" VARCHAR,
	"vserver_id" VARCHAR,
	"vserver_name" VARCHAR,
	"vserver_name2" VARCHAR,
	"prov_status" VARCHAR,
	"selflink" VARCHAR,
	 PRIMARY KEY ("tenant_id","vserver_id")
);

CREATE TABLE "vserver" (
	"tenant_id" VARCHAR,
	"vserver_id" VARCHAR,
	"aic_site_id" VARCHAR,
	"vendor" VARCHAR,
	"image_name" VARCHAR,
	"vnf_type" VARCHAR,
	"vnf_id" VARCHAR,
	 PRIMARY KEY ("tenant_id","vserver_id")
);

CREATE TABLE "vrr_function_code_vmtype_mapping" (
	"ptnii_function_code" VARCHAR,
	"vm_type" VARCHAR,
	 PRIMARY KEY ("ptnii_function_code","vm_type")
);

CREATE TABLE "vpn_bindings" (
	"network_customization_uuid" VARCHAR,
	"binding_uuid" VARCHAR,
	 PRIMARY KEY ("network_customization_uuid","binding_uuid")
);

CREATE TABLE "vplspe_pool" (
	"vplspe_name" VARCHAR,
	"aic_site_id" VARCHAR,
	"availability_zone" VARCHAR,
	"physical_intf_name" VARCHAR,
	"physical_intf_speed" VARCHAR,
	"physical_intf_units" VARCHAR,
	"loopback0_ipv4_address" VARCHAR,
	"vlan_id_outer" VARCHAR,
	"vplspe_uuid" VARCHAR,
	"image_filename" VARCHAR,
	"provisioning_status" VARCHAR,
	"vendor" VARCHAR,
	 PRIMARY KEY ("vplspe_name","aic_site_id","availability_zone","physical_intf_name")
);

CREATE TABLE "vpe_pool" (
	"vpe_name" VARCHAR,
	"ipv4_oam_address" VARCHAR,
	"loopback0_ipv4_address" VARCHAR,
	"provisioning_status" VARCHAR,
	"aic_site_id" VARCHAR,
	"availability_zone" VARCHAR,
	"vlan_id_outer" VARCHAR,
	"vendor" VARCHAR,
	"physical_intf_name" VARCHAR,
	"physical_intf_speed" VARCHAR,
	"physical_intf_units" VARCHAR,
	"vpe_uuid" VARCHAR,
	"vpe_id" VARCHAR,
	"image_filename" VARCHAR,
	"as_number" VARCHAR,
	"loopback5000" VARCHAR,
	"loopback10" VARCHAR,
	"aic_version" VARCHAR,
	"vpe_capacity" INT,
	 PRIMARY KEY ("aic_site_id","vpe_name","availability_zone")
);

CREATE TABLE "vpe_mac_address_to_hostname_mapping" (
	"id" INT,
	"hostname" VARCHAR,
	"assigned_user" VARCHAR,
	"assigned_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vpe_mac_address_pool" (
	"id" INT,
	"mac_address" VARCHAR,
	"sw_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vpe_lock" (
	"vpe_name" VARCHAR,
	"vpn_lock" VARCHAR,
	 PRIMARY KEY ("vpe_name")
);

CREATE TABLE "vnf_service_to_network_role_filter" (
	"vnf_service_type" VARCHAR,
	"network_role_filter" VARCHAR,
	 PRIMARY KEY ("vnf_service_type","network_role_filter")
);

CREATE TABLE "vnf_profile" (
	"vnf_type" VARCHAR,
	"availability_zone_count" INT,
	"equipment_role" VARCHAR,
	 PRIMARY KEY ("vnf_type")
);

CREATE TABLE "vnf_network_connection_vlan" (
	"vlan_uuid" VARCHAR,
	"vlan_id" INT,
	"vlan_type" VARCHAR,
	"connection_uuid" VARCHAR,
	 PRIMARY KEY ("vlan_uuid")
);

CREATE TABLE "vnf_network_connection" (
	"connection_uuid" VARCHAR,
	"vnf_id" VARCHAR,
	"connection_id" VARCHAR,
	"connection_type" VARCHAR,
	"neutron_network_id" VARCHAR,
	"neutron_network_name" VARCHAR,
	"orchestration_status" VARCHAR,
	"switch_id" VARCHAR,
	"heat_stack_id" VARCHAR,
	"mso_catalog_key" VARCHAR,
	"provider_network" VARCHAR,
	"port_group_id" VARCHAR,
	"port_group_name" VARCHAR,
	 PRIMARY KEY ("connection_uuid")
);

CREATE TABLE "vnf_networks" (
	"vnf_type" VARCHAR,
	"network_role" VARCHAR,
	 PRIMARY KEY ("vnf_type","network_role")
);

CREATE TABLE "vnf_name_index" (
	"vnf_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("vnf_name_prefix")
);

CREATE TABLE "vnf_model_license_features" (
	"att_part_number" VARCHAR,
	"license_assignment_group" VARCHAR,
	"feature" VARCHAR,
	 PRIMARY KEY ("att_part_number","license_assignment_group","feature")
);

CREATE TABLE "vnf_model_licenses" (
	"att_part_number" VARCHAR,
	"license_assignment_group" VARCHAR,
	"license_required" TINYINT,
	"entitlement_assignment_group" VARCHAR,
	"entitlement_required" TINYINT,
	"feature_group_uuid" VARCHAR,
	 PRIMARY KEY ("att_part_number","license_assignment_group")
);

CREATE TABLE "vnf_image" (
	"application_vendor" VARCHAR,
	"application_version" VARCHAR,
	"att_uuid" VARCHAR,
	"application" VARCHAR,
	"selflink" VARCHAR,
	 PRIMARY KEY ("application_vendor","application_version","att_uuid")
);

CREATE TABLE "vnfc_reference" (
	"vnfc_reference_id" INT,
	"action" VARCHAR,
	"vnf_type" VARCHAR,
	"vm_instance" INT,
	"vnfc_instance" INT,
	"vnfc_type" VARCHAR,
	"vnfc_function_code" VARCHAR,
	"ipaddress_v4_oam_vip" VARCHAR,
	"group_notation_type" VARCHAR,
	"group_notation_value" VARCHAR,
	 PRIMARY KEY ("vnfc_reference_id")
);

CREATE TABLE "vnfc_dg_mapping" (
	"vnfc_dg_mapping_id" INT,
	"action" VARCHAR,
	"api_version" VARCHAR,
	"vnf_type" VARCHAR,
	"vnfc_type" VARCHAR,
	"dg_name" VARCHAR,
	"dg_version" VARCHAR,
	"dg_module" VARCHAR,
	 PRIMARY KEY ("vnfc_dg_mapping_id")
);

CREATE TABLE "vnf" (
	"vnf_id" VARCHAR,
	"vnf_name" VARCHAR,
	"vnf_type" VARCHAR,
	"orchestration_status" VARCHAR,
	"heat_stack_id" VARCHAR,
	"mso_catalog_key" VARCHAR,
	"availability_zone" VARCHAR,
	"aic_site_id" VARCHAR,
	"oam_ipv4_address" VARCHAR,
	"vnf_name2" VARCHAR,
	"vpe_id" VARCHAR,
	"ipv4_loopback0_address" VARCHAR,
	"license_key" VARCHAR,
	"entitlement_resource_uuid" VARCHAR,
	 PRIMARY KEY ("vnf_id")
);

CREATE TABLE "vm_profile" (
	"vnf_type" VARCHAR,
	"vm_type" VARCHAR,
	"vm_count" INT,
	 PRIMARY KEY ("vnf_type","vm_type")
);

CREATE TABLE "vm_networks" (
	"vnf_type" VARCHAR,
	"vm_type" VARCHAR,
	"network_role" VARCHAR,
	"assign_ips" TINYINT,
	"assign_macs" TINYINT,
	"assign_floating_ip" TINYINT,
	"ip_count" INT,
	 PRIMARY KEY ("vnf_type","vm_type","network_role")
);

CREATE TABLE "vm_name_index" (
	"vm_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("vm_name_prefix")
);

CREATE TABLE "vlan_ranges" (
	"vlan_plan_id" VARCHAR,
	"plan_type" VARCHAR,
	"purpose" VARCHAR,
	"range_start" INT,
	"range_end" INT,
	"generated" CHAR,
	 PRIMARY KEY ("vlan_plan_id","plan_type","purpose","range_start","range_end")
);

CREATE TABLE "vlan_pool" (
	"aic_site_id" VARCHAR,
	"availability_zone" VARCHAR,
	"vlan_plan_id" VARCHAR,
	"plan_type" VARCHAR,
	"purpose" VARCHAR,
	"vlan_id" INT,
	"status" VARCHAR,
	"reserved_id" VARCHAR,
	 PRIMARY KEY ("aic_site_id","availability_zone","vlan_plan_id","plan_type","purpose","vlan_id")
);

CREATE TABLE "vlan_plan_id" (
	"plan_type" VARCHAR,
	"purpose" VARCHAR,
	"vlan_plan_id_count" INT,
	 PRIMARY KEY ("vlan_plan_id_count","plan_type","purpose")
);

CREATE TABLE "vlan_id_pool" (
	"aic_site_id" VARCHAR,
	"purpose" VARCHAR,
	"status" VARCHAR,
	"vlan_id" INT,
	"svc_instance_id" VARCHAR,
	"availability_zone" VARCHAR,
	"vplspe_name" VARCHAR,
	 PRIMARY KEY ("vlan_id","aic_site_id","purpose")
);

CREATE TABLE "vipr_sz_manager_key" (
	"vipr_sz_manager_ip_addr" VARCHAR,
	"vipr_sz_manager_state" VARCHAR,
	"vipr_sz_manager_api_key" VARCHAR,
	 PRIMARY KEY ("vipr_sz_manager_ip_addr")
);

CREATE TABLE "vipr_configuration" (
	"seq" INT,
	"serial_number" VARCHAR,
	"vnf_id" VARCHAR,
	"vnf_name" VARCHAR,
	"ecomp_service_instance_id" VARCHAR,
	"vm_name" VARCHAR,
	"cloud_region_id" VARCHAR,
	"cloud_owner" VARCHAR,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "vf_to_network_role_mapping" (
	"seq" INT,
	"vf_customization_uuid" VARCHAR,
	"network_role" VARCHAR,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "vf_module_to_vfc_mapping" (
	"seq" INT,
	"vf_module_customization_uuid" VARCHAR,
	"vfc_customization_uuid" VARCHAR,
	"vm_type" VARCHAR,
	"vm_count" INT,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "vf_module_model" (
	"customization_uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"uuid" VARCHAR,
	"version" VARCHAR,
	"vf_module_type" VARCHAR,
	"availability_zone_count" INT,
	"ecomp_generated_vm_assignments" CHAR,
	"vf_customization_uuid" VARCHAR,
	"vf_module_label" VARCHAR,
	 PRIMARY KEY ("customization_uuid")
);

CREATE TABLE "vf_model" (
	"customization_uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"uuid" VARCHAR,
	"version" VARCHAR,
	"name" VARCHAR,
	"naming_policy" VARCHAR,
	"ecomp_generated_naming" CHAR,
	"avail_zone_max_count" INT,
	"nf_function" VARCHAR,
	"nf_code" VARCHAR,
	"nf_type" VARCHAR,
	"nf_role" VARCHAR,
	"vendor" VARCHAR,
	"vendor_version" VARCHAR,
	"sdnc_model_name" VARCHAR,
	"sdnc_model_version" VARCHAR,
	"sdnc_artifact_name" VARCHAR,
	 PRIMARY KEY ("customization_uuid")
);

CREATE TABLE "vfc_to_network_role_mapping" (
	"seq" INT,
	"vfc_customization_uuid" VARCHAR,
	"network_role" VARCHAR,
	"vm_type" VARCHAR,
	"network_role_tag" VARCHAR,
	"ipv4_count" INT,
	"ipv6_count" INT,
	"ipv4_use_dhcp" CHAR,
	"ipv6_use_dhcp" CHAR,
	"ipv4_ip_version" CHAR,
	"ipv6_ip_version" CHAR,
	"extcp_subnetpool_id" VARCHAR,
	"ipv4_floating_count" INT,
	"ipv6_floating_count" INT,
	"ipv4_address_plan_name" VARCHAR,
	"ipv6_address_plan_name" VARCHAR,
	"ipv4_vrf_name" VARCHAR,
	"ipv6_vrf_name" VARCHAR,
	"subnet_role" VARCHAR,
	"subinterface_indicator" CHAR,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "vfc_model" (
	"customization_uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"uuid" VARCHAR,
	"version" VARCHAR,
	"naming_policy" VARCHAR,
	"ecomp_generated_naming" CHAR,
	"nfc_function" VARCHAR,
	"nfc_naming_code" VARCHAR,
	"vm_type" VARCHAR,
	"vm_type_tag" VARCHAR,
	"vm_image_name" VARCHAR,
	"vm_flavor_name" VARCHAR,
	"high_availability" VARCHAR,
	"nfc_naming" VARCHAR,
	"min_instances" INT,
	"max_instances" INT,
	 PRIMARY KEY ("customization_uuid")
);

CREATE TABLE "vendor_code" (
	"vendor_code" VARCHAR,
	"vendor" VARCHAR,
	 PRIMARY KEY ("vendor_code","vendor")
);

CREATE TABLE "user_trace" (
	"user_trace_seq" INT,
	"timestamp" TIMESTAMP,
	"identity" VARCHAR,
	"action" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("user_trace_seq")
);

CREATE TABLE "used_sequence_number" (
	"resource_sequence_number" VARCHAR,
	"resource_type" VARCHAR,
	"zone_region_id" VARCHAR,
	 PRIMARY KEY ("resource_sequence_number","resource_type","zone_region_id")
);

CREATE TABLE "upload_config" (
	"upload_config_id" INT,
	"request_id" VARCHAR,
	"originator_id" VARCHAR,
	"service_description" VARCHAR,
	"action" VARCHAR,
	"upload_date" DATETIME,
	"vnf_id" VARCHAR,
	"vnf_name" VARCHAR,
	"vm_name" VARCHAR,
	"vnf_type" VARCHAR,
	"vnfc_type" VARCHAR,
	"host_ip_address" VARCHAR,
	"config_indicator" VARCHAR,
	"pending_delete" VARCHAR,
	"content" LONGTEXT,
	 PRIMARY KEY ("upload_config_id")
);

CREATE TABLE "transaction_log" (
	"serial_key" INT,
	"log_time" VARCHAR,
	"request_id" VARCHAR,
	"svc_request_id" VARCHAR,
	"x_ecomp_request_id" VARCHAR,
	"graph_name" VARCHAR,
	 PRIMARY KEY ("serial_key")
);

CREATE TABLE "topology_logical_relation_to_pinterface" (
	"interface_name" VARCHAR,
	"interface_id" VARCHAR,
	"pnf_name" VARCHAR,
	"pnf_id" VARCHAR,
	"controller_id" VARCHAR,
	"rate" VARCHAR,
	"clli" VARCHAR,
	"connection_point" VARCHAR,
	 PRIMARY KEY ("interface_name")
);

CREATE TABLE "topology_parameter_entries" (
	"parameter_entry_id" INT,
	"parameter_name" VARCHAR,
	"parameter_value" VARCHAR,
	"create_update_time" DATETIME,
	"create_update_user" VARCHAR,
	 PRIMARY KEY ("parameter_entry_id")
);

CREATE TABLE "topology_parameter" (
	"parameter_id" INT,
	"parameter_name" VARCHAR,
	"parameter_set" INT,
	"create_update_time" DATETIME,
	"create_update_user" VARCHAR,
	 PRIMARY KEY ("parameter_id")
);

CREATE TABLE "topology_parameter_to_entries" (
	"parameter_id" INT,
	"parameter_entry_id" INT,
	"entry_order" INT,
	"create_update_time" DATETIME,
	"create_update_user" VARCHAR,
	 CONSTRAINT "FK1_TOPOLOGY_PARAMETER_TO_ENTRIES" FOREIGN KEY ("parameter_id") REFERENCES "topology_parameter" ("parameter_id"),
	 CONSTRAINT "FK2_TOPOLOGY_PARAMETER_TO_ENTRIES" FOREIGN KEY ("parameter_entry_id") REFERENCES "topology_parameter_entries" ("parameter_entry_id")
);

CREATE TABLE "tmp_aic_avail_zone_pool" (
	"aic_site_id" VARCHAR,
	"status" VARCHAR,
	"availability_zone" VARCHAR,
	"token" INT,
	"vnf_id" VARCHAR,
	"service_type" VARCHAR,
	"vnf_type" VARCHAR,
	"hypervisor" VARCHAR,
	 PRIMARY KEY ("aic_site_id","availability_zone","token")
);

CREATE TABLE "threshold_notification" (
	"resource_id" BIGINT,
	"threshold_expression" VARCHAR,
	"threshold_message" VARCHAR,
	 PRIMARY KEY ("resource_id")
);

CREATE TABLE "testtbl" (
	"pk" VARCHAR,
	"col1" VARCHAR
);

CREATE TABLE "tenant" (
	"tenant_id" VARCHAR,
	"tenant_name" VARCHAR,
	"service_instance_id" VARCHAR,
	 PRIMARY KEY ("tenant_id","tenant_name")
);

CREATE TABLE "task_template" (
	"task_template_id" INT,
	"request_type" VARCHAR,
	"task_name" VARCHAR,
	"task_category" VARCHAR,
	"ecomp_task" VARCHAR,
	"initial_load" VARCHAR,
	"service" VARCHAR,
	 PRIMARY KEY ("task_template_id")
);

CREATE TABLE "table_cleanup_configuration" (
	"table_name" VARCHAR,
	"days_old" INT,
	"date_column" VARCHAR,
	"commit_interval" INT,
	"query_clause" VARCHAR,
	"child_table_name" VARCHAR,
	"child_table_pk" VARCHAR,
	 PRIMARY KEY ("table_name")
);

CREATE TABLE "svc_logic" (
	"module" VARCHAR,
	"rpc" VARCHAR,
	"version" VARCHAR,
	"mode" VARCHAR,
	"active" VARCHAR,
	"graph" LONGBLOB,
	"modified_timestamp" TIMESTAMP,
	"md5sum" VARCHAR,
	 PRIMARY KEY ("module","rpc","version","mode")
);

CREATE TABLE "supported_sequence_number" (
	"resource_sequence_number" VARCHAR,
	"resource_type" VARCHAR,
	 PRIMARY KEY ("resource_sequence_number","resource_type")
);

CREATE TABLE "subnetpool_mapping" (
	"aic_cloud_region" VARCHAR,
	"ntc" VARCHAR,
	"lcp" VARCHAR,
	"aic_region_id" VARCHAR,
	 PRIMARY KEY ("aic_cloud_region")
);

CREATE TABLE "service_type_mapping" (
	"sdnc_service_type" VARCHAR,
	"ncs_service_type" VARCHAR,
	 PRIMARY KEY ("sdnc_service_type","ncs_service_type")
);

CREATE TABLE "service_resource" (
	"service_resource_id" BIGINT,
	"service_instance_id" VARCHAR,
	"service_status" ENUM,
	"service_change_number" SMALLINT,
	"resource_set_id" VARCHAR,
	"resource_union_id" VARCHAR,
	 PRIMARY KEY ("service_instance_id","service_change_number")
);

CREATE TABLE "service_manager_credentials" (
	"service_manager_username" VARCHAR,
	"service_manager_password" VARBINARY,
	 PRIMARY KEY ("service_manager_username")
);

CREATE TABLE "service_instance_name_index" (
	"service_instance_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("service_instance_name_prefix")
);

CREATE TABLE "service_homing_backup" (
	"service_type" VARCHAR,
	"lata" INT,
	"hubbing_city_type" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"primary_aic_site_name" VARCHAR,
	"secondary_aic_site_name" VARCHAR,
	"tertiary_aic_site_name" VARCHAR,
	 PRIMARY KEY ("service_type","lata","hubbing_city_type")
);

CREATE TABLE "service_homing" (
	"service_type" VARCHAR,
	"lata" INT,
	"hubbing_city_type" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"primary_aic_site_name" VARCHAR,
	"secondary_aic_site_name" VARCHAR,
	"tertiary_aic_site_name" VARCHAR,
	 PRIMARY KEY ("service_type","lata","hubbing_city_type")
);

CREATE TABLE "routing_characteristic_mapping" (
	"network_role" VARCHAR,
	"vrf_name" VARCHAR,
	"routing_characteristic" VARCHAR,
	 PRIMARY KEY ("network_role","vrf_name")
);

CREATE TABLE "router_master" (
	"crs_name" VARCHAR,
	"loopback_ip" VARCHAR,
	 PRIMARY KEY ("crs_name")
);

CREATE TABLE "resource_threshold" (
	"resource_threshold_id" BIGINT,
	"resource_rule_id" BIGINT,
	"threshold_expression" VARCHAR,
	"threshold_message" VARCHAR,
	 PRIMARY KEY ("resource_threshold_id")
);

CREATE TABLE "resource_rule" (
	"resource_rule_id" BIGINT,
	"resource_name" VARCHAR,
	"service_model" VARCHAR,
	"end_point_position" VARCHAR,
	"service_expression" VARCHAR,
	"equipment_level" VARCHAR,
	"equipment_expression" VARCHAR,
	"allocation_expression" VARCHAR,
	"soft_limit_expression" VARCHAR,
	"hard_limit_expression" VARCHAR,
	 PRIMARY KEY ("resource_rule_id")
);

CREATE TABLE "resource_lock" (
	"resource_lock_id" BIGINT,
	"resource_name" VARCHAR,
	"lock_holder" VARCHAR,
	"lock_count" SMALLINT,
	"lock_time" DATETIME,
	"expiration_time" DATETIME,
	 PRIMARY KEY ("resource_lock_id")
);

CREATE TABLE "resource_load" (
	"resource_load_id" BIGINT,
	"resource_id" BIGINT,
	"application_id" VARCHAR,
	"resource_load_time" DATETIME,
	"resource_expiration_time" DATETIME,
	 PRIMARY KEY ("resource_load_id")
);

CREATE TABLE "resource" (
	"resource_id" BIGINT,
	"asset_id" VARCHAR,
	"resource_name" VARCHAR,
	"resource_type" ENUM,
	"lt_used" BIGINT,
	"ll_label" VARCHAR,
	"ll_reference_count" SMALLINT,
	"rr_used" VARCHAR,
	 PRIMARY KEY ("resource_id")
);

CREATE TABLE "request_progress_state" (
	"request_progress_state_id" INT,
	"request_id" INT,
	"service_instance_id" VARCHAR,
	"request_instance_type" VARCHAR,
	"progress_state" VARCHAR,
	"transaction_status" VARCHAR,
	"status_date" VARCHAR,
	"response_code" VARCHAR,
	"message" VARCHAR,
	 PRIMARY KEY ("request_progress_state_id")
);

CREATE TABLE "request_progress" (
	"request_id" INT,
	"request_type" VARCHAR,
	"service_instance_id" VARCHAR,
	"request_instance_type" VARCHAR,
	"originating_service_instance_id" VARCHAR,
	"originating_service_type" VARCHAR,
	"overall_status" VARCHAR,
	"status_date" VARCHAR,
	"message" VARCHAR,
	 PRIMARY KEY ("request_id")
);

CREATE TABLE "request_details" (
	"request_id" VARCHAR,
	"controller_id" VARCHAR,
	"status" VARCHAR,
	"service_rate" VARCHAR,
	"service_instance_id" VARCHAR,
	"service_type" VARCHAR,
	"global_customer_id" VARCHAR,
	"notification_url" VARCHAR,
	"domain_requests" VARCHAR,
	 PRIMARY KEY ("request_id")
);

CREATE TABLE "range_rule" (
	"range_rule_id" BIGINT,
	"range_name" VARCHAR,
	"service_model" VARCHAR,
	"end_point_position" VARCHAR,
	"equipment_level" VARCHAR,
	"min_value" INT,
	"max_value" INT,
	 PRIMARY KEY ("range_rule_id")
);

CREATE TABLE "pserver" (
	"hostname" VARCHAR,
	"ptnii_equip_name" VARCHAR,
	"number_of_cpus" VARCHAR,
	"disk_in_gigabytes" VARCHAR,
	"ram_in_megabytes" VARCHAR,
	"equip_type" VARCHAR,
	"equip_vendor" VARCHAR,
	"equip_model" VARCHAR,
	"fqdn" VARCHAR,
	"pserver_selflink" VARCHAR,
	"ipv4_oam_address" VARCHAR,
	"serial_number" VARCHAR,
	"pserver_id" VARCHAR,
	"internet_topology" VARCHAR,
	"aic_site_id" VARCHAR,
	"in_maint" VARCHAR,
	"pserver_name2" VARCHAR,
	"purpose" VARCHAR,
	 PRIMARY KEY ("hostname")
);

CREATE TABLE "pre_load_vnf_network_data" (
	"id" INT,
	"svc_request_id" VARCHAR,
	"svc_action" VARCHAR,
	"status" VARCHAR,
	"filename" VARCHAR,
	"ts" TIMESTAMP,
	"preload_data" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pre_load_vnf_data" (
	"id" INT,
	"svc_request_id" VARCHAR,
	"svc_action" VARCHAR,
	"status" VARCHAR,
	"filename" VARCHAR,
	"ts" TIMESTAMP,
	"preload_data" LONGBLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "portal_users" (
	"email" VARCHAR,
	"password" VARBINARY,
	"privilege" CHAR,
	 PRIMARY KEY ("email")
);

CREATE TABLE "policy_update_notification" (
	"policy_name" VARCHAR,
	"version_id" VARCHAR,
	"update_type" VARCHAR,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("policy_name","version_id")
);

CREATE TABLE "pinterface" (
	"hostname" VARCHAR,
	"port_name_ft" VARCHAR,
	"interface_name" VARCHAR,
	"physical_speed" VARCHAR,
	"physical_units" VARCHAR,
	"port_description" VARCHAR,
	 PRIMARY KEY ("hostname","port_name_ft")
);

CREATE TABLE "physical_link_pinterface" (
	"link_name" VARCHAR,
	"hostname" VARCHAR,
	"port_name_ft" VARCHAR,
	 PRIMARY KEY ("link_name","hostname","port_name_ft")
);

CREATE TABLE "physical_link" (
	"link_name" VARCHAR,
	"speed_value" VARCHAR,
	"speed_units" VARCHAR,
	"circuit_id" VARCHAR,
	"dual_mode" VARCHAR,
	 PRIMARY KEY ("link_name")
);

CREATE TABLE "pe_inv" (
	"equip_id" INT,
	"equip_type" VARCHAR,
	"ptnii_equip_name" VARCHAR,
	"ip_addr" VARCHAR,
	"router_prov_status" VARCHAR,
	"region" VARCHAR,
	"country_abbr" VARCHAR,
	"equip_name_code" VARCHAR,
	"as_number" VARCHAR,
	"loopback1" VARCHAR,
	"loopback2" VARCHAR,
	"loopback3" VARCHAR,
	"loopback40" VARCHAR,
	"loopback65535" VARCHAR,
	"inms_list" VARCHAR,
	"encrypted_access_flag" VARCHAR,
	"sw_name" VARCHAR,
	"nmipaddr" VARCHAR,
	"create_date" DATETIME,
	"mod_date" DATETIME,
	"fcn_code" VARCHAR
);

CREATE TABLE "parameters" (
	"name" VARCHAR,
	"value" VARCHAR,
	"category" VARCHAR,
	"memo" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "object_group_member_tracking" (
	"group_id" VARCHAR,
	"key_id" VARCHAR,
	"key_type" VARCHAR,
	 PRIMARY KEY ("group_id","key_id","key_type")
);

CREATE TABLE "object_grouping" (
	"group_id" VARCHAR,
	"group_type" VARCHAR,
	 PRIMARY KEY ("group_id")
);

CREATE TABLE "node_types" (
	"nodetype" VARCHAR,
	 PRIMARY KEY ("nodetype")
);

CREATE TABLE "network_role_vpn_binding" (
	"network_role" VARCHAR,
	"vpn_id" VARCHAR,
	 PRIMARY KEY ("network_role","vpn_id")
);

CREATE TABLE "network_profile" (
	"network_type" VARCHAR,
	"technology" VARCHAR,
	 PRIMARY KEY ("network_type")
);

CREATE TABLE "network_model" (
	"customization_uuid" VARCHAR,
	"service_uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"uuid" VARCHAR,
	"network_type" VARCHAR,
	"network_role" VARCHAR,
	"network_technology" VARCHAR,
	"trunk_network_indicator" CHAR,
	"network_scope" VARCHAR,
	"naming_policy" VARCHAR,
	"ecomp_generated_naming" CHAR,
	"is_shared_network" CHAR,
	"is_external_network" CHAR,
	"is_provider_network" CHAR,
	"physical_network_name" VARCHAR,
	"is_bound_to_vpn" CHAR,
	"vpn_binding" VARCHAR,
	"use_ipv4" CHAR,
	"ipv4_dhcp_enabled" CHAR,
	"ipv4_ip_version" CHAR,
	"ipv4_cidr_mask" VARCHAR,
	"eipam_v4_address_plan" VARCHAR,
	"use_ipv6" CHAR,
	"ipv6_dhcp_enabled" CHAR,
	"ipv6_ip_version" CHAR,
	"ipv6_cidr_mask" VARCHAR,
	"eipam_v6_address_plan" VARCHAR,
	"version" VARCHAR,
	 PRIMARY KEY ("customization_uuid")
);

CREATE TABLE "service_model" (
	"service_uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"version" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"type" VARCHAR,
	"category" VARCHAR,
	"ecomp_naming" CHAR,
	"service_instance_name_prefix" VARCHAR,
	"filename" VARCHAR,
	"naming_policy" VARCHAR,
	 PRIMARY KEY ("service_uuid")
);

CREATE TABLE "service_proxy" (
	"port_mirror_service_uuid" VARCHAR,
	"service_proxy_name" VARCHAR,
	"source_service_uuid" VARCHAR,
	"resources_vendor" VARCHAR,
	"resource_vendor_release" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	"subcategory" VARCHAR,
	"version" VARCHAR,
	"role" VARCHAR,
	"uuid" VARCHAR,
	"customization_uuid" VARCHAR,
	"invariant_uuid" VARCHAR,
	 PRIMARY KEY ("port_mirror_service_uuid","service_proxy_name"),
	 CONSTRAINT "FK_SERVICE_PROXY_MIRROR_TO_SERVICE_MODE" FOREIGN KEY ("port_mirror_service_uuid") REFERENCES "service_model" ("service_uuid")
);

CREATE TABLE "network_instance_name_index" (
	"network_instance_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("network_instance_name_prefix")
);

CREATE TABLE "ncs_expected_async_requests" (
	"ncs_request_id" VARCHAR,
	"mso_gp_request_id" VARCHAR,
	"service_instance_id" VARCHAR,
	"sdn_module_name" VARCHAR,
	"sdn_rpc_name" VARCHAR,
	"sdn_service_action" VARCHAR,
	"ncs_rpc" VARCHAR,
	"ncs_sub_action" VARCHAR,
	"status" VARCHAR,
	"creation_time" DATETIME,
	 PRIMARY KEY ("ncs_request_id")
);

CREATE TABLE "nbnc_service_vlan" (
	"be_id" VARCHAR,
	"vlan" SMALLINT,
	"service_type" VARCHAR,
	"be_type" VARCHAR,
	"be_name" VARCHAR,
	"be_host_vnf_id" VARCHAR,
	"be_location" VARCHAR,
	"be_usage_order" SMALLINT,
	"vlan_usage_order" SMALLINT,
	"status" VARCHAR,
	"request_id" VARCHAR,
	"service_instance_id" VARCHAR,
	"vni_id" VARCHAR,
	"customer_id" VARCHAR,
	"ipe1_router_name" VARCHAR,
	"ipe1_port_id" VARCHAR,
	"ipe1_ae_name" VARCHAR,
	"ipe2_router_name" VARCHAR,
	"ipe2_port_id" VARCHAR,
	"ipe2_ae_name" VARCHAR,
	"available_timestamp" TIMESTAMP,
	"allocated_timestamp" TIMESTAMP,
	"disabled_timestamp" TIMESTAMP,
	"enabled_timestamp" TIMESTAMP,
	"vpn_id" VARCHAR,
	"vpn_rt" VARCHAR,
	 PRIMARY KEY ("be_id","vlan")
);

CREATE TABLE "nbnc_service" (
	"service_type" VARCHAR,
	"service_model_uuid" VARCHAR,
	"description" VARCHAR,
	"created_timestamp" TIMESTAMP,
	"updated_timestamp" TIMESTAMP,
	 PRIMARY KEY ("service_type")
);

CREATE TABLE "nbnc_mapping_sbg_bgf" (
	"asbg_vlan" SMALLINT,
	"bgf_vlan" SMALLINT,
	 PRIMARY KEY ("asbg_vlan")
);

CREATE TABLE "nbnc_ipe_port" (
	"port_id" VARCHAR,
	"ipe_name" VARCHAR,
	"be_id" VARCHAR,
	"be_type" VARCHAR,
	"port_type" VARCHAR,
	"ae_name" VARCHAR,
	"description" VARCHAR,
	"updated_timestamp" TIMESTAMP,
	 PRIMARY KEY ("port_id","ipe_name","be_id","be_type")
);

CREATE TABLE "nbnc_ipe" (
	"ipe_name" VARCHAR,
	"ipe_location" VARCHAR,
	"ipe_ip_address" VARCHAR,
	"ipe_id" VARCHAR,
	"service_type_array" VARCHAR,
	"ipe_status" VARCHAR,
	"updated_timestamp" TIMESTAMP,
	 PRIMARY KEY ("ipe_name")
);

CREATE TABLE "nbnc_border_element" (
	"be_id" VARCHAR,
	"be_type" VARCHAR,
	"be_name" VARCHAR,
	"be_host_vnf_id" VARCHAR,
	"service_type" VARCHAR,
	"tangibility" VARCHAR,
	"usage_order" SMALLINT,
	"vlan_start" SMALLINT,
	"vlan_end" SMALLINT,
	"ipv4_subnet" VARCHAR,
	"ipv6_subnet" VARCHAR,
	"network_ip" VARCHAR,
	"be_location" VARCHAR,
	"description" VARCHAR,
	"updated_timestamp" TIMESTAMP,
	"log_link_model_uuid" VARCHAR,
	 PRIMARY KEY ("be_id","be_type")
);

CREATE TABLE "nbnc_assign_vpn_override" (
	"vpn_id" VARCHAR,
	"vpn_rt" VARCHAR,
	"service_type" VARCHAR,
	"be_location" VARCHAR,
	"be_type" VARCHAR,
	"be_id" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("vpn_id","vpn_rt","service_type","be_location","be_type")
);

CREATE TABLE "naming_policy_vnfc_name_index" (
	"vnfc_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("vnfc_name_prefix")
);

CREATE TABLE "naming_policy_vm_name_index" (
	"vm_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("vm_name_prefix")
);

CREATE TABLE "max_server_speed" (
	"max_server_speed_id" BIGINT,
	"server_model" VARCHAR,
	"evc_count" SMALLINT,
	"max_speed" BIGINT,
	"unit" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("max_server_speed_id")
);

CREATE TABLE "max_port_speed" (
	"max_port_speed_id" BIGINT,
	"image_file_name" VARCHAR,
	"end_point_position" VARCHAR,
	"interface_name" VARCHAR,
	"max_speed" BIGINT,
	"unit" VARCHAR,
	 PRIMARY KEY ("max_port_speed_id")
);

CREATE TABLE "link_master" (
	"link_interface_ip" VARCHAR,
	"source_crs_name" VARCHAR,
	"destination_crs_name" VARCHAR,
	"max_reserved_bw" INT,
	"default_cost" INT,
	"bundle_name" VARCHAR,
	 PRIMARY KEY ("link_interface_ip")
);

CREATE TABLE "ipv4_address_pool" (
	"aic_site_id" VARCHAR,
	"universe" VARCHAR,
	"status" VARCHAR,
	"ipv4_addr" VARCHAR,
	 PRIMARY KEY ("ipv4_addr","universe")
);

CREATE TABLE "generic_vpn_binding" (
	"vpn_id" VARCHAR,
	"vpn_name" VARCHAR,
	"global_route_target" VARCHAR,
	 PRIMARY KEY ("vpn_id")
);

CREATE TABLE "generic_vnf_vserver" (
	"vnf_id" VARCHAR,
	"vserver_id" VARCHAR,
	"tenant_id" VARCHAR,
	 PRIMARY KEY ("vnf_id","vserver_id")
);

CREATE TABLE "generic_vnf_vnf_image" (
	"vnf_id" VARCHAR,
	"att_uuid" VARCHAR,
	 PRIMARY KEY ("vnf_id","att_uuid")
);

CREATE TABLE "generic_vnf_service_instance" (
	"vnf_id" VARCHAR,
	"service_instance_id" VARCHAR,
	"relationship_key" VARCHAR,
	"relationship_value" VARCHAR,
	"global_customer_id" VARCHAR,
	"service_type" VARCHAR,
	 PRIMARY KEY ("vnf_id","service_instance_id","relationship_key")
);

CREATE TABLE "generic_vnf_pserver" (
	"vnf_id" VARCHAR,
	"hostname" VARCHAR,
	 PRIMARY KEY ("vnf_id","hostname")
);

CREATE TABLE "generic_vnf_license_management" (
	"vnf_id" VARCHAR,
	"att_uuid" VARCHAR,
	 PRIMARY KEY ("vnf_id","att_uuid")
);

CREATE TABLE "generic_vnf_l3_network" (
	"vnf_id" VARCHAR,
	"network_id" VARCHAR,
	 PRIMARY KEY ("vnf_id","network_id")
);

CREATE TABLE "generic_vnf" (
	"vnf_id" VARCHAR,
	"vnf_name" VARCHAR,
	"vnf_type" VARCHAR,
	"vnf_name2" VARCHAR,
	"service_id" VARCHAR,
	"equipment_role" VARCHAR,
	"orchestration_status" VARCHAR,
	"prov_status" VARCHAR,
	"heat_stack_id" VARCHAR,
	"mso_catalog_key" VARCHAR,
	"regional_resource_zone" VARCHAR,
	"operational_state" VARCHAR,
	"license_key" VARCHAR,
	"ipv4_oam_address" VARCHAR,
	"ipv4_loopback0_address" VARCHAR,
	"nm_lan_v6_address" VARCHAR,
	"management_v6_address" VARCHAR,
	"management_option" VARCHAR,
	"vcpu" VARCHAR,
	"vmemory" VARCHAR,
	"vdisk" VARCHAR,
	"vcpu_units" VARCHAR,
	"vmemory_units" VARCHAR,
	"vdisk_units" VARCHAR,
	 PRIMARY KEY ("vnf_id")
);

CREATE TABLE "generic_vnf_linterface" (
	"vnf_id" VARCHAR,
	"interface_name" VARCHAR,
	"interface_role" VARCHAR,
	"v6_wan_link_ip" VARCHAR,
	"selflink" VARCHAR,
	"interface_id" VARCHAR,
	"macaddr" VARCHAR,
	"network_name" VARCHAR,
	 PRIMARY KEY ("vnf_id","interface_name"),
	 CONSTRAINT "FK_GENERIC_VNF_LINTERFACE_GENERIC_VNF" FOREIGN KEY ("vnf_id") REFERENCES "generic_vnf" ("vnf_id")
);

CREATE TABLE "linterface_vlan" (
	"vnf_id" VARCHAR,
	"interface_name" VARCHAR,
	"vlan_interface" VARCHAR,
	"vlan_id_inner" VARCHAR,
	"vlan_id_outer" VARCHAR,
	 PRIMARY KEY ("vnf_id","interface_name","vlan_interface"),
	 CONSTRAINT "FK_LINTERFACE_VLAN_GENERIC_VNF_LINTERFACE" FOREIGN KEY ("vnf_id","interface_name") REFERENCES "generic_vnf_linterface" ("vnf_id","interface_name")
);

CREATE TABLE "vlan_l3interface_ipv6_address" (
	"vnf_id" VARCHAR,
	"interface_name" VARCHAR,
	"vlan_interface" VARCHAR,
	"l3_interface_ipv6_address" VARCHAR,
	"l3_interface_ipv6_prefix_length" VARCHAR,
	"vlan_id_inner" VARCHAR,
	"vlan_id_outer" VARCHAR,
	"is_floating" VARCHAR,
	 PRIMARY KEY ("vnf_id","interface_name","vlan_interface","l3_interface_ipv6_address"),
	 CONSTRAINT "FK_VLAN_L3INTERFACE_IPV6_ADDRESS_LINTERFACE_VLAN" FOREIGN KEY ("vnf_id","interface_name","vlan_interface") REFERENCES "linterface_vlan" ("vnf_id","interface_name","vlan_interface")
);

CREATE TABLE "vlan_l3interface_ipv4_address" (
	"vnf_id" VARCHAR,
	"interface_name" VARCHAR,
	"vlan_interface" VARCHAR,
	"l3_interface_ipv4_address" VARCHAR,
	"l3_interface_ipv4_prefix_length" VARCHAR,
	"vlan_id_inner" VARCHAR,
	"vlan_id_outer" VARCHAR,
	"is_floating" VARCHAR,
	 PRIMARY KEY ("vnf_id","interface_name","vlan_interface","l3_interface_ipv4_address"),
	 CONSTRAINT "FK_VLAN_L3INTERFACE_IPV4_ADDRESS_LINTERFACE_VLAN" FOREIGN KEY ("vnf_id","interface_name","vlan_interface") REFERENCES "linterface_vlan" ("vnf_id","interface_name","vlan_interface")
);

CREATE TABLE "generic_resource_name" (
	"type" VARCHAR,
	"name" VARCHAR,
	"prefix" VARCHAR,
	"name_index" INT,
	"context_id" VARCHAR,
	 PRIMARY KEY ("type","name")
);

CREATE TABLE "generic_l3_network_vpn_binding" (
	"network_id" VARCHAR,
	"vpn_id" VARCHAR,
	 PRIMARY KEY ("network_id","vpn_id")
);

CREATE TABLE "generic_l3_network_subnet" (
	"network_id" VARCHAR,
	"subnet_id" VARCHAR,
	"neutron_subnet_id" VARCHAR,
	"gateway_address" VARCHAR,
	"network_start_address" VARCHAR,
	"cidr_mask" VARCHAR,
	"ip_version" CHAR,
	"orchestration_status" VARCHAR,
	"dhcp_enabled" TINYINT,
	"dhcp_start" VARCHAR,
	"dhcp_end" VARCHAR,
	 PRIMARY KEY ("network_id","subnet_id")
);

CREATE TABLE "generic_l3_network" (
	"network_id" VARCHAR,
	"network_name" VARCHAR,
	"network_type" VARCHAR,
	"network_role" VARCHAR,
	"network_technology" VARCHAR,
	"neutron_network_id" VARCHAR,
	"is_bound_to_vpn" TINYINT,
	"orchestration_status" VARCHAR,
	"heat_stack_id" VARCHAR,
	"mso_catalog_key" VARCHAR,
	"service_id" VARCHAR,
	"tenant_id" VARCHAR,
	"physical_location_id" VARCHAR,
	"network_role_instance" VARCHAR,
	 PRIMARY KEY ("network_id")
);

CREATE TABLE "flow_updates" (
	"seq" INT,
	"status" ENUM,
	"create_timestamp" TIMESTAMP,
	"last_processed_timestamp" TIMESTAMP,
	"odl" VARCHAR,
	"address_family" ENUM,
	"destination_prefix" VARCHAR,
	"communities" VARCHAR,
	"route_key" VARCHAR,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "external_data" (
	"external_data_id" INT,
	"request_id" INT,
	"param_name" VARCHAR,
	"param_value" VARCHAR,
	 PRIMARY KEY ("external_data_id")
);

CREATE TABLE "eipam_request_key" (
	"key_name_1" VARCHAR,
	"address_family" VARCHAR,
	"serial_key" INT,
	"plan_name" VARCHAR,
	"request_length" INT,
	"pools_length" INT,
	"plan_length" INT,
	"key_name_0" VARCHAR,
	"key_name_type_0" VARCHAR,
	"key_name_type_1" VARCHAR,
	"prefix_length" INT,
	"group_flag" CHAR,
	"address_type" VARCHAR,
	 PRIMARY KEY ("key_name_1","address_family")
);

CREATE TABLE "eipam_ip_subnet_keys" (
	"entity_id" INT,
	"key_name" VARCHAR,
	"key_value" VARCHAR,
	"level" INT,
	 PRIMARY KEY ("entity_id","key_name","key_value","level")
);

CREATE TABLE "eipam_ip_pools" (
	"pool_id" INT,
	"key_name" VARCHAR,
	"key_value" VARCHAR,
	"level" INT,
	"plan_name" VARCHAR,
	"address_family" VARCHAR,
	"parent_pool" VARCHAR,
	"service_instance_id" VARCHAR,
	"network_id" VARCHAR,
	"created_timestamp" TIMESTAMP,
	"delete_failure" VARCHAR,
	"delete_request_id" VARCHAR,
	 PRIMARY KEY ("pool_id")
);

CREATE TABLE "eipam_ip_subnets" (
	"entity_id" INT,
	"service_type" VARCHAR,
	"plan_name" VARCHAR,
	"address_family" VARCHAR,
	"ip_address" VARCHAR,
	"prefix_length" INT,
	"status" VARCHAR,
	"last_modified_ts" TIMESTAMP,
	"network_id" VARCHAR,
	"pool_id" INT,
	"dealloc_failure" VARCHAR,
	"dealloc_request_id" VARCHAR,
	 PRIMARY KEY ("entity_id"),
	 CONSTRAINT "EIPAM_IP_SUBNETS_ibfk_1" FOREIGN KEY ("pool_id") REFERENCES "eipam_ip_pools" ("pool_id"),
	 CONSTRAINT "FK_EIPAM_IP_SUBNETS_EIPAM_IP_POOLS" FOREIGN KEY ("pool_id") REFERENCES "eipam_ip_pools" ("pool_id")
);

CREATE TABLE "eipam_ip_assignments" (
	"plan_name" VARCHAR,
	"client_key" VARCHAR,
	"service_type" VARCHAR,
	"ip_address" VARCHAR,
	"prefix_length" INT,
	"status" VARCHAR,
	"service_instance_id" VARCHAR,
	"last_modified_ts" TIMESTAMP,
	"prev_status" VARCHAR,
	"info" VARCHAR,
	 PRIMARY KEY ("plan_name","client_key")
);

CREATE TABLE "eipam_client_key_index" (
	"vnf_name_prefix" VARCHAR,
	"index_number" INT,
	 PRIMARY KEY ("vnf_name_prefix")
);

CREATE TABLE "download_dg_reference" (
	"download_dg_reference_id" INT,
	"protocol" VARCHAR,
	"download_config_dg" VARCHAR,
	 PRIMARY KEY ("download_dg_reference_id")
);

CREATE TABLE "download_config_template" (
	"download_config_template_id" INT,
	"vnf_type" VARCHAR,
	"protocol" VARCHAR,
	"template" LONGTEXT,
	 PRIMARY KEY ("download_config_template_id")
);

CREATE TABLE "device_interface_protocol" (
	"device_interface_protocol_id" INT,
	"vnf_type" VARCHAR,
	"protocol" VARCHAR,
	"module" VARCHAR,
	"dg_rpc" VARCHAR,
	 PRIMARY KEY ("device_interface_protocol_id")
);

CREATE TABLE "get_config_template" (
	"get_config_template_id" INT,
	"vnf_type" VARCHAR,
	"device_interface_protocol_id" INT,
	"xml_processing" VARCHAR,
	"xml_protocol" VARCHAR,
	"template" LONGTEXT,
	 PRIMARY KEY ("get_config_template_id"),
	 CONSTRAINT "get_config_template_ibfk_1" FOREIGN KEY ("device_interface_protocol_id") REFERENCES "device_interface_protocol" ("device_interface_protocol_id")
);

CREATE TABLE "device_interface_log" (
	"device_interface_log_id" INT,
	"service_instance_id" VARCHAR,
	"request_id" VARCHAR,
	"creation_date" DATETIME,
	"log" LONGTEXT,
	 PRIMARY KEY ("device_interface_log_id")
);

CREATE TABLE "device_authentication" (
	"device_authentication_id" INT,
	"vnf_type" VARCHAR,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"protocol" VARCHAR,
	"port_number" INT,
	 PRIMARY KEY ("device_authentication_id")
);

CREATE TABLE "device2ipaddress_mapping" (
	"serial_key" INT,
	"device_id" VARCHAR,
	"device_type" VARCHAR,
	"secondary_key" VARCHAR,
	"secondary_key_type" VARCHAR,
	"address" VARCHAR,
	"address_type" VARCHAR,
	"ip_version" VARCHAR,
	"length" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("serial_key")
);

CREATE TABLE "device2ipaddress_consumption" (
	"serial_key" INT,
	"device_id" VARCHAR,
	"device_type" VARCHAR,
	"ip_version" VARCHAR,
	"consumption_key" VARCHAR,
	"logical_interface_service_id" VARCHAR,
	"address_type" VARCHAR,
	"ip_consumed" VARCHAR,
	"vnf_type" VARCHAR,
	"secondary_key" VARCHAR,
	 PRIMARY KEY ("serial_key")
);

CREATE TABLE "device2connection_mapping" (
	"vnf_host_name" VARCHAR,
	"e2e_vpn_key" VARCHAR,
	"service_type" VARCHAR,
	"connection_id" VARCHAR,
	 PRIMARY KEY ("vnf_host_name","e2e_vpn_key","service_type")
);

CREATE TABLE "data_object_mapping" (
	"serial_key" INT,
	"data_object_key" VARCHAR,
	"data_object_type" VARCHAR,
	"service_type" VARCHAR,
	"data_object_key2" VARCHAR,
	"data_object_key2_type" VARCHAR,
	"data_object_key3" VARCHAR,
	"data_object_key3_type" VARCHAR,
	"service" VARCHAR,
	 PRIMARY KEY ("serial_key")
);

CREATE TABLE "customer2connection_mapping_new" (
	"customer2connection_id" INT,
	"service_instance_id" VARCHAR,
	"instance_type" VARCHAR,
	"originating_service_instance_id" VARCHAR,
	"originating_service_type" VARCHAR,
	"service_type" VARCHAR,
	"connection_id" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("customer2connection_id")
);

CREATE TABLE "customer2connection_mapping" (
	"customer2connection_id" INT,
	"service_instance_id" VARCHAR,
	"instance_type" VARCHAR,
	"originating_service_instance_id" VARCHAR,
	"originating_service_type" VARCHAR,
	"service_type" VARCHAR,
	"connection_id" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("customer2connection_id")
);

CREATE TABLE "country_asn_mapping" (
	"asn" INT,
	"iso_2char" VARCHAR,
	"iso_3char" VARCHAR
);

CREATE TABLE "config_transaction_log" (
	"config_transaction_log_id" VARCHAR,
	"request_id" VARCHAR,
	"message_type" VARCHAR,
	"creation_date" DATETIME,
	"message" LONGTEXT,
	 PRIMARY KEY ("config_transaction_log_id")
);

CREATE TABLE "config_file_reference" (
	"config_file_reference_id" INT,
	"site_location" VARCHAR,
	"vnf_type" VARCHAR,
	"import_type" VARCHAR,
	"file_type" VARCHAR,
	"source_server_name" VARCHAR,
	"source_file_path" VARCHAR,
	"target_file_path" VARCHAR,
	"name" VARCHAR,
	"file_name" VARCHAR,
	 PRIMARY KEY ("config_file_reference_id")
);

CREATE TABLE "config_content" (
	"config_content_id" INT,
	"request_id" VARCHAR,
	"content_type" VARCHAR,
	"template_name" VARCHAR,
	"originator_id" VARCHAR,
	"service_description" VARCHAR,
	"action" VARCHAR,
	"creation_date" DATETIME,
	"service_type" VARCHAR,
	"service_instance_id" VARCHAR,
	"vnf_id" VARCHAR,
	"vnf_name" VARCHAR,
	"vm_name" VARCHAR,
	"vnf_type" VARCHAR,
	"vnfc_type" VARCHAR,
	"host_ip_address" VARCHAR,
	"config_indicator" VARCHAR,
	"pending_delete" VARCHAR,
	"content" LONGTEXT,
	 PRIMARY KEY ("config_content_id")
);

CREATE TABLE "configure_action_dg" (
	"configure_action_dg_id" INT,
	"vnf_type" VARCHAR,
	"action" VARCHAR,
	"init_config_dg" VARCHAR,
	"generate_config_dg" VARCHAR,
	"download_config_dg" VARCHAR,
	 PRIMARY KEY ("configure_action_dg_id")
);

CREATE TABLE "configfiles" (
	"config_file_id" INT,
	"external_version" VARCHAR,
	"data_source" VARCHAR,
	"creation_date" DATETIME,
	"service_instance_id" VARCHAR,
	"vnf_type" VARCHAR,
	"vnfc_type" VARCHAR,
	"file_category" VARCHAR,
	"file_name" VARCHAR,
	"file_content" LONGTEXT,
	"action" VARCHAR,
	"vnf_id" VARCHAR,
	"vm_name" VARCHAR,
	"vnf_name" VARCHAR,
	 PRIMARY KEY ("config_file_id")
);

CREATE TABLE "cli_updates" (
	"seq" INT,
	"status" ENUM,
	"create_timestamp" TIMESTAMP,
	"last_processed_timestamp" TIMESTAMP,
	"target_address" VARCHAR,
	"cli_text" VARCHAR,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "city_code" (
	"city_code_id" INT,
	"city_code" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"country_code" VARCHAR,
	 PRIMARY KEY ("city_code_id")
);

CREATE TABLE "location" (
	"loc_id" INT,
	"address" VARCHAR,
	"city_code_id" INT,
	"create_date" DATETIME,
	 PRIMARY KEY ("loc_id"),
	 CONSTRAINT "FK1_LOCATION" FOREIGN KEY ("city_code_id") REFERENCES "city_code" ("city_code_id")
);

CREATE TABLE "capability" (
	"capability_id" INT,
	"capability_name" VARCHAR,
	"implementation_name" VARCHAR,
	"operation_name" VARCHAR,
	"operation_description" VARCHAR,
	"input_definition" LONGTEXT,
	"output_definition" LONGTEXT,
	"dependency_definition" LONGTEXT,
	"tags" VARCHAR,
	 PRIMARY KEY ("capability_id")
);

CREATE TABLE "blob_test" (
	"seq" INT,
	"odl" VARCHAR,
	"communities" MEDIUMBLOB,
	"status" ENUM,
	"retry_count" INT,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "asdc_reference" (
	"asdc_reference_id" INT,
	"service_type" VARCHAR,
	"vnf_type" VARCHAR,
	"vnfc_type" VARCHAR,
	"file_category" VARCHAR,
	"action" VARCHAR,
	"artifact_type" VARCHAR,
	"artifact_name" VARCHAR,
	 PRIMARY KEY ("asdc_reference_id")
);

CREATE TABLE "asdc_artifacts" (
	"asdc_artifacts_id" INT,
	"service_uuid" VARCHAR,
	"distribution_id" VARCHAR,
	"service_name" VARCHAR,
	"service_description" VARCHAR,
	"resource_uuid" VARCHAR,
	"resource_instance_name" VARCHAR,
	"resource_name" VARCHAR,
	"resource_version" VARCHAR,
	"resource_type" VARCHAR,
	"artifact_uuid" VARCHAR,
	"artifact_type" VARCHAR,
	"artifact_version" VARCHAR,
	"artifact_description" VARCHAR,
	"internal_version" INT,
	"creation_date" DATETIME,
	"artifact_name" VARCHAR,
	"artifact_content" LONGTEXT,
	 PRIMARY KEY ("asdc_artifacts_id")
);

CREATE TABLE "prepare_file_relationship" (
	"prepare_file_relationship_id" INT,
	"service_instance_id" VARCHAR,
	"request_id" VARCHAR,
	"config_file_id" INT,
	"asdc_artifacts_id" INT,
	 PRIMARY KEY ("prepare_file_relationship_id"),
	 CONSTRAINT "prepare_file_replationship_ibfk_1" FOREIGN KEY ("config_file_id") REFERENCES "configfiles" ("config_file_id"),
	 CONSTRAINT "prepare_file_relationship_ibfk_2" FOREIGN KEY ("asdc_artifacts_id") REFERENCES "asdc_artifacts" ("asdc_artifacts_id")
);

CREATE TABLE "alts_credentials" (
	"alts_username" VARCHAR,
	"alts_password" VARBINARY,
	 PRIMARY KEY ("alts_username")
);

CREATE TABLE "allotted_resource_model" (
	"customization_uuid" VARCHAR,
	"model_yaml" LONGBLOB,
	"invariant_uuid" VARCHAR,
	"uuid" VARCHAR,
	"version" VARCHAR,
	"naming_policy" VARCHAR,
	"ecomp_generated_naming" CHAR,
	"depending_service" VARCHAR,
	"role" VARCHAR,
	"type" VARCHAR,
	"service_dependency" VARCHAR,
	"allotted_resource_type" VARCHAR,
	 PRIMARY KEY ("customization_uuid")
);

CREATE TABLE "allocation_item" (
	"allocation_item_id" BIGINT,
	"resource_id" BIGINT,
	"application_id" VARCHAR,
	"resource_set_id" VARCHAR,
	"resource_union_id" VARCHAR,
	"resource_share_group_list" VARCHAR,
	"lt_used" BIGINT,
	"ll_label" VARCHAR,
	"rr_used" VARCHAR,
	"allocation_time" DATETIME,
	 PRIMARY KEY ("allocation_item_id")
);

CREATE TABLE "aic_zone_cloud_region_id" (
	"zone_region_id" VARCHAR,
	"cilli_code" VARCHAR,
	"location_id" VARCHAR,
	"city_state_country" VARCHAR,
	 PRIMARY KEY ("zone_region_id","cilli_code","location_id","city_state_country")
);

CREATE TABLE "aic_switch" (
	"switch_name" VARCHAR,
	"physical_network_name" VARCHAR,
	"aic_site_id" VARCHAR,
	"uuid" VARCHAR,
	"availability_zone" VARCHAR,
	 PRIMARY KEY ("physical_network_name")
);

CREATE TABLE "aic_site" (
	"name" VARCHAR,
	"aic_site_id" VARCHAR,
	"vcenter_url" VARCHAR,
	"vcenter_username" VARCHAR,
	"vcenter_passwd" VARBINARY,
	"city" VARCHAR,
	"state" VARCHAR,
	"operational_status" VARCHAR,
	"oam_gateway_addr" VARCHAR,
	 PRIMARY KEY ("aic_site_id")
);

CREATE TABLE "aic_network" (
	"network_id" VARCHAR,
	"network_name" VARCHAR,
	"status" VARCHAR,
	"tenant_id" VARCHAR,
	"switch_uuid" VARCHAR,
	"portgroup_name" VARCHAR,
	"portgroup_id" VARCHAR,
	 PRIMARY KEY ("network_id")
);

CREATE TABLE "aic_avail_zone_pool" (
	"aic_site_id" VARCHAR,
	"status" VARCHAR,
	"availability_zone" VARCHAR,
	"token" VARCHAR,
	"vnf_id" VARCHAR,
	"service_type" VARCHAR,
	"vnf_type" VARCHAR,
	"hypervisor" VARCHAR,
	 PRIMARY KEY ("aic_site_id","availability_zone","token")
);

CREATE TABLE "agnostic_to_svc_spcfc_api" (
	"operation" VARCHAR,
	"service" VARCHAR,
	"service_specific_api" VARCHAR,
	"async_process" VARCHAR,
	 PRIMARY KEY ("operation","service")
);

CREATE TABLE "agnostic_notification_url" (
	"service_type" VARCHAR,
	"service_instance_id" VARCHAR,
	"request_id" VARCHAR,
	"svc_notification_url" VARCHAR,
	 PRIMARY KEY ("service_type","service_instance_id","request_id")
);

CREATE TABLE "address_plan_policies" (
	"key_name" VARCHAR,
	"key_value_source_type" VARCHAR,
	"key_value_source" VARCHAR,
	 PRIMARY KEY ("key_name")
);

CREATE TABLE "customer" (
	"cust_id" INT,
	"customer_name" VARCHAR,
	"grua" VARCHAR,
	"create_date" DATETIME,
	 PRIMARY KEY ("cust_id")
);

CREATE TABLE "hostname" (
	"hostname" VARCHAR,
	"parent_hostname" VARCHAR,
	"cust_id" INT,
	"loc_id" INT,
	"site_sequence" VARCHAR,
	"server_sequence" VARCHAR,
	"activation_code" VARCHAR,
	"vnf_sequence" VARCHAR,
	"vendor_code" VARCHAR,
	"virtual_device_type" VARCHAR,
	"device_sequence" VARCHAR,
	"create_date" DATETIME,
	 PRIMARY KEY ("hostname"),
	 CONSTRAINT "FK1_HOSTNAME" FOREIGN KEY ("cust_id") REFERENCES "customer" ("cust_id"),
	 CONSTRAINT "FK2_HOSTNAME" FOREIGN KEY ("loc_id") REFERENCES "location" ("loc_id"),
	 CONSTRAINT "FK4_HOSTNAME" FOREIGN KEY ("parent_hostname") REFERENCES "hostname" ("hostname")
);

CREATE TABLE "aic_hostname" (
	"hostname" VARCHAR,
	"cust_id" INT,
	"vendor_code" VARCHAR,
	"virtual_device_type" VARCHAR,
	"device_sequence" VARCHAR,
	"create_date" DATETIME,
	 PRIMARY KEY ("hostname"),
	 CONSTRAINT "AC1_HOSTNAME" FOREIGN KEY ("cust_id") REFERENCES "customer" ("cust_id")
);

CREATE TABLE "access_log" (
	"access_log_seq" INT,
	"timestamp" TIMESTAMP,
	"method" VARCHAR,
	"version" VARCHAR,
	"status" VARCHAR,
	"url" VARCHAR,
	"remote_address" VARCHAR,
	 PRIMARY KEY ("access_log_seq")
);
