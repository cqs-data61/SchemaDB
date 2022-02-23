DROP DATABASE IF EXISTS "schema250";
CREATE DATABASE "schema250";
USE "schema250";
CREATE TABLE "viz_technologies" (
	"technology" VARCHAR,
	"color" VARCHAR,
	"plotting_order" INTEGER,
	 PRIMARY KEY ("technology")
);

CREATE TABLE "ui_scenario_results_plot_metadata" (
	"results_plot" VARCHAR,
	"include" INTEGER,
	"caption" VARCHAR,
	"load_zone_form_control" INTEGER,
	"energy_target_zone_form_control" INTEGER,
	"carbon_cap_zone_form_control" INTEGER,
	"period_form_control" INTEGER,
	"horizon_form_control" INTEGER,
	"start_timepoint_form_control" INTEGER,
	"end_timepoint_form_control" INTEGER,
	"subproblem_form_control" INTEGER,
	"stage_form_control" INTEGER,
	"project_form_control" INTEGER,
	"commit_project_form_control" INTEGER,
	 PRIMARY KEY ("results_plot")
);

CREATE TABLE "ui_scenario_results_table_metadata" (
	"results_table" VARCHAR,
	"include" INTEGER,
	"caption" VARCHAR
);

CREATE TABLE "ui_scenario_detail_table_metadata" (
	"ui_table_id" INTEGER,
	"include" INTEGER,
	"ui_table" VARCHAR,
	"ui_table_caption" VARCHAR,
	 PRIMARY KEY ("ui_table_id")
);

CREATE TABLE "ui_scenario_detail_table_row_metadata" (
	"ui_table" VARCHAR,
	"ui_table_row" VARCHAR,
	"include" INTEGER,
	"ui_row_caption" VARCHAR,
	"ui_row_db_scenarios_view_column" VARCHAR,
	"ui_row_db_subscenario_table" VARCHAR,
	"ui_row_db_subscenario_table_id_column" VARCHAR,
	"ui_row_db_input_table" VARCHAR,
	 PRIMARY KEY ("ui_table","ui_table_row"),
	 CONSTRAINT "fkeycon_ui_scenario_detail_table_row_metadata_to_ui_scenario_detail_table_metadata" FOREIGN KEY ("ui_table") REFERENCES "ui_scenario_detail_table_metadata" ("ui_table")
);

CREATE TABLE "subscenarios_options_solver" (
	"solver_options_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("solver_options_id")
);

CREATE TABLE "inputs_options_solver" (
	"solver_options_id" INTEGER,
	"solver" VARCHAR,
	"solver_option_name" VARCHAR,
	"solver_option_value" FLOAT,
	 PRIMARY KEY ("solver_options_id","solver","solver_option_name"),
	 CONSTRAINT "fkeycon_inputs_options_solver_to_subscenarios_options_solver" FOREIGN KEY ("solver_options_id") REFERENCES "subscenarios_options_solver" ("solver_options_id")
);

CREATE TABLE "results_system_costs" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"total_capacity_costs" FLOAT,
	"total_tx_capacity_costs" FLOAT,
	"total_prm_group_costs" FLOAT,
	"total_variable_om_cost" FLOAT,
	"total_fuel_cost" FLOAT,
	"total_startup_cost" FLOAT,
	"total_shutdown_cost" FLOAT,
	"total_operational_violation_cost" FLOAT,
	"total_curtailment_cost" FLOAT,
	"total_hurdle_cost" FLOAT,
	"total_load_balance_penalty_costs" FLOAT,
	"frequency_response_penalty_costs" FLOAT,
	"frequency_response_partial_penalty_costs" FLOAT,
	"lf_reserves_down_penalty_costs" FLOAT,
	"lf_reserves_up_penalty_costs" FLOAT,
	"regulation_down_penalty_costs" FLOAT,
	"regulation_up_penalty_costs" FLOAT,
	"spinning_reserves_penalty_costs" FLOAT,
	"total_prm_shortage_penalty_costs" FLOAT,
	"total_local_capacity_shortage_penalty_costs" FLOAT,
	"total_carbon_cap_balance_penalty_costs" FLOAT,
	"total_carbon_tax_cost" FLOAT,
	"total_period_energy_target_balance_penalty_costs" FLOAT,
	"total_horizon_energy_target_balance_penalty_costs" FLOAT,
	"total_dynamic_elcc_tuning_cost" FLOAT,
	"total_import_carbon_tuning_cost" FLOAT,
	"total_market_cost" FLOAT,
	"total_market_revenue" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id")
);

CREATE TABLE "results_system_local_capacity" (
	"scenario_id" INTEGER,
	"local_capacity_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"local_capacity_requirement_mw" FLOAT,
	"local_capacity_provision_mw" FLOAT,
	"local_capacity_shortage_mw" FLOAT,
	"dual" FLOAT,
	"local_capacity_marginal_cost_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","local_capacity_zone","period","subproblem_id","stage_id")
);

CREATE TABLE "results_system_prm" (
	"scenario_id" INTEGER,
	"prm_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"prm_requirement_mw" FLOAT,
	"elcc_simple_mw" FLOAT,
	"elcc_surface_mw" FLOAT,
	"elcc_total_mw" FLOAT,
	"prm_shortage_mw" FLOAT,
	"dual" FLOAT,
	"prm_marginal_cost_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","prm_zone","period","subproblem_id","stage_id")
);

CREATE TABLE "results_system_horizon_energy_target" (
	"scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_horizon" VARCHAR,
	"horizon" INTEGER,
	"energy_target_mwh" FLOAT,
	"delivered_energy_target_energy_mwh" FLOAT,
	"curtailed_energy_target_energy_mwh" FLOAT,
	"total_energy_target_energy_mwh" FLOAT,
	"fraction_of_energy_target_met" FLOAT,
	"fraction_of_energy_target_energy_curtailed" FLOAT,
	"energy_target_shortage_mwh" FLOAT,
	"dual" FLOAT,
	"energy_target_marginal_cost_per_mwh" FLOAT,
	 PRIMARY KEY ("scenario_id","energy_target_zone","subproblem_id","stage_id","balancing_type_horizon","horizon")
);

CREATE TABLE "results_system_period_energy_target" (
	"scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"energy_target_mwh" FLOAT,
	"delivered_energy_target_energy_mwh" FLOAT,
	"curtailed_energy_target_energy_mwh" FLOAT,
	"total_energy_target_energy_mwh" FLOAT,
	"fraction_of_energy_target_met" FLOAT,
	"fraction_of_energy_target_energy_curtailed" FLOAT,
	"energy_target_shortage_mwh" FLOAT,
	"dual" FLOAT,
	"energy_target_marginal_cost_per_mwh" FLOAT,
	 PRIMARY KEY ("scenario_id","energy_target_zone","period","subproblem_id","stage_id")
);

CREATE TABLE "results_system_carbon_tax_emissions" (
	"scenario_id" INTEGER,
	"carbon_tax_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"carbon_tax" FLOAT,
	"total_emissions" FLOAT,
	"carbon_tax_cost" FLOAT,
	"dual" FLOAT,
	 PRIMARY KEY ("scenario_id","carbon_tax_zone","subproblem_id","stage_id","period")
);

CREATE TABLE "results_system_carbon_emissions" (
	"scenario_id" INTEGER,
	"carbon_cap_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"carbon_cap" FLOAT,
	"in_zone_project_emissions" FLOAT,
	"import_emissions" FLOAT,
	"total_emissions" FLOAT,
	"carbon_cap_overage" FLOAT,
	"import_emissions_degen" FLOAT,
	"total_emissions_degen" FLOAT,
	"dual" FLOAT,
	"carbon_cap_marginal_cost_per_emission" FLOAT,
	 PRIMARY KEY ("scenario_id","carbon_cap_zone","subproblem_id","stage_id","period")
);

CREATE TABLE "results_system_spinning_reserves_balance" (
	"scenario_id" INTEGER,
	"spinning_reserves_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","spinning_reserves_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_frequency_response_partial_balance" (
	"scenario_id" INTEGER,
	"frequency_response_partial_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","frequency_response_partial_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_frequency_response_balance" (
	"scenario_id" INTEGER,
	"frequency_response_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","frequency_response_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_regulation_down_balance" (
	"scenario_id" INTEGER,
	"regulation_down_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","regulation_down_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_regulation_up_balance" (
	"scenario_id" INTEGER,
	"regulation_up_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","regulation_up_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_lf_reserves_down_balance" (
	"scenario_id" INTEGER,
	"lf_reserves_down_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","lf_reserves_down_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_lf_reserves_up_balance" (
	"scenario_id" INTEGER,
	"lf_reserves_up_ba" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"violation_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","lf_reserves_up_ba","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_market_participation" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"market" VARCHAR,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"period" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"sell_power" FLOAT,
	"buy_power" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_system_load_balance" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"discount_factor" FLOAT,
	"number_years_represented" FLOAT,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_mw" FLOAT,
	"overgeneration_mw" FLOAT,
	"unserved_energy_mw" FLOAT,
	"dual" FLOAT,
	"marginal_price_per_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_transmission_carbon_emissions" (
	"scenario_id" INTEGER,
	"tx_line" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"carbon_emission_imports_tons" FLOAT,
	"carbon_emission_imports_tons_degen" FLOAT,
	 PRIMARY KEY ("scenario_id","tx_line","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_transmission_hurdle_costs_agg" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"tx_hurdle_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","period","subproblem_id","stage_id","spinup_or_lookahead")
);

CREATE TABLE "results_transmission_hurdle_costs" (
	"scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"load_zone_from" VARCHAR,
	"load_zone_to" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"hurdle_cost_positive_direction" FLOAT,
	"hurdle_cost_negative_direction" FLOAT,
	 PRIMARY KEY ("scenario_id","transmission_line","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_transmission_imports_exports_agg" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"imports" FLOAT,
	"exports" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id","period","load_zone","spinup_or_lookahead")
);

CREATE TABLE "results_transmission_operations" (
	"scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"load_zone_from" VARCHAR,
	"load_zone_to" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"transmission_flow_mw" FLOAT,
	"transmission_losses_lz_from" FLOAT,
	"transmission_losses_lz_to" FLOAT,
	 PRIMARY KEY ("scenario_id","transmission_line","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_transmission_imports_exports" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"imports_mw" FLOAT,
	"exports_mw" FLOAT,
	"net_imports_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_transmission_costs_capacity_agg" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"fraction_of_hours_in_subproblem" FLOAT,
	"capacity_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","period","subproblem_id","stage_id","spinup_or_lookahead")
);

CREATE TABLE "results_transmission_costs_capacity" (
	"scenario_id" INTEGER,
	"tx_line" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"hours_in_period_timepoints" FLOAT,
	"hours_in_subproblem_period" FLOAT,
	"load_zone_from" VARCHAR,
	"load_zone_to" VARCHAR,
	"capacity_cost" FLOAT,
	"capacity_cost_wo_spinup_or_lookahead" FLOAT,
	 PRIMARY KEY ("scenario_id","tx_line","period","subproblem_id","stage_id")
);

CREATE TABLE "results_transmission_capacity_new_build" (
	"scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"load_zone_from" VARCHAR,
	"load_zone_to" VARCHAR,
	"new_build_transmission_capacity_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","transmission_line","period","subproblem_id","stage_id")
);

CREATE TABLE "results_transmission_capacity" (
	"scenario_id" INTEGER,
	"tx_line" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"load_zone_from" VARCHAR,
	"load_zone_to" VARCHAR,
	"min_mw" FLOAT,
	"max_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","tx_line","period","subproblem_id","stage_id")
);

CREATE TABLE "results_project_period_energy_target" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"scheduled_energy_target_energy_mw" FLOAT,
	"scheduled_curtailment_mw" FLOAT,
	"subhourly_energy_target_energy_delivered_mw" FLOAT,
	"subhourly_curtailment_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_carbon_emissions_by_technology_period" (
	"scenario_id" INTEGER,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"load_zone" VARCHAR,
	"technology" VARCHAR,
	"spinup_or_lookahead" INTEGER,
	"carbon_emission_tons" FLOAT,
	 PRIMARY KEY ("scenario_id","period","subproblem_id","stage_id","load_zone","technology","spinup_or_lookahead")
);

CREATE TABLE "results_project_carbon_emissions" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"carbon_emission_tons" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_fuel_burn" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"fuel" VARCHAR,
	"operations_fuel_burn_mmbtu" FLOAT,
	"startup_fuel_burn_mmbtu" FLOAT,
	"total_fuel_burn_mmbtu" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_costs_operations_agg" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"variable_om_cost" FLOAT,
	"fuel_cost" FLOAT,
	"startup_cost" FLOAT,
	"shutdown_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","period","subproblem_id","stage_id","spinup_or_lookahead")
);

CREATE TABLE "results_project_costs_operations" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"variable_om_cost" FLOAT,
	"fuel_cost" FLOAT,
	"startup_cost" FLOAT,
	"shutdown_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_costs_capacity_agg" (
	"scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"fraction_of_hours_in_subproblem" FLOAT,
	"capacity_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","load_zone","period","subproblem_id","stage_id","spinup_or_lookahead")
);

CREATE TABLE "results_project_costs_capacity" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"hours_in_period_timepoints" FLOAT,
	"hours_in_subproblem_period" FLOAT,
	"technology" VARCHAR,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"capacity_cost" FLOAT,
	"capacity_cost_wo_spinup_or_lookahead" FLOAT,
	 PRIMARY KEY ("scenario_id","project","period","subproblem_id","stage_id")
);

CREATE TABLE "results_project_local_capacity" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"local_capacity_zone" VARCHAR,
	"technology" VARCHAR,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"capacity_mw" FLOAT,
	"local_capacity_fraction" FLOAT,
	"local_capacity_contribution_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","period","subproblem_id","stage_id")
);

CREATE TABLE "results_project_elcc_surface" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"prm_zone" VARCHAR,
	"facet" INTEGER,
	"technology" VARCHAR,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"capacity_mw" FLOAT,
	"elcc_eligible_capacity_mw" FLOAT,
	"energy_only_capacity_mw" FLOAT,
	"elcc_surface_coefficient" FLOAT,
	"elcc_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","period","subproblem_id","stage_id","facet")
);

CREATE TABLE "results_project_elcc_simple" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"prm_zone" VARCHAR,
	"technology" VARCHAR,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"capacity_mw" FLOAT,
	"elcc_eligible_capacity_mw" FLOAT,
	"energy_only_capacity_mw" FLOAT,
	"elcc_simple_contribution_fraction" FLOAT,
	"elcc_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","period","subproblem_id","stage_id")
);

CREATE TABLE "results_project_prm_deliverability_group_capacity_and_costs_agg" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"fraction_of_hours_in_subproblem" FLOAT,
	"deliverable_capacity_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","period","subproblem_id","stage_id","spinup_or_lookahead")
);

CREATE TABLE "results_project_prm_deliverability_group_capacity_and_costs" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"deliverability_group" VARCHAR,
	"period" INTEGER,
	"deliverability_group_no_cost_deliverable_capacity_mw" FLOAT,
	"deliverability_group_deliverability_cost_per_mw" FLOAT,
	"total_capacity_mw" FLOAT,
	"deliverable_capacity_mw" FLOAT,
	"energy_only_capacity_mw" FLOAT,
	"deliverable_capacity_cost" FLOAT,
	 PRIMARY KEY ("scenario_id","deliverability_group","period","subproblem_id","stage_id")
);

CREATE TABLE "results_project_prm_deliverability" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"prm_zone" VARCHAR,
	"technology" VARCHAR,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"capacity_mw" FLOAT,
	"deliverable_capacity_mw" FLOAT,
	"energy_only_capacity_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","period","subproblem_id","stage_id")
);

CREATE TABLE "results_project_spinning_reserves" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"spinning_reserves_ba" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"reserve_provision_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_frequency_response" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"frequency_response_ba" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"reserve_provision_mw" FLOAT,
	"partial" INTEGER,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_regulation_down" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"regulation_down_ba" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"reserve_provision_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_regulation_up" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"regulation_up_ba" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"reserve_provision_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_lf_reserves_down" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"lf_reserves_down_ba" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"reserve_provision_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_lf_reserves_up" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"lf_reserves_up_ba" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"reserve_provision_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_dispatch_by_technology_period" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"load_zone" VARCHAR,
	"technology" VARCHAR,
	"spinup_or_lookahead" INTEGER,
	"energy_mwh" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id","period","load_zone","technology","spinup_or_lookahead")
);

CREATE TABLE "results_project_dispatch_by_technology" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"technology" VARCHAR,
	"power_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id","timepoint","load_zone","technology")
);

CREATE TABLE "results_project_curtailment_hydro" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"month" INTEGER,
	"hour_of_day" FLOAT,
	"load_zone" VARCHAR,
	"scheduled_curtailment_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id","timepoint","load_zone")
);

CREATE TABLE "results_project_curtailment_variable" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"month" INTEGER,
	"hour_of_day" FLOAT,
	"load_zone" VARCHAR,
	"scheduled_curtailment_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id","timepoint","load_zone")
);

CREATE TABLE "results_project_dispatch" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"operational_type" VARCHAR,
	"balancing_type" VARCHAR,
	"horizon" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"power_mw" FLOAT,
	"scheduled_curtailment_mw" FLOAT,
	"subhourly_curtailment_mw" FLOAT,
	"subhourly_energy_delivered_mw" FLOAT,
	"total_curtailment_mw" FLOAT,
	"committed_mw" FLOAT,
	"committed_units" FLOAT,
	"started_units" FLOAT,
	"stopped_units" FLOAT,
	"synced_units" FLOAT,
	"active_startup_type" FLOAT,
	"auxiliary_consumption_mw" FLOAT,
	"gross_power_mw" FLOAT,
	"ramp_up_violation" FLOAT,
	"ramp_down_violation" FLOAT,
	"min_up_time_violation" FLOAT,
	"min_down_time_violation" FLOAT,
	"hyb_storage_charge_mw" FLOAT,
	"hyb_storage_discharge_mw" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_availability_endogenous" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"availability_type" VARCHAR,
	"timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"number_of_hours_in_timepoint" FLOAT,
	"spinup_or_lookahead" INTEGER,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"technology" VARCHAR,
	"unavailability_decision" FLOAT,
	"start_unavailablity" FLOAT,
	"stop_unavailability" FLOAT,
	"availability_derate" FLOAT,
	 PRIMARY KEY ("scenario_id","project","subproblem_id","stage_id","timepoint")
);

CREATE TABLE "results_project_group_capacity" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"capacity_group" VARCHAR,
	"period" INTEGER,
	"group_new_capacity" FLOAT,
	"group_total_capacity" FLOAT,
	"capacity_group_new_capacity_min" FLOAT,
	"capacity_group_new_capacity_max" FLOAT,
	"capacity_group_total_capacity_min" FLOAT,
	"capacity_group_total_capacity_max" FLOAT,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id","capacity_group","period")
);

CREATE TABLE "results_project_capacity" (
	"scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"capacity_type" VARCHAR,
	"technology" VARCHAR,
	"load_zone" VARCHAR,
	"energy_target_zone" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"capacity_mw" FLOAT,
	"hyb_gen_capacity_mw" FLOAT,
	"hyb_stor_capacity_mw" FLOAT,
	"energy_capacity_mwh" FLOAT,
	"new_build_mw" FLOAT,
	"new_build_mwh" FLOAT,
	"new_build_binary" INTEGER,
	"retired_mw" FLOAT,
	"retired_binary" INTEGER,
	 PRIMARY KEY ("scenario_id","project","period","subproblem_id","stage_id")
);

CREATE TABLE "subscenarios_tuning" (
	"tuning_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("tuning_scenario_id")
);

CREATE TABLE "inputs_tuning" (
	"tuning_scenario_id" INTEGER,
	"import_carbon_tuning_cost_per_ton" DOUBLE,
	"ramp_tuning_cost_per_mw" DOUBLE,
	"dynamic_elcc_tuning_cost_per_mw" DOUBLE,
	 PRIMARY KEY ("tuning_scenario_id"),
	 CONSTRAINT "fkeycon_inputs_tuning_to_subscenarios_tuning" FOREIGN KEY ("tuning_scenario_id") REFERENCES "subscenarios_tuning" ("tuning_scenario_id")
);

CREATE TABLE "inputs_system_local_capacity_requirement" (
	"local_capacity_requirement_scenario_id" INTEGER,
	"local_capacity_zone" VARCHAR,
	"period" INTEGER,
	"local_capacity_requirement_mw" FLOAT,
	 PRIMARY KEY ("local_capacity_requirement_scenario_id","local_capacity_zone","period")
);

CREATE TABLE "subscenarios_system_local_capacity_requirement" (
	"local_capacity_requirement_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("local_capacity_requirement_scenario_id")
);

CREATE TABLE "inputs_system_prm_requirement" (
	"prm_requirement_scenario_id" INTEGER,
	"prm_zone" VARCHAR,
	"period" INTEGER,
	"prm_requirement_mw" FLOAT,
	"prm_peak_load_mw" FLOAT,
	"prm_annual_load_mwh" FLOAT,
	 PRIMARY KEY ("prm_requirement_scenario_id","prm_zone","period")
);

CREATE TABLE "subscenarios_system_prm_requirement" (
	"prm_requirement_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("prm_requirement_scenario_id")
);

CREATE TABLE "subscenarios_system_carbon_tax" (
	"carbon_tax_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("carbon_tax_scenario_id")
);

CREATE TABLE "inputs_system_carbon_tax" (
	"carbon_tax_scenario_id" INTEGER,
	"carbon_tax_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"carbon_tax" FLOAT,
	 PRIMARY KEY ("carbon_tax_scenario_id","carbon_tax_zone","period","subproblem_id","stage_id"),
	 CONSTRAINT "fkeycon_inputs_system_carbon_tax_to_subscenarios_system_carbon_tax" FOREIGN KEY ("carbon_tax_scenario_id") REFERENCES "subscenarios_system_carbon_tax" ("carbon_tax_scenario_id")
);

CREATE TABLE "subscenarios_system_carbon_cap_targets" (
	"carbon_cap_target_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("carbon_cap_target_scenario_id")
);

CREATE TABLE "inputs_system_carbon_cap_targets" (
	"carbon_cap_target_scenario_id" INTEGER,
	"carbon_cap_zone" VARCHAR,
	"period" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"carbon_cap" FLOAT,
	 PRIMARY KEY ("carbon_cap_target_scenario_id","carbon_cap_zone","period","subproblem_id","stage_id"),
	 CONSTRAINT "fkeycon_inputs_system_carbon_cap_targets_to_subscenarios_system_carbon_cap_targets" FOREIGN KEY ("carbon_cap_target_scenario_id") REFERENCES "subscenarios_system_carbon_cap_targets" ("carbon_cap_target_scenario_id")
);

CREATE TABLE "inputs_system_horizon_energy_target_load_zone_map" (
	"horizon_energy_target_scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("horizon_energy_target_scenario_id","energy_target_zone","load_zone")
);

CREATE TABLE "inputs_system_horizon_energy_targets" (
	"horizon_energy_target_scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_horizon" VARCHAR,
	"horizon" INTEGER,
	"energy_target_mwh" FLOAT,
	"energy_target_fraction" FLOAT,
	 PRIMARY KEY ("horizon_energy_target_scenario_id","energy_target_zone","subproblem_id","stage_id","balancing_type_horizon","horizon")
);

CREATE TABLE "subscenarios_system_horizon_energy_targets" (
	"horizon_energy_target_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("horizon_energy_target_scenario_id")
);

CREATE TABLE "inputs_system_period_energy_target_load_zone_map" (
	"period_energy_target_scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("period_energy_target_scenario_id","energy_target_zone","load_zone")
);

CREATE TABLE "inputs_system_period_energy_targets" (
	"period_energy_target_scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"period" INTEGER,
	"energy_target_mwh" FLOAT,
	"energy_target_fraction" FLOAT,
	 PRIMARY KEY ("period_energy_target_scenario_id","energy_target_zone","subproblem_id","stage_id","period")
);

CREATE TABLE "subscenarios_system_period_energy_targets" (
	"period_energy_target_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("period_energy_target_scenario_id")
);

CREATE TABLE "inputs_system_spinning_reserves_percent_lz_map" (
	"spinning_reserves_scenario_id" INTEGER,
	"spinning_reserves_ba" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("spinning_reserves_scenario_id","spinning_reserves_ba","load_zone")
);

CREATE TABLE "inputs_system_spinning_reserves_percent" (
	"spinning_reserves_scenario_id" INTEGER,
	"spinning_reserves_ba" VARCHAR,
	"percent_load_req" FLOAT,
	 PRIMARY KEY ("spinning_reserves_scenario_id","spinning_reserves_ba")
);

CREATE TABLE "subscenarios_system_spinning_reserves" (
	"spinning_reserves_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("spinning_reserves_scenario_id")
);

CREATE TABLE "inputs_system_spinning_reserves" (
	"spinning_reserves_scenario_id" INTEGER,
	"spinning_reserves_ba" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"spinning_reserves_mw" FLOAT,
	 PRIMARY KEY ("spinning_reserves_scenario_id","spinning_reserves_ba","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_spinning_reserves_to_subscenarios_system_spinning_reserves" FOREIGN KEY ("spinning_reserves_scenario_id") REFERENCES "subscenarios_system_spinning_reserves" ("spinning_reserves_scenario_id")
);

CREATE TABLE "inputs_system_frequency_response_percent_lz_map" (
	"frequency_response_scenario_id" INTEGER,
	"frequency_response_ba" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("frequency_response_scenario_id","frequency_response_ba","load_zone")
);

CREATE TABLE "inputs_system_frequency_response_percent" (
	"frequency_response_scenario_id" INTEGER,
	"frequency_response_ba" VARCHAR,
	"percent_load_req" FLOAT,
	 PRIMARY KEY ("frequency_response_scenario_id","frequency_response_ba")
);

CREATE TABLE "subscenarios_system_frequency_response" (
	"frequency_response_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("frequency_response_scenario_id")
);

CREATE TABLE "inputs_system_frequency_response" (
	"frequency_response_scenario_id" INTEGER,
	"frequency_response_ba" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"frequency_response_mw" FLOAT,
	"frequency_response_partial_mw" FLOAT,
	 PRIMARY KEY ("frequency_response_scenario_id","frequency_response_ba","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_frequency_response_to_subscenarios_system_frequency_response" FOREIGN KEY ("frequency_response_scenario_id") REFERENCES "subscenarios_system_frequency_response" ("frequency_response_scenario_id")
);

CREATE TABLE "inputs_system_regulation_up_percent_lz_map" (
	"regulation_up_scenario_id" INTEGER,
	"regulation_up_ba" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("regulation_up_scenario_id","regulation_up_ba","load_zone")
);

CREATE TABLE "inputs_system_regulation_up_percent" (
	"regulation_up_scenario_id" INTEGER,
	"regulation_up_ba" VARCHAR,
	"percent_load_req" FLOAT,
	 PRIMARY KEY ("regulation_up_scenario_id","regulation_up_ba")
);

CREATE TABLE "subscenarios_system_regulation_down" (
	"regulation_down_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("regulation_down_scenario_id")
);

CREATE TABLE "inputs_system_regulation_down" (
	"regulation_down_scenario_id" INTEGER,
	"regulation_down_ba" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"regulation_down_mw" FLOAT,
	 PRIMARY KEY ("regulation_down_scenario_id","regulation_down_ba","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_regulation_down_to_subscenarios_system_regulation_down" FOREIGN KEY ("regulation_down_scenario_id") REFERENCES "subscenarios_system_regulation_down" ("regulation_down_scenario_id")
);

CREATE TABLE "inputs_system_regulation_down_percent_lz_map" (
	"regulation_down_scenario_id" INTEGER,
	"regulation_down_ba" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("regulation_down_scenario_id","regulation_down_ba","load_zone")
);

CREATE TABLE "inputs_system_regulation_down_percent" (
	"regulation_down_scenario_id" INTEGER,
	"regulation_down_ba" VARCHAR,
	"percent_load_req" FLOAT,
	 PRIMARY KEY ("regulation_down_scenario_id","regulation_down_ba")
);

CREATE TABLE "subscenarios_system_regulation_up" (
	"regulation_up_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("regulation_up_scenario_id")
);

CREATE TABLE "inputs_system_regulation_up" (
	"regulation_up_scenario_id" INTEGER,
	"regulation_up_ba" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"regulation_up_mw" FLOAT,
	 PRIMARY KEY ("regulation_up_scenario_id","regulation_up_ba","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_regulation_up_to_subscenarios_system_regulation_up" FOREIGN KEY ("regulation_up_scenario_id") REFERENCES "subscenarios_system_regulation_up" ("regulation_up_scenario_id")
);

CREATE TABLE "inputs_system_lf_reserves_down_percent_lz_map" (
	"lf_reserves_down_scenario_id" INTEGER,
	"lf_reserves_down_ba" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("lf_reserves_down_scenario_id","lf_reserves_down_ba","load_zone")
);

CREATE TABLE "inputs_system_lf_reserves_down_percent" (
	"lf_reserves_down_scenario_id" INTEGER,
	"lf_reserves_down_ba" VARCHAR,
	"percent_load_req" FLOAT,
	 PRIMARY KEY ("lf_reserves_down_scenario_id","lf_reserves_down_ba")
);

CREATE TABLE "subscenarios_system_lf_reserves_down" (
	"lf_reserves_down_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("lf_reserves_down_scenario_id")
);

CREATE TABLE "inputs_system_lf_reserves_down" (
	"lf_reserves_down_scenario_id" INTEGER,
	"lf_reserves_down_ba" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"lf_reserves_down_mw" FLOAT,
	 PRIMARY KEY ("lf_reserves_down_scenario_id","lf_reserves_down_ba","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_lf_reserves_down_to_subscenarios_system_lf_reserves_down" FOREIGN KEY ("lf_reserves_down_scenario_id") REFERENCES "subscenarios_system_lf_reserves_down" ("lf_reserves_down_scenario_id")
);

CREATE TABLE "inputs_system_lf_reserves_up_percent_lz_map" (
	"lf_reserves_up_scenario_id" INTEGER,
	"lf_reserves_up_ba" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("lf_reserves_up_scenario_id","lf_reserves_up_ba","load_zone")
);

CREATE TABLE "inputs_system_lf_reserves_up_percent" (
	"lf_reserves_up_scenario_id" INTEGER,
	"lf_reserves_up_ba" VARCHAR,
	"percent_load_req" FLOAT,
	 PRIMARY KEY ("lf_reserves_up_scenario_id","lf_reserves_up_ba")
);

CREATE TABLE "subscenarios_system_lf_reserves_up" (
	"lf_reserves_up_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("lf_reserves_up_scenario_id")
);

CREATE TABLE "inputs_system_lf_reserves_up" (
	"lf_reserves_up_scenario_id" INTEGER,
	"lf_reserves_up_ba" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"lf_reserves_up_mw" FLOAT,
	 PRIMARY KEY ("lf_reserves_up_scenario_id","lf_reserves_up_ba","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_lf_reserves_up_to_subscenarios_system_lf_reserves_up" FOREIGN KEY ("lf_reserves_up_scenario_id") REFERENCES "subscenarios_system_lf_reserves_up" ("lf_reserves_up_scenario_id")
);

CREATE TABLE "subscenarios_load_zone_markets" (
	"load_zone_market_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("load_zone_market_scenario_id")
);

CREATE TABLE "inputs_load_zone_markets" (
	"load_zone_market_scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"market" VARCHAR,
	 PRIMARY KEY ("load_zone_market_scenario_id","load_zone","market"),
	 CONSTRAINT "fkeycon_inputs_load_zone_markets_to_subscenarios_load_zone_markets" FOREIGN KEY ("load_zone_market_scenario_id") REFERENCES "subscenarios_load_zone_markets" ("load_zone_market_scenario_id")
);

CREATE TABLE "subscenarios_system_load" (
	"load_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("load_scenario_id")
);

CREATE TABLE "inputs_system_load" (
	"load_scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"load_mw" FLOAT,
	 PRIMARY KEY ("load_scenario_id","load_zone","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_system_load_to_subscenarios_system_load" FOREIGN KEY ("load_scenario_id") REFERENCES "subscenarios_system_load" ("load_scenario_id")
);

CREATE TABLE "subscenarios_transmission_simultaneous_flow_limit_line_groups" (
	"transmission_simultaneous_flow_limit_line_group_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_simultaneous_flow_limit_line_group_scenario_id")
);

CREATE TABLE "inputs_transmission_simultaneous_flow_limit_line_groups" (
	"transmission_simultaneous_flow_limit_line_group_scenario_id" INTEGER,
	"transmission_simultaneous_flow_limit" VARCHAR,
	"transmission_line" VARCHAR,
	"simultaneous_flow_direction" INTEGER,
	 PRIMARY KEY ("transmission_simultaneous_flow_limit_line_group_scenario_id","transmission_simultaneous_flow_limit","transmission_line"),
	 CONSTRAINT "fkeycon_inputs_transmission_simultaneous_flow_limit_line_groups_to_subscenarios_transmission_simultaneous_flow_limit_line_groups" FOREIGN KEY ("transmission_simultaneous_flow_limit_line_group_scenario_id") REFERENCES "subscenarios_transmission_simultaneous_flow_limit_line_groups" ("transmission_simultaneous_flow_limit_line_group_scenario_id")
);

CREATE TABLE "subscenarios_transmission_simultaneous_flow_limits" (
	"transmission_simultaneous_flow_limit_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_simultaneous_flow_limit_scenario_id")
);

CREATE TABLE "inputs_transmission_simultaneous_flow_limits" (
	"transmission_simultaneous_flow_limit_scenario_id" INTEGER,
	"transmission_simultaneous_flow_limit" VARCHAR,
	"period" INTEGER,
	"max_flow_mw" FLOAT,
	 PRIMARY KEY ("transmission_simultaneous_flow_limit_scenario_id","transmission_simultaneous_flow_limit","period"),
	 CONSTRAINT "fkeycon_inputs_transmission_simultaneous_flow_limits_to_subscenarios_transmission_simultaneous_flow_limits" FOREIGN KEY ("transmission_simultaneous_flow_limit_scenario_id") REFERENCES "subscenarios_transmission_simultaneous_flow_limits" ("transmission_simultaneous_flow_limit_scenario_id")
);

CREATE TABLE "subscenarios_transmission_hurdle_rates" (
	"transmission_hurdle_rate_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_hurdle_rate_scenario_id")
);

CREATE TABLE "inputs_transmission_hurdle_rates" (
	"transmission_hurdle_rate_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"period" INTEGER,
	"hurdle_rate_positive_direction_per_mwh" FLOAT,
	"hurdle_rate_negative_direction_per_mwh" FLOAT,
	 PRIMARY KEY ("transmission_hurdle_rate_scenario_id","transmission_line","period"),
	 CONSTRAINT "fkeycon_inputs_transmission_hurdle_rates_to_subscenarios_transmission_hurdle_rates" FOREIGN KEY ("transmission_hurdle_rate_scenario_id") REFERENCES "subscenarios_transmission_hurdle_rates" ("transmission_hurdle_rate_scenario_id")
);

CREATE TABLE "subscenarios_transmission_operational_chars" (
	"transmission_operational_chars_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_operational_chars_scenario_id")
);

CREATE TABLE "subscenarios_transmission_new_cost" (
	"transmission_new_cost_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_new_cost_scenario_id")
);

CREATE TABLE "inputs_transmission_new_cost" (
	"transmission_new_cost_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"vintage" INTEGER,
	"tx_lifetime_yrs" FLOAT,
	"tx_annualized_real_cost_per_mw_yr" FLOAT,
	 PRIMARY KEY ("transmission_new_cost_scenario_id","transmission_line","vintage"),
	 CONSTRAINT "fkeycon_inputs_transmission_new_cost_to_subscenarios_transmission_new_cost" FOREIGN KEY ("transmission_new_cost_scenario_id") REFERENCES "subscenarios_transmission_new_cost" ("transmission_new_cost_scenario_id")
);

CREATE TABLE "subscenarios_transmission_specified_capacity" (
	"transmission_specified_capacity_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_specified_capacity_scenario_id")
);

CREATE TABLE "inputs_transmission_specified_capacity" (
	"transmission_specified_capacity_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"period" INTEGER,
	"min_mw" FLOAT,
	"max_mw" FLOAT,
	 PRIMARY KEY ("transmission_specified_capacity_scenario_id","transmission_line","period"),
	 CONSTRAINT "fkeycon_inputs_transmission_specified_capacity_to_subscenarios_transmission_specified_capacity" FOREIGN KEY ("transmission_specified_capacity_scenario_id") REFERENCES "subscenarios_transmission_specified_capacity" ("transmission_specified_capacity_scenario_id")
);

CREATE TABLE "subscenarios_transmission_carbon_cap_zones" (
	"transmission_carbon_cap_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_carbon_cap_zone_scenario_id")
);

CREATE TABLE "inputs_transmission_carbon_cap_zones" (
	"transmission_carbon_cap_zone_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	"import_direction" VARCHAR,
	"tx_co2_intensity_tons_per_mwh" FLOAT,
	 PRIMARY KEY ("transmission_carbon_cap_zone_scenario_id","transmission_line"),
	 CONSTRAINT "fkeycon_inputs_transmission_carbon_cap_zones_to_subscenarios_transmission_carbon_cap_zones" FOREIGN KEY ("transmission_carbon_cap_zone_scenario_id") REFERENCES "subscenarios_transmission_carbon_cap_zones" ("transmission_carbon_cap_zone_scenario_id")
);

CREATE TABLE "subscenarios_transmission_load_zones" (
	"transmission_load_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_load_zone_scenario_id")
);

CREATE TABLE "inputs_transmission_load_zones" (
	"transmission_load_zone_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"load_zone_from" VARCHAR,
	"load_zone_to" VARCHAR,
	 PRIMARY KEY ("transmission_load_zone_scenario_id","transmission_line"),
	 CONSTRAINT "fkeycon_inputs_transmission_load_zones_to_subscenarios_transmission_load_zones" FOREIGN KEY ("transmission_load_zone_scenario_id") REFERENCES "subscenarios_transmission_load_zones" ("transmission_load_zone_scenario_id")
);

CREATE TABLE "subscenarios_transmission_portfolios" (
	"transmission_portfolio_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("transmission_portfolio_scenario_id")
);

CREATE TABLE "subscenarios_project_fuel_prices" (
	"fuel_price_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("fuel_price_scenario_id")
);

CREATE TABLE "inputs_project_fuel_prices" (
	"fuel_price_scenario_id" INTEGER,
	"fuel" VARCHAR,
	"period" INTEGER,
	"month" INTEGER,
	"fuel_price_per_mmbtu" FLOAT,
	 PRIMARY KEY ("fuel_price_scenario_id","fuel","period","month"),
	 CONSTRAINT "fkeycon_inputs_project_fuel_prices_to_subscenarios_project_fuel_prices" FOREIGN KEY ("fuel_price_scenario_id") REFERENCES "subscenarios_project_fuel_prices" ("fuel_price_scenario_id")
);

CREATE TABLE "subscenarios_project_fuels" (
	"fuel_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("fuel_scenario_id")
);

CREATE TABLE "inputs_project_fuels" (
	"fuel_scenario_id" INTEGER,
	"fuel" VARCHAR,
	"co2_intensity_tons_per_mmbtu" FLOAT,
	 PRIMARY KEY ("fuel_scenario_id","fuel"),
	 CONSTRAINT "fkeycon_inputs_project_fuels_to_subscenarios_project_fuels" FOREIGN KEY ("fuel_scenario_id") REFERENCES "subscenarios_project_fuels" ("fuel_scenario_id")
);

CREATE TABLE "subscenarios_project_local_capacity_chars" (
	"project_local_capacity_chars_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_local_capacity_chars_scenario_id")
);

CREATE TABLE "inputs_project_local_capacity_chars" (
	"project_local_capacity_chars_scenario_id" INTEGER,
	"project" VARCHAR,
	"local_capacity_fraction" FLOAT,
	"min_duration_for_full_capacity_credit_hours" FLOAT,
	 PRIMARY KEY ("project_local_capacity_chars_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_local_capacity_chars_to_subscenarios_project_local_capacity_chars" FOREIGN KEY ("project_local_capacity_chars_scenario_id") REFERENCES "subscenarios_project_local_capacity_chars" ("project_local_capacity_chars_scenario_id")
);

CREATE TABLE "subscenarios_project_local_capacity_zones" (
	"project_local_capacity_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_local_capacity_zone_scenario_id")
);

CREATE TABLE "inputs_project_local_capacity_zones" (
	"project_local_capacity_zone_scenario_id" INTEGER,
	"project" VARCHAR,
	"local_capacity_zone" VARCHAR,
	 PRIMARY KEY ("project_local_capacity_zone_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_local_capacity_zones_to_subscenarios_project_local_capacity_zones" FOREIGN KEY ("project_local_capacity_zone_scenario_id") REFERENCES "subscenarios_project_local_capacity_zones" ("project_local_capacity_zone_scenario_id")
);

CREATE TABLE "subscenarios_project_prm_energy_only" (
	"prm_energy_only_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("prm_energy_only_scenario_id")
);

CREATE TABLE "inputs_project_prm_energy_only" (
	"prm_energy_only_scenario_id" INTEGER,
	"deliverability_group" VARCHAR,
	"deliverability_group_no_cost_deliverable_capacity_mw" FLOAT,
	"deliverability_group_deliverability_cost_per_mw" FLOAT,
	"deliverability_group_energy_only_capacity_limit_mw" FLOAT,
	 PRIMARY KEY ("prm_energy_only_scenario_id","deliverability_group"),
	 CONSTRAINT "fkeycon_inputs_project_prm_energy_only_to_subscenarios_project_prm_energy_only" FOREIGN KEY ("prm_energy_only_scenario_id") REFERENCES "subscenarios_project_prm_energy_only" ("prm_energy_only_scenario_id")
);

CREATE TABLE "inputs_project_elcc_surface_cap_factors" (
	"elcc_surface_scenario_id" INTEGER,
	"project" VARCHAR,
	"elcc_surface_cap_factor" FLOAT,
	 PRIMARY KEY ("elcc_surface_scenario_id","project")
);

CREATE TABLE "inputs_project_elcc_surface" (
	"elcc_surface_scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"facet" INTEGER,
	"elcc_surface_coefficient" FLOAT,
	 PRIMARY KEY ("elcc_surface_scenario_id","project","period","facet")
);

CREATE TABLE "subscenarios_system_prm_zone_elcc_surface" (
	"elcc_surface_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("elcc_surface_scenario_id")
);

CREATE TABLE "inputs_system_prm_zone_elcc_surface_prm_load" (
	"elcc_surface_scenario_id" INTEGER,
	"prm_zone" VARCHAR,
	"period" INTEGER,
	"prm_peak_load_mw" FLOAT,
	"prm_annual_load_mwh" FLOAT,
	 PRIMARY KEY ("elcc_surface_scenario_id","prm_zone","period"),
	 CONSTRAINT "fkeycon_inputs_system_prm_zone_elcc_surface_prm_load_to_subscenarios_system_prm_zone_elcc_surface" FOREIGN KEY ("elcc_surface_scenario_id") REFERENCES "subscenarios_system_prm_zone_elcc_surface" ("elcc_surface_scenario_id")
);

CREATE TABLE "inputs_system_prm_zone_elcc_surface" (
	"elcc_surface_scenario_id" INTEGER,
	"prm_zone" VARCHAR,
	"period" INTEGER,
	"facet" INTEGER,
	"elcc_surface_intercept" FLOAT,
	 PRIMARY KEY ("elcc_surface_scenario_id","prm_zone","period","facet"),
	 CONSTRAINT "fkeycon_inputs_system_prm_zone_elcc_surface_to_subscenarios_system_prm_zone_elcc_surface" FOREIGN KEY ("elcc_surface_scenario_id") REFERENCES "subscenarios_system_prm_zone_elcc_surface" ("elcc_surface_scenario_id")
);

CREATE TABLE "subscenarios_project_elcc_chars" (
	"project_elcc_chars_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_elcc_chars_scenario_id")
);

CREATE TABLE "subscenarios_project_prm_zones" (
	"project_prm_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_prm_zone_scenario_id")
);

CREATE TABLE "inputs_project_prm_zones" (
	"project_prm_zone_scenario_id" INTEGER,
	"project" VARCHAR,
	"prm_zone" VARCHAR,
	 PRIMARY KEY ("project_prm_zone_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_prm_zones_to_subscenarios_project_prm_zones" FOREIGN KEY ("project_prm_zone_scenario_id") REFERENCES "subscenarios_project_prm_zones" ("project_prm_zone_scenario_id")
);

CREATE TABLE "subscenarios_project_carbon_tax_zones" (
	"project_carbon_tax_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_carbon_tax_zone_scenario_id")
);

CREATE TABLE "inputs_project_carbon_tax_zones" (
	"project_carbon_tax_zone_scenario_id" INTEGER,
	"project" VARCHAR,
	"carbon_tax_zone" VARCHAR,
	 PRIMARY KEY ("project_carbon_tax_zone_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_carbon_tax_zones_to_subscenarios_project_carbon_tax_zones" FOREIGN KEY ("project_carbon_tax_zone_scenario_id") REFERENCES "subscenarios_project_carbon_tax_zones" ("project_carbon_tax_zone_scenario_id")
);

CREATE TABLE "subscenarios_project_carbon_cap_zones" (
	"project_carbon_cap_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_carbon_cap_zone_scenario_id")
);

CREATE TABLE "inputs_project_carbon_cap_zones" (
	"project_carbon_cap_zone_scenario_id" INTEGER,
	"project" VARCHAR,
	"carbon_cap_zone" VARCHAR,
	 PRIMARY KEY ("project_carbon_cap_zone_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_carbon_cap_zones_to_subscenarios_project_carbon_cap_zones" FOREIGN KEY ("project_carbon_cap_zone_scenario_id") REFERENCES "subscenarios_project_carbon_cap_zones" ("project_carbon_cap_zone_scenario_id")
);

CREATE TABLE "subscenarios_project_energy_target_zones" (
	"project_energy_target_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_energy_target_zone_scenario_id")
);

CREATE TABLE "inputs_project_energy_target_zones" (
	"project_energy_target_zone_scenario_id" INTEGER,
	"project" VARCHAR,
	"energy_target_zone" VARCHAR,
	 PRIMARY KEY ("project_energy_target_zone_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_energy_target_zones_to_subscenarios_project_energy_target_zones" FOREIGN KEY ("project_energy_target_zone_scenario_id") REFERENCES "subscenarios_project_energy_target_zones" ("project_energy_target_zone_scenario_id")
);

CREATE TABLE "subscenarios_project_spinning_reserves_bas" (
	"project_spinning_reserves_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_spinning_reserves_ba_scenario_id")
);

CREATE TABLE "inputs_project_spinning_reserves_bas" (
	"project_spinning_reserves_ba_scenario_id" INTEGER,
	"project" VARCHAR,
	"spinning_reserves_ba" VARCHAR,
	 PRIMARY KEY ("project_spinning_reserves_ba_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_spinning_reserves_bas_to_subscenarios_project_spinning_reserves_bas" FOREIGN KEY ("project_spinning_reserves_ba_scenario_id") REFERENCES "subscenarios_project_spinning_reserves_bas" ("project_spinning_reserves_ba_scenario_id")
);

CREATE TABLE "subscenarios_project_frequency_response_bas" (
	"project_frequency_response_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_frequency_response_ba_scenario_id")
);

CREATE TABLE "inputs_project_frequency_response_bas" (
	"project_frequency_response_ba_scenario_id" INTEGER,
	"project" VARCHAR,
	"frequency_response_ba" VARCHAR,
	"contribute_to_partial" INTEGER,
	 PRIMARY KEY ("project_frequency_response_ba_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_frequency_response_bas_to_subscenarios_project_frequency_response_bas" FOREIGN KEY ("project_frequency_response_ba_scenario_id") REFERENCES "subscenarios_project_frequency_response_bas" ("project_frequency_response_ba_scenario_id")
);

CREATE TABLE "subscenarios_project_regulation_down_bas" (
	"project_regulation_down_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_regulation_down_ba_scenario_id")
);

CREATE TABLE "inputs_project_regulation_down_bas" (
	"project_regulation_down_ba_scenario_id" INTEGER,
	"project" VARCHAR,
	"regulation_down_ba" VARCHAR,
	 PRIMARY KEY ("project_regulation_down_ba_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_regulation_down_bas_to_subscenarios_project_regulation_down_bas" FOREIGN KEY ("project_regulation_down_ba_scenario_id") REFERENCES "subscenarios_project_regulation_down_bas" ("project_regulation_down_ba_scenario_id")
);

CREATE TABLE "subscenarios_project_regulation_up_bas" (
	"project_regulation_up_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_regulation_up_ba_scenario_id")
);

CREATE TABLE "inputs_project_regulation_up_bas" (
	"project_regulation_up_ba_scenario_id" INTEGER,
	"project" VARCHAR,
	"regulation_up_ba" VARCHAR,
	 PRIMARY KEY ("project_regulation_up_ba_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_regulation_up_bas_to_subscenarios_project_regulation_up_bas" FOREIGN KEY ("project_regulation_up_ba_scenario_id") REFERENCES "subscenarios_project_regulation_up_bas" ("project_regulation_up_ba_scenario_id")
);

CREATE TABLE "subscenarios_project_lf_reserves_down_bas" (
	"project_lf_reserves_down_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_lf_reserves_down_ba_scenario_id")
);

CREATE TABLE "inputs_project_lf_reserves_down_bas" (
	"project_lf_reserves_down_ba_scenario_id" INTEGER,
	"project" VARCHAR,
	"lf_reserves_down_ba" VARCHAR,
	 PRIMARY KEY ("project_lf_reserves_down_ba_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_lf_reserves_down_bas_to_subscenarios_project_lf_reserves_down_bas" FOREIGN KEY ("project_lf_reserves_down_ba_scenario_id") REFERENCES "subscenarios_project_lf_reserves_down_bas" ("project_lf_reserves_down_ba_scenario_id")
);

CREATE TABLE "subscenarios_project_lf_reserves_up_bas" (
	"project_lf_reserves_up_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_lf_reserves_up_ba_scenario_id")
);

CREATE TABLE "inputs_project_lf_reserves_up_bas" (
	"project_lf_reserves_up_ba_scenario_id" INTEGER,
	"project" VARCHAR,
	"lf_reserves_up_ba" VARCHAR,
	 PRIMARY KEY ("project_lf_reserves_up_ba_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_lf_reserves_up_bas_to_subscenarios_project_lf_reserves_up_bas" FOREIGN KEY ("project_lf_reserves_up_ba_scenario_id") REFERENCES "subscenarios_project_lf_reserves_up_bas" ("project_lf_reserves_up_ba_scenario_id")
);

CREATE TABLE "subscenarios_project_load_zones" (
	"project_load_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_load_zone_scenario_id")
);

CREATE TABLE "inputs_project_load_zones" (
	"project_load_zone_scenario_id" INTEGER,
	"project" VARCHAR,
	"load_zone" VARCHAR,
	 PRIMARY KEY ("project_load_zone_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_load_zones_to_subscenarios_project_load_zones" FOREIGN KEY ("project_load_zone_scenario_id") REFERENCES "subscenarios_project_load_zones" ("project_load_zone_scenario_id")
);

CREATE TABLE "subscenarios_project_availability_endogenous" (
	"project" VARCHAR,
	"endogenous_availability_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","endogenous_availability_scenario_id")
);

CREATE TABLE "inputs_project_availability_endogenous" (
	"project" VARCHAR,
	"endogenous_availability_scenario_id" INTEGER,
	"unavailable_hours_per_period" FLOAT,
	"unavailable_hours_per_event_min" FLOAT,
	"available_hours_between_events_min" FLOAT,
	 PRIMARY KEY ("project","endogenous_availability_scenario_id"),
	 CONSTRAINT "fkeycon_inputs_project_availability_endogenous_to_subscenarios_project_availability_endogenous" FOREIGN KEY ("project","endogenous_availability_scenario_id") REFERENCES "subscenarios_project_availability_endogenous" ("project","endogenous_availability_scenario_id")
);

CREATE TABLE "subscenarios_project_availability_exogenous" (
	"project" VARCHAR,
	"exogenous_availability_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","exogenous_availability_scenario_id")
);

CREATE TABLE "inputs_project_availability_exogenous" (
	"project" VARCHAR,
	"exogenous_availability_scenario_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"availability_derate" FLOAT,
	 PRIMARY KEY ("project","exogenous_availability_scenario_id","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_project_availability_exogenous_to_subscenarios_project_availability_exogenous" FOREIGN KEY ("project","exogenous_availability_scenario_id") REFERENCES "subscenarios_project_availability_exogenous" ("project","exogenous_availability_scenario_id")
);

CREATE TABLE "inputs_project_availability" (
	"project_availability_scenario_id" INTEGER,
	"project" VARCHAR,
	"availability_type" VARCHAR,
	"exogenous_availability_scenario_id" INTEGER,
	"endogenous_availability_scenario_id" INTEGER,
	 PRIMARY KEY ("project_availability_scenario_id","project","availability_type")
);

CREATE TABLE "subscenarios_project_availability" (
	"project_availability_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_availability_scenario_id")
);

CREATE TABLE "subscenarios_project_hydro_operational_chars" (
	"project" VARCHAR,
	"hydro_operational_chars_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","hydro_operational_chars_scenario_id")
);

CREATE TABLE "inputs_project_hydro_operational_chars" (
	"project" VARCHAR,
	"hydro_operational_chars_scenario_id" INTEGER,
	"balancing_type_project" VARCHAR,
	"horizon" INTEGER,
	"period" INTEGER,
	"average_power_fraction" FLOAT,
	"min_power_fraction" FLOAT,
	"max_power_fraction" FLOAT,
	 PRIMARY KEY ("project","hydro_operational_chars_scenario_id","balancing_type_project","horizon"),
	 CONSTRAINT "fkeycon_inputs_project_hydro_operational_chars_to_subscenarios_project_hydro_operational_chars" FOREIGN KEY ("project","hydro_operational_chars_scenario_id") REFERENCES "subscenarios_project_hydro_operational_chars" ("project","hydro_operational_chars_scenario_id")
);

CREATE TABLE "subscenarios_project_variable_generator_profiles" (
	"project" VARCHAR,
	"variable_generator_profile_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","variable_generator_profile_scenario_id")
);

CREATE TABLE "inputs_project_variable_generator_profiles" (
	"project" VARCHAR,
	"variable_generator_profile_scenario_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"cap_factor" FLOAT,
	 PRIMARY KEY ("project","variable_generator_profile_scenario_id","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_project_variable_generator_profiles_to_subscenarios_project_variable_generator_profiles" FOREIGN KEY ("project","variable_generator_profile_scenario_id") REFERENCES "subscenarios_project_variable_generator_profiles" ("project","variable_generator_profile_scenario_id")
);

CREATE TABLE "subscenarios_project_startup_chars" (
	"project" VARCHAR,
	"startup_chars_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","startup_chars_scenario_id")
);

CREATE TABLE "inputs_project_startup_chars" (
	"project" VARCHAR,
	"startup_chars_scenario_id" INTEGER,
	"down_time_cutoff_hours" FLOAT,
	"startup_plus_ramp_up_rate" FLOAT,
	"startup_cost_per_mw" FLOAT,
	 PRIMARY KEY ("project","startup_chars_scenario_id","down_time_cutoff_hours"),
	 CONSTRAINT "fkeycon_inputs_project_startup_chars_to_subscenarios_project_startup_chars" FOREIGN KEY ("project","startup_chars_scenario_id") REFERENCES "subscenarios_project_startup_chars" ("project","startup_chars_scenario_id")
);

CREATE TABLE "subscenarios_project_variable_om_curves" (
	"project" VARCHAR,
	"variable_om_curves_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","variable_om_curves_scenario_id")
);

CREATE TABLE "inputs_project_variable_om_curves" (
	"project" VARCHAR,
	"variable_om_curves_scenario_id" INTEGER,
	"period" INTEGER,
	"load_point_fraction" FLOAT,
	"average_variable_om_cost_per_mwh" FLOAT,
	 PRIMARY KEY ("project","variable_om_curves_scenario_id","period","load_point_fraction"),
	 CONSTRAINT "fkeycon_inputs_project_variable_om_curves_to_subscenarios_project_variable_om_curves" FOREIGN KEY ("project","variable_om_curves_scenario_id") REFERENCES "subscenarios_project_variable_om_curves" ("project","variable_om_curves_scenario_id")
);

CREATE TABLE "subscenarios_project_heat_rate_curves" (
	"project" VARCHAR,
	"heat_rate_curves_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project","heat_rate_curves_scenario_id")
);

CREATE TABLE "inputs_project_heat_rate_curves" (
	"project" VARCHAR,
	"heat_rate_curves_scenario_id" INTEGER,
	"period" INTEGER,
	"load_point_fraction" FLOAT,
	"average_heat_rate_mmbtu_per_mwh" FLOAT,
	 PRIMARY KEY ("project","heat_rate_curves_scenario_id","period","load_point_fraction"),
	 CONSTRAINT "fkeycon_inputs_project_heat_rate_curves_to_subscenarios_project_heat_rate_curves" FOREIGN KEY ("project","heat_rate_curves_scenario_id") REFERENCES "subscenarios_project_heat_rate_curves" ("project","heat_rate_curves_scenario_id")
);

CREATE TABLE "subscenarios_project_operational_chars" (
	"project_operational_chars_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_operational_chars_scenario_id")
);

CREATE TABLE "subscenarios_project_capacity_groups" (
	"project_capacity_group_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_capacity_group_scenario_id")
);

CREATE TABLE "inputs_project_capacity_groups" (
	"project_capacity_group_scenario_id" INTEGER,
	"capacity_group" VARCHAR,
	"project" VARCHAR,
	 PRIMARY KEY ("project_capacity_group_scenario_id","capacity_group","project"),
	 CONSTRAINT "fkeycon_inputs_project_capacity_groups_to_subscenarios_project_capacity_groups" FOREIGN KEY ("project_capacity_group_scenario_id") REFERENCES "subscenarios_project_capacity_groups" ("project_capacity_group_scenario_id")
);

CREATE TABLE "subscenarios_project_capacity_group_requirements" (
	"project_capacity_group_requirement_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_capacity_group_requirement_scenario_id")
);

CREATE TABLE "inputs_project_capacity_group_requirements" (
	"project_capacity_group_requirement_scenario_id" INTEGER,
	"capacity_group" VARCHAR,
	"period" INTEGER,
	"capacity_group_new_capacity_min" FLOAT,
	"capacity_group_new_capacity_max" FLOAT,
	"capacity_group_total_capacity_min" FLOAT,
	"capacity_group_total_capacity_max" FLOAT,
	 PRIMARY KEY ("project_capacity_group_requirement_scenario_id","capacity_group","period"),
	 CONSTRAINT "fkeycon_inputs_project_capacity_group_requirements_to_subscenarios_project_capacity_group_requirements" FOREIGN KEY ("project_capacity_group_requirement_scenario_id") REFERENCES "subscenarios_project_capacity_group_requirements" ("project_capacity_group_requirement_scenario_id")
);

CREATE TABLE "subscenarios_project_new_potential" (
	"project_new_potential_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_new_potential_scenario_id")
);

CREATE TABLE "inputs_project_new_potential" (
	"project_new_potential_scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"min_cumulative_new_build_mw" FLOAT,
	"max_cumulative_new_build_mw" FLOAT,
	"min_cumulative_new_build_mwh" FLOAT,
	"max_cumulative_new_build_mwh" FLOAT,
	 PRIMARY KEY ("project_new_potential_scenario_id","project","period"),
	 CONSTRAINT "fkeycon_inputs_project_new_potential_to_subscenarios_project_new_potential" FOREIGN KEY ("project_new_potential_scenario_id") REFERENCES "subscenarios_project_new_potential" ("project_new_potential_scenario_id")
);

CREATE TABLE "inputs_project_shiftable_load_supply_curve" (
	"supply_curve_scenario_id" INTEGER,
	"project" VARCHAR,
	"supply_curve_point" INTEGER,
	"supply_curve_slope" FLOAT,
	"supply_curve_intercept" FLOAT,
	 PRIMARY KEY ("supply_curve_scenario_id","project","supply_curve_point")
);

CREATE TABLE "subscenarios_project_new_binary_build_size" (
	"project_new_binary_build_size_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_new_binary_build_size_scenario_id")
);

CREATE TABLE "inputs_project_new_binary_build_size" (
	"project_new_binary_build_size_scenario_id" INTEGER,
	"project" VARCHAR,
	"binary_build_size_mw" FLOAT,
	"binary_build_size_mwh" FLOAT,
	 PRIMARY KEY ("project_new_binary_build_size_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_new_binary_build_size_to_subscenarios_project_new_binary_build_size" FOREIGN KEY ("project_new_binary_build_size_scenario_id") REFERENCES "subscenarios_project_new_binary_build_size" ("project_new_binary_build_size_scenario_id")
);

CREATE TABLE "subscenarios_project_new_cost" (
	"project_new_cost_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_new_cost_scenario_id")
);

CREATE TABLE "inputs_project_new_cost" (
	"project_new_cost_scenario_id" INTEGER,
	"project" VARCHAR,
	"vintage" INTEGER,
	"lifetime_yrs" INTEGER,
	"annualized_real_cost_per_mw_yr" FLOAT,
	"annualized_real_cost_per_mwh_yr" FLOAT,
	"levelized_cost_per_mwh" FLOAT,
	"supply_curve_scenario_id" INTEGER,
	 PRIMARY KEY ("project_new_cost_scenario_id","project","vintage"),
	 CONSTRAINT "fkeycon_inputs_project_new_cost_to_subscenarios_project_new_cost" FOREIGN KEY ("project_new_cost_scenario_id") REFERENCES "subscenarios_project_new_cost" ("project_new_cost_scenario_id")
);

CREATE TABLE "subscenarios_project_specified_fixed_cost" (
	"project_specified_fixed_cost_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_specified_fixed_cost_scenario_id")
);

CREATE TABLE "inputs_project_specified_fixed_cost" (
	"project_specified_fixed_cost_scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"fixed_cost_per_mw_year" FLOAT,
	"hyb_gen_fixed_cost_per_mw_yr" FLOAT,
	"hyb_stor_fixed_cost_per_mw_yr" FLOAT,
	"fixed_cost_per_mwh_year" FLOAT,
	 PRIMARY KEY ("project_specified_fixed_cost_scenario_id","project","period"),
	 CONSTRAINT "fkeycon_inputs_project_specified_fixed_cost_to_subscenarios_project_specified_fixed_cost" FOREIGN KEY ("project_specified_fixed_cost_scenario_id") REFERENCES "subscenarios_project_specified_fixed_cost" ("project_specified_fixed_cost_scenario_id")
);

CREATE TABLE "subscenarios_project_specified_capacity" (
	"project_specified_capacity_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_specified_capacity_scenario_id")
);

CREATE TABLE "inputs_project_specified_capacity" (
	"project_specified_capacity_scenario_id" INTEGER,
	"project" VARCHAR,
	"period" INTEGER,
	"specified_capacity_mw" FLOAT,
	"hyb_gen_specified_capacity_mw" FLOAT,
	"hyb_stor_specified_capacity_mw" FLOAT,
	"specified_capacity_mwh" FLOAT,
	 PRIMARY KEY ("project_specified_capacity_scenario_id","project","period"),
	 CONSTRAINT "fkeycon_inputs_project_specified_capacity_to_subscenarios_project_specified_capacity" FOREIGN KEY ("project_specified_capacity_scenario_id") REFERENCES "subscenarios_project_specified_capacity" ("project_specified_capacity_scenario_id")
);

CREATE TABLE "subscenarios_project_portfolios" (
	"project_portfolio_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("project_portfolio_scenario_id")
);

CREATE TABLE "subscenarios_market_volume" (
	"market_volume_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("market_volume_scenario_id")
);

CREATE TABLE "inputs_market_volume" (
	"market_volume_scenario_id" INTEGER,
	"market" VARCHAR,
	"timepoint" INTEGER,
	"max_market_sales" FLOAT,
	"max_market_purchases" FLOAT,
	 PRIMARY KEY ("market_volume_scenario_id","market","timepoint"),
	 CONSTRAINT "fkeycon_inputs_market_volume_to_subscenarios_market_volume" FOREIGN KEY ("market_volume_scenario_id") REFERENCES "subscenarios_market_volume" ("market_volume_scenario_id")
);

CREATE TABLE "subscenarios_market_prices" (
	"market_price_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("market_price_scenario_id")
);

CREATE TABLE "inputs_market_prices" (
	"market_price_scenario_id" INTEGER,
	"market" VARCHAR,
	"timepoint" INTEGER,
	"market_price" FLOAT,
	 PRIMARY KEY ("market_price_scenario_id","market","timepoint"),
	 CONSTRAINT "fkeycon_inputs_market_prices_to_subscenarios_market_prices" FOREIGN KEY ("market_price_scenario_id") REFERENCES "subscenarios_market_prices" ("market_price_scenario_id")
);

CREATE TABLE "subscenarios_geography_markets" (
	"market_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("market_scenario_id")
);

CREATE TABLE "inputs_geography_markets" (
	"market_scenario_id" INTEGER,
	"market" VARCHAR,
	 PRIMARY KEY ("market_scenario_id","market"),
	 CONSTRAINT "fkeycon_inputs_geography_markets_to_subscenarios_geography_markets" FOREIGN KEY ("market_scenario_id") REFERENCES "subscenarios_geography_markets" ("market_scenario_id")
);

CREATE TABLE "subscenarios_geography_local_capacity_zones" (
	"local_capacity_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("local_capacity_zone_scenario_id")
);

CREATE TABLE "inputs_geography_local_capacity_zones" (
	"local_capacity_zone_scenario_id" INTEGER,
	"local_capacity_zone" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	 PRIMARY KEY ("local_capacity_zone_scenario_id","local_capacity_zone"),
	 CONSTRAINT "fkeycon_inputs_geography_local_capacity_zones_to_subscenarios_geography_local_capacity_zones" FOREIGN KEY ("local_capacity_zone_scenario_id") REFERENCES "subscenarios_geography_local_capacity_zones" ("local_capacity_zone_scenario_id")
);

CREATE TABLE "subscenarios_geography_prm_zones" (
	"prm_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("prm_zone_scenario_id")
);

CREATE TABLE "inputs_geography_prm_zones" (
	"prm_zone_scenario_id" INTEGER,
	"prm_zone" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	 PRIMARY KEY ("prm_zone_scenario_id","prm_zone"),
	 CONSTRAINT "fkeycon_inputs_geography_prm_zones_to_subscenarios_geography_prm_zones" FOREIGN KEY ("prm_zone_scenario_id") REFERENCES "subscenarios_geography_prm_zones" ("prm_zone_scenario_id")
);

CREATE TABLE "subscenarios_geography_carbon_tax_zones" (
	"carbon_tax_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("carbon_tax_zone_scenario_id")
);

CREATE TABLE "inputs_geography_carbon_tax_zones" (
	"carbon_tax_zone_scenario_id" INTEGER,
	"carbon_tax_zone" VARCHAR,
	 PRIMARY KEY ("carbon_tax_zone_scenario_id","carbon_tax_zone"),
	 CONSTRAINT "fkeycon_inputs_geography_carbon_tax_zones_to_subscenarios_geography_carbon_tax_zones" FOREIGN KEY ("carbon_tax_zone_scenario_id") REFERENCES "subscenarios_geography_carbon_tax_zones" ("carbon_tax_zone_scenario_id")
);

CREATE TABLE "subscenarios_geography_carbon_cap_zones" (
	"carbon_cap_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("carbon_cap_zone_scenario_id")
);

CREATE TABLE "inputs_geography_carbon_cap_zones" (
	"carbon_cap_zone_scenario_id" INTEGER,
	"carbon_cap_zone" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_emission" FLOAT,
	 PRIMARY KEY ("carbon_cap_zone_scenario_id","carbon_cap_zone"),
	 CONSTRAINT "fkeycon_inputs_geography_carbon_cap_zones_to_subscenarios_geography_carbon_cap_zones" FOREIGN KEY ("carbon_cap_zone_scenario_id") REFERENCES "subscenarios_geography_carbon_cap_zones" ("carbon_cap_zone_scenario_id")
);

CREATE TABLE "subscenarios_geography_energy_target_zones" (
	"energy_target_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("energy_target_zone_scenario_id")
);

CREATE TABLE "inputs_geography_energy_target_zones" (
	"energy_target_zone_scenario_id" INTEGER,
	"energy_target_zone" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mwh" FLOAT,
	 PRIMARY KEY ("energy_target_zone_scenario_id","energy_target_zone"),
	 CONSTRAINT "fkeycon_inputs_geography_energy_target_zones_to_subscenarios_geography_energy_target_zones" FOREIGN KEY ("energy_target_zone_scenario_id") REFERENCES "subscenarios_geography_energy_target_zones" ("energy_target_zone_scenario_id")
);

CREATE TABLE "subscenarios_geography_spinning_reserves_bas" (
	"spinning_reserves_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("spinning_reserves_ba_scenario_id")
);

CREATE TABLE "inputs_geography_spinning_reserves_bas" (
	"spinning_reserves_ba_scenario_id" INTEGER,
	"spinning_reserves_ba" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	"reserve_to_energy_adjustment" FLOAT,
	 PRIMARY KEY ("spinning_reserves_ba_scenario_id","spinning_reserves_ba"),
	 CONSTRAINT "fkeycon_inputs_geography_spinning_reserves_bas_to_subscenarios_geography_spinning_reserves_bas" FOREIGN KEY ("spinning_reserves_ba_scenario_id") REFERENCES "subscenarios_geography_spinning_reserves_bas" ("spinning_reserves_ba_scenario_id")
);

CREATE TABLE "subscenarios_geography_frequency_response_bas" (
	"frequency_response_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("frequency_response_ba_scenario_id")
);

CREATE TABLE "inputs_geography_frequency_response_bas" (
	"frequency_response_ba_scenario_id" INTEGER,
	"frequency_response_ba" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	"reserve_to_energy_adjustment" FLOAT,
	 PRIMARY KEY ("frequency_response_ba_scenario_id","frequency_response_ba"),
	 CONSTRAINT "fkeycon_inputs_geography_frequency_response_bas_to_subscenarios_geography_frequency_response_bas" FOREIGN KEY ("frequency_response_ba_scenario_id") REFERENCES "subscenarios_geography_frequency_response_bas" ("frequency_response_ba_scenario_id")
);

CREATE TABLE "subscenarios_geography_regulation_down_bas" (
	"regulation_down_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("regulation_down_ba_scenario_id")
);

CREATE TABLE "inputs_geography_regulation_down_bas" (
	"regulation_down_ba_scenario_id" INTEGER,
	"regulation_down_ba" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	"reserve_to_energy_adjustment" FLOAT,
	 PRIMARY KEY ("regulation_down_ba_scenario_id","regulation_down_ba"),
	 CONSTRAINT "fkeycon_inputs_geography_regulation_down_bas_to_subscenarios_geography_regulation_down_bas" FOREIGN KEY ("regulation_down_ba_scenario_id") REFERENCES "subscenarios_geography_regulation_down_bas" ("regulation_down_ba_scenario_id")
);

CREATE TABLE "subscenarios_geography_regulation_up_bas" (
	"regulation_up_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("regulation_up_ba_scenario_id")
);

CREATE TABLE "inputs_geography_regulation_up_bas" (
	"regulation_up_ba_scenario_id" INTEGER,
	"regulation_up_ba" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	"reserve_to_energy_adjustment" FLOAT,
	 PRIMARY KEY ("regulation_up_ba_scenario_id","regulation_up_ba"),
	 CONSTRAINT "fkeycon_inputs_geography_regulation_up_bas_to_subscenarios_geography_regulation_up_bas" FOREIGN KEY ("regulation_up_ba_scenario_id") REFERENCES "subscenarios_geography_regulation_up_bas" ("regulation_up_ba_scenario_id")
);

CREATE TABLE "subscenarios_geography_lf_reserves_down_bas" (
	"lf_reserves_down_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("lf_reserves_down_ba_scenario_id")
);

CREATE TABLE "inputs_geography_lf_reserves_down_bas" (
	"lf_reserves_down_ba_scenario_id" INTEGER,
	"lf_reserves_down_ba" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	"reserve_to_energy_adjustment" FLOAT,
	 PRIMARY KEY ("lf_reserves_down_ba_scenario_id","lf_reserves_down_ba"),
	 CONSTRAINT "fkeycon_inputs_geography_lf_reserves_down_bas_to_subscenarios_geography_lf_reserves_down_bas" FOREIGN KEY ("lf_reserves_down_ba_scenario_id") REFERENCES "subscenarios_geography_lf_reserves_down_bas" ("lf_reserves_down_ba_scenario_id")
);

CREATE TABLE "subscenarios_geography_lf_reserves_up_bas" (
	"lf_reserves_up_ba_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("lf_reserves_up_ba_scenario_id")
);

CREATE TABLE "inputs_geography_lf_reserves_up_bas" (
	"lf_reserves_up_ba_scenario_id" INTEGER,
	"lf_reserves_up_ba" VARCHAR,
	"allow_violation" INTEGER,
	"violation_penalty_per_mw" FLOAT,
	"reserve_to_energy_adjustment" FLOAT,
	 PRIMARY KEY ("lf_reserves_up_ba_scenario_id","lf_reserves_up_ba"),
	 CONSTRAINT "fkeycon_inputs_geography_lf_reserves_up_bas_to_subscenarios_geography_lf_reserves_up_bas" FOREIGN KEY ("lf_reserves_up_ba_scenario_id") REFERENCES "subscenarios_geography_lf_reserves_up_bas" ("lf_reserves_up_ba_scenario_id")
);

CREATE TABLE "subscenarios_geography_load_zones" (
	"load_zone_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("load_zone_scenario_id")
);

CREATE TABLE "inputs_geography_load_zones" (
	"load_zone_scenario_id" INTEGER,
	"load_zone" VARCHAR,
	"allow_overgeneration" INTEGER,
	"overgeneration_penalty_per_mw" FLOAT,
	"allow_unserved_energy" INTEGER,
	"unserved_energy_penalty_per_mw" FLOAT,
	 PRIMARY KEY ("load_zone_scenario_id","load_zone"),
	 CONSTRAINT "fkeycon_inputs_geography_load_zones_to_subscenarios_geography_load_zones" FOREIGN KEY ("load_zone_scenario_id") REFERENCES "subscenarios_geography_load_zones" ("load_zone_scenario_id")
);

CREATE TABLE "subscenarios_temporal" (
	"temporal_scenario_id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("temporal_scenario_id")
);

CREATE TABLE "inputs_temporal_periods" (
	"temporal_scenario_id" INTEGER,
	"period" INTEGER,
	"discount_factor" FLOAT,
	"period_start_year" FLOAT,
	"period_end_year" FLOAT,
	 PRIMARY KEY ("temporal_scenario_id","period"),
	 CONSTRAINT "fkeycon_inputs_temporal_periods_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id")
);

CREATE TABLE "inputs_temporal_subproblems" (
	"temporal_scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	 PRIMARY KEY ("temporal_scenario_id","subproblem_id"),
	 CONSTRAINT "fkeycon_inputs_temporal_subproblems_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id")
);

CREATE TABLE "inputs_temporal_subproblems_stages" (
	"temporal_scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	 PRIMARY KEY ("temporal_scenario_id","subproblem_id","stage_id"),
	 CONSTRAINT "fkeycon_inputs_temporal_subproblems_stages_to_inputs_temporal_subproblems" FOREIGN KEY ("temporal_scenario_id","subproblem_id") REFERENCES "inputs_temporal_subproblems" ("temporal_scenario_id","subproblem_id"),
	 CONSTRAINT "fkeycon_inputs_temporal_subproblems_stages_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id")
);

CREATE TABLE "results_scenario" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"objective_function_value" FLOAT,
	"solver_termination_condition" VARCHAR,
	 PRIMARY KEY ("scenario_id","subproblem_id","stage_id")
);

CREATE TABLE "status_validation" (
	"scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"gridpath_module" VARCHAR,
	"db_table" VARCHAR,
	"severity" VARCHAR,
	"description" VARCHAR,
	"time_stamp" TEXT
);

CREATE TABLE "mod_run_status_types" (
	"run_status_id" INTEGER,
	"run_status_name" VARCHAR,
	 PRIMARY KEY ("run_status_id")
);

CREATE TABLE "mod_units" (
	"metric" VARCHAR,
	"type" VARCHAR,
	"numerator_core_units" VARCHAR,
	"denominator_core_units" VARCHAR,
	"unit" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("metric")
);

CREATE TABLE "mod_validation_status_types" (
	"validation_status_id" INTEGER,
	"validation_status_name" VARCHAR,
	 PRIMARY KEY ("validation_status_id")
);

CREATE TABLE "scenarios" (
	"scenario_id" INTEGER,
	"scenario_name" VARCHAR,
	"scenario_description" VARCHAR,
	"validation_status_id" INTEGER,
	"queue_order_id" INTEGER,
	"run_status_id" INTEGER,
	"run_process_id" INTEGER,
	"run_start_time" TIME,
	"run_end_time" TIME,
	"of_transmission" INTEGER,
	"of_transmission_hurdle_rates" INTEGER,
	"of_simultaneous_flow_limits" INTEGER,
	"of_lf_reserves_up" INTEGER,
	"of_lf_reserves_down" INTEGER,
	"of_regulation_up" INTEGER,
	"of_regulation_down" INTEGER,
	"of_frequency_response" INTEGER,
	"of_spinning_reserves" INTEGER,
	"of_period_energy_target" INTEGER,
	"of_horizon_energy_target" INTEGER,
	"of_carbon_cap" INTEGER,
	"of_track_carbon_imports" INTEGER,
	"of_carbon_tax" INTEGER,
	"of_prm" INTEGER,
	"of_elcc_surface" INTEGER,
	"of_local_capacity" INTEGER,
	"of_markets" INTEGER,
	"of_tuning" INTEGER,
	"temporal_scenario_id" INTEGER,
	"load_zone_scenario_id" INTEGER,
	"lf_reserves_up_ba_scenario_id" INTEGER,
	"lf_reserves_down_ba_scenario_id" INTEGER,
	"regulation_up_ba_scenario_id" INTEGER,
	"regulation_down_ba_scenario_id" INTEGER,
	"frequency_response_ba_scenario_id" INTEGER,
	"spinning_reserves_ba_scenario_id" INTEGER,
	"energy_target_zone_scenario_id" INTEGER,
	"carbon_cap_zone_scenario_id" INTEGER,
	"carbon_tax_zone_scenario_id" INTEGER,
	"prm_zone_scenario_id" INTEGER,
	"local_capacity_zone_scenario_id" INTEGER,
	"market_scenario_id" INTEGER,
	"project_portfolio_scenario_id" INTEGER,
	"project_operational_chars_scenario_id" INTEGER,
	"project_availability_scenario_id" INTEGER,
	"fuel_scenario_id" INTEGER,
	"project_load_zone_scenario_id" INTEGER,
	"project_lf_reserves_up_ba_scenario_id" INTEGER,
	"project_lf_reserves_down_ba_scenario_id" INTEGER,
	"project_regulation_up_ba_scenario_id" INTEGER,
	"project_regulation_down_ba_scenario_id" INTEGER,
	"project_frequency_response_ba_scenario_id" INTEGER,
	"project_spinning_reserves_ba_scenario_id" INTEGER,
	"project_energy_target_zone_scenario_id" INTEGER,
	"project_carbon_cap_zone_scenario_id" INTEGER,
	"project_carbon_tax_zone_scenario_id" INTEGER,
	"project_prm_zone_scenario_id" INTEGER,
	"project_elcc_chars_scenario_id" INTEGER,
	"prm_energy_only_scenario_id" INTEGER,
	"project_local_capacity_zone_scenario_id" INTEGER,
	"project_local_capacity_chars_scenario_id" INTEGER,
	"load_zone_market_scenario_id" INTEGER,
	"project_specified_capacity_scenario_id" INTEGER,
	"project_specified_fixed_cost_scenario_id" INTEGER,
	"fuel_price_scenario_id" INTEGER,
	"project_new_cost_scenario_id" INTEGER,
	"project_new_potential_scenario_id" INTEGER,
	"project_new_binary_build_size_scenario_id" INTEGER,
	"project_capacity_group_requirement_scenario_id" INTEGER,
	"project_capacity_group_scenario_id" INTEGER,
	"transmission_portfolio_scenario_id" INTEGER,
	"transmission_load_zone_scenario_id" INTEGER,
	"transmission_specified_capacity_scenario_id" INTEGER,
	"transmission_new_cost_scenario_id" INTEGER,
	"transmission_operational_chars_scenario_id" INTEGER,
	"transmission_hurdle_rate_scenario_id" INTEGER,
	"transmission_carbon_cap_zone_scenario_id" INTEGER,
	"transmission_simultaneous_flow_limit_scenario_id" INTEGER,
	"transmission_simultaneous_flow_limit_line_group_scenario_id" INTEGER,
	"load_scenario_id" INTEGER,
	"lf_reserves_up_scenario_id" INTEGER,
	"lf_reserves_down_scenario_id" INTEGER,
	"regulation_up_scenario_id" INTEGER,
	"regulation_down_scenario_id" INTEGER,
	"frequency_response_scenario_id" INTEGER,
	"spinning_reserves_scenario_id" INTEGER,
	"period_energy_target_scenario_id" INTEGER,
	"horizon_energy_target_scenario_id" INTEGER,
	"carbon_cap_target_scenario_id" INTEGER,
	"carbon_tax_scenario_id" INTEGER,
	"prm_requirement_scenario_id" INTEGER,
	"local_capacity_requirement_scenario_id" INTEGER,
	"elcc_surface_scenario_id" INTEGER,
	"market_price_scenario_id" INTEGER,
	"market_volume_scenario_id" INTEGER,
	"tuning_scenario_id" INTEGER,
	"solver_options_id" INTEGER,
	 PRIMARY KEY ("scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_load_zones" FOREIGN KEY ("project_load_zone_scenario_id") REFERENCES "subscenarios_project_load_zones" ("project_load_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_capacity_groups" FOREIGN KEY ("project_capacity_group_scenario_id") REFERENCES "subscenarios_project_capacity_groups" ("project_capacity_group_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_lf_reserves_down_bas" FOREIGN KEY ("lf_reserves_down_ba_scenario_id") REFERENCES "subscenarios_geography_lf_reserves_down_bas" ("lf_reserves_down_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_prm_zones" FOREIGN KEY ("prm_zone_scenario_id") REFERENCES "subscenarios_geography_prm_zones" ("prm_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_new_binary_build_size" FOREIGN KEY ("project_new_binary_build_size_scenario_id") REFERENCES "subscenarios_project_new_binary_build_size" ("project_new_binary_build_size_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_regulation_down_bas" FOREIGN KEY ("project_regulation_down_ba_scenario_id") REFERENCES "subscenarios_project_regulation_down_bas" ("project_regulation_down_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_new_potential" FOREIGN KEY ("project_new_potential_scenario_id") REFERENCES "subscenarios_project_new_potential" ("project_new_potential_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_market_volume" FOREIGN KEY ("market_volume_scenario_id") REFERENCES "subscenarios_market_volume" ("market_volume_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_mod_validation_status_types" FOREIGN KEY ("validation_status_id") REFERENCES "mod_validation_status_types" ("validation_status_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_carbon_cap_targets" FOREIGN KEY ("carbon_cap_target_scenario_id") REFERENCES "subscenarios_system_carbon_cap_targets" ("carbon_cap_target_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_lf_reserves_up" FOREIGN KEY ("lf_reserves_up_scenario_id") REFERENCES "subscenarios_system_lf_reserves_up" ("lf_reserves_up_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_carbon_tax_zones" FOREIGN KEY ("carbon_tax_zone_scenario_id") REFERENCES "subscenarios_geography_carbon_tax_zones" ("carbon_tax_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_horizon_energy_targets" FOREIGN KEY ("horizon_energy_target_scenario_id") REFERENCES "subscenarios_system_horizon_energy_targets" ("horizon_energy_target_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_load_zones" FOREIGN KEY ("transmission_load_zone_scenario_id") REFERENCES "subscenarios_transmission_load_zones" ("transmission_load_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_frequency_response_bas" FOREIGN KEY ("project_frequency_response_ba_scenario_id") REFERENCES "subscenarios_project_frequency_response_bas" ("project_frequency_response_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_frequency_response_bas" FOREIGN KEY ("frequency_response_ba_scenario_id") REFERENCES "subscenarios_geography_frequency_response_bas" ("frequency_response_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_spinning_reserves" FOREIGN KEY ("spinning_reserves_scenario_id") REFERENCES "subscenarios_system_spinning_reserves" ("spinning_reserves_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_lf_reserves_up_bas" FOREIGN KEY ("project_lf_reserves_up_ba_scenario_id") REFERENCES "subscenarios_project_lf_reserves_up_bas" ("project_lf_reserves_up_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_simultaneous_flow_limit_line_groups" FOREIGN KEY ("transmission_simultaneous_flow_limit_line_group_scenario_id") REFERENCES "subscenarios_transmission_simultaneous_flow_limit_line_groups" ("transmission_simultaneous_flow_limit_line_group_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_portfolios" FOREIGN KEY ("project_portfolio_scenario_id") REFERENCES "subscenarios_project_portfolios" ("project_portfolio_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_fuels" FOREIGN KEY ("fuel_scenario_id") REFERENCES "subscenarios_project_fuels" ("fuel_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_energy_target_zones" FOREIGN KEY ("energy_target_zone_scenario_id") REFERENCES "subscenarios_geography_energy_target_zones" ("energy_target_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_mod_run_status_types" FOREIGN KEY ("run_status_id") REFERENCES "mod_run_status_types" ("run_status_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_local_capacity_zones" FOREIGN KEY ("project_local_capacity_zone_scenario_id") REFERENCES "subscenarios_project_local_capacity_zones" ("project_local_capacity_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_lf_reserves_down" FOREIGN KEY ("lf_reserves_down_scenario_id") REFERENCES "subscenarios_system_lf_reserves_down" ("lf_reserves_down_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_specified_capacity" FOREIGN KEY ("project_specified_capacity_scenario_id") REFERENCES "subscenarios_project_specified_capacity" ("project_specified_capacity_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_carbon_cap_zones" FOREIGN KEY ("carbon_cap_zone_scenario_id") REFERENCES "subscenarios_geography_carbon_cap_zones" ("carbon_cap_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_regulation_up_bas" FOREIGN KEY ("project_regulation_up_ba_scenario_id") REFERENCES "subscenarios_project_regulation_up_bas" ("project_regulation_up_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_spinning_reserves_bas" FOREIGN KEY ("project_spinning_reserves_ba_scenario_id") REFERENCES "subscenarios_project_spinning_reserves_bas" ("project_spinning_reserves_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_carbon_cap_zones" FOREIGN KEY ("project_carbon_cap_zone_scenario_id") REFERENCES "subscenarios_project_carbon_cap_zones" ("project_carbon_cap_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_portfolios" FOREIGN KEY ("transmission_portfolio_scenario_id") REFERENCES "subscenarios_transmission_portfolios" ("transmission_portfolio_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_operational_chars" FOREIGN KEY ("transmission_operational_chars_scenario_id") REFERENCES "subscenarios_transmission_operational_chars" ("transmission_operational_chars_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_prm_requirement" FOREIGN KEY ("prm_requirement_scenario_id") REFERENCES "subscenarios_system_prm_requirement" ("prm_requirement_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_market_prices" FOREIGN KEY ("market_price_scenario_id") REFERENCES "subscenarios_market_prices" ("market_price_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_specified_fixed_cost" FOREIGN KEY ("project_specified_fixed_cost_scenario_id") REFERENCES "subscenarios_project_specified_fixed_cost" ("project_specified_fixed_cost_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_specified_capacity" FOREIGN KEY ("transmission_specified_capacity_scenario_id") REFERENCES "subscenarios_transmission_specified_capacity" ("transmission_specified_capacity_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_load" FOREIGN KEY ("load_scenario_id") REFERENCES "subscenarios_system_load" ("load_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_lf_reserves_down_bas" FOREIGN KEY ("project_lf_reserves_down_ba_scenario_id") REFERENCES "subscenarios_project_lf_reserves_down_bas" ("project_lf_reserves_down_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_carbon_tax" FOREIGN KEY ("carbon_tax_scenario_id") REFERENCES "subscenarios_system_carbon_tax" ("carbon_tax_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_prm_zone_elcc_surface" FOREIGN KEY ("elcc_surface_scenario_id") REFERENCES "subscenarios_system_prm_zone_elcc_surface" ("elcc_surface_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_regulation_up" FOREIGN KEY ("regulation_up_scenario_id") REFERENCES "subscenarios_system_regulation_up" ("regulation_up_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_operational_chars" FOREIGN KEY ("project_operational_chars_scenario_id") REFERENCES "subscenarios_project_operational_chars" ("project_operational_chars_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_fuel_prices" FOREIGN KEY ("fuel_price_scenario_id") REFERENCES "subscenarios_project_fuel_prices" ("fuel_price_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_new_cost" FOREIGN KEY ("project_new_cost_scenario_id") REFERENCES "subscenarios_project_new_cost" ("project_new_cost_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_local_capacity_zones" FOREIGN KEY ("local_capacity_zone_scenario_id") REFERENCES "subscenarios_geography_local_capacity_zones" ("local_capacity_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_local_capacity_requirement" FOREIGN KEY ("local_capacity_requirement_scenario_id") REFERENCES "subscenarios_system_local_capacity_requirement" ("local_capacity_requirement_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_regulation_down_bas" FOREIGN KEY ("regulation_down_ba_scenario_id") REFERENCES "subscenarios_geography_regulation_down_bas" ("regulation_down_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_local_capacity_chars" FOREIGN KEY ("project_local_capacity_chars_scenario_id") REFERENCES "subscenarios_project_local_capacity_chars" ("project_local_capacity_chars_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_prm_zones" FOREIGN KEY ("project_prm_zone_scenario_id") REFERENCES "subscenarios_project_prm_zones" ("project_prm_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_elcc_chars" FOREIGN KEY ("project_elcc_chars_scenario_id") REFERENCES "subscenarios_project_elcc_chars" ("project_elcc_chars_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_load_zones" FOREIGN KEY ("load_zone_scenario_id") REFERENCES "subscenarios_geography_load_zones" ("load_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_frequency_response" FOREIGN KEY ("frequency_response_scenario_id") REFERENCES "subscenarios_system_frequency_response" ("frequency_response_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_lf_reserves_up_bas" FOREIGN KEY ("lf_reserves_up_ba_scenario_id") REFERENCES "subscenarios_geography_lf_reserves_up_bas" ("lf_reserves_up_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_simultaneous_flow_limits" FOREIGN KEY ("transmission_simultaneous_flow_limit_scenario_id") REFERENCES "subscenarios_transmission_simultaneous_flow_limits" ("transmission_simultaneous_flow_limit_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_spinning_reserves_bas" FOREIGN KEY ("spinning_reserves_ba_scenario_id") REFERENCES "subscenarios_geography_spinning_reserves_bas" ("spinning_reserves_ba_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_regulation_down" FOREIGN KEY ("regulation_down_scenario_id") REFERENCES "subscenarios_system_regulation_down" ("regulation_down_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_hurdle_rates" FOREIGN KEY ("transmission_hurdle_rate_scenario_id") REFERENCES "subscenarios_transmission_hurdle_rates" ("transmission_hurdle_rate_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_carbon_tax_zones" FOREIGN KEY ("project_carbon_tax_zone_scenario_id") REFERENCES "subscenarios_project_carbon_tax_zones" ("project_carbon_tax_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_load_zone_markets" FOREIGN KEY ("load_zone_market_scenario_id") REFERENCES "subscenarios_load_zone_markets" ("load_zone_market_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_carbon_cap_zones" FOREIGN KEY ("transmission_carbon_cap_zone_scenario_id") REFERENCES "subscenarios_transmission_carbon_cap_zones" ("transmission_carbon_cap_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_prm_energy_only" FOREIGN KEY ("prm_energy_only_scenario_id") REFERENCES "subscenarios_project_prm_energy_only" ("prm_energy_only_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_transmission_new_cost" FOREIGN KEY ("transmission_new_cost_scenario_id") REFERENCES "subscenarios_transmission_new_cost" ("transmission_new_cost_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_energy_target_zones" FOREIGN KEY ("project_energy_target_zone_scenario_id") REFERENCES "subscenarios_project_energy_target_zones" ("project_energy_target_zone_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_capacity_group_requirements" FOREIGN KEY ("project_capacity_group_requirement_scenario_id") REFERENCES "subscenarios_project_capacity_group_requirements" ("project_capacity_group_requirement_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_system_period_energy_targets" FOREIGN KEY ("period_energy_target_scenario_id") REFERENCES "subscenarios_system_period_energy_targets" ("period_energy_target_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_markets" FOREIGN KEY ("market_scenario_id") REFERENCES "subscenarios_geography_markets" ("market_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_tuning" FOREIGN KEY ("tuning_scenario_id") REFERENCES "subscenarios_tuning" ("tuning_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_project_availability" FOREIGN KEY ("project_availability_scenario_id") REFERENCES "subscenarios_project_availability" ("project_availability_scenario_id"),
	 CONSTRAINT "fkeycon_scenarios_to_subscenarios_geography_regulation_up_bas" FOREIGN KEY ("regulation_up_ba_scenario_id") REFERENCES "subscenarios_geography_regulation_up_bas" ("regulation_up_ba_scenario_id")
);

CREATE TABLE "mod_features" (
	"feature" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("feature")
);

CREATE TABLE "mod_feature_subscenarios" (
	"feature" VARCHAR,
	"feature" VARCHAR,
	"subscenario_id" VARCHAR,
	"subscenario_id" VARCHAR,
	 PRIMARY KEY ("feature","subscenario_id"),
	 CONSTRAINT "fkeycon_mod_feature_subscenarios_to_mod_features" FOREIGN KEY ("feature") REFERENCES "mod_features" ("feature")
);

CREATE TABLE "mod_prm_types" (
	"prm_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("prm_type")
);

CREATE TABLE "inputs_project_elcc_chars" (
	"project_elcc_chars_scenario_id" INTEGER,
	"project" VARCHAR,
	"prm_type" VARCHAR,
	"elcc_simple_fraction" FLOAT,
	"contributes_to_elcc_surface" INTEGER,
	"cap_factor_for_elcc_surface" FLOAT,
	"min_duration_for_full_capacity_credit_hours" FLOAT,
	"deliverability_group" VARCHAR,
	 PRIMARY KEY ("project_elcc_chars_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_elcc_chars_to_mod_prm_types" FOREIGN KEY ("prm_type") REFERENCES "mod_prm_types" ("prm_type"),
	 CONSTRAINT "fkeycon_inputs_project_elcc_chars_to_subscenarios_project_elcc_chars" FOREIGN KEY ("project_elcc_chars_scenario_id") REFERENCES "subscenarios_project_elcc_chars" ("project_elcc_chars_scenario_id")
);

CREATE TABLE "mod_tx_capacity_types" (
	"capacity_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("capacity_type")
);

CREATE TABLE "inputs_transmission_portfolios" (
	"transmission_portfolio_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"capacity_type" VARCHAR,
	 PRIMARY KEY ("transmission_portfolio_scenario_id","transmission_line"),
	 CONSTRAINT "fkeycon_inputs_transmission_portfolios_to_subscenarios_transmission_portfolios" FOREIGN KEY ("transmission_portfolio_scenario_id") REFERENCES "subscenarios_transmission_portfolios" ("transmission_portfolio_scenario_id"),
	 CONSTRAINT "fkeycon_inputs_transmission_portfolios_to_mod_tx_capacity_types" FOREIGN KEY ("capacity_type") REFERENCES "mod_tx_capacity_types" ("capacity_type")
);

CREATE TABLE "mod_tx_operational_types" (
	"operational_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("operational_type")
);

CREATE TABLE "inputs_transmission_operational_chars" (
	"transmission_operational_chars_scenario_id" INTEGER,
	"transmission_line" VARCHAR,
	"operational_type" VARCHAR,
	"tx_simple_loss_factor" FLOAT,
	"reactance_ohms" FLOAT,
	 PRIMARY KEY ("transmission_operational_chars_scenario_id","transmission_line"),
	 CONSTRAINT "fkeycon_inputs_transmission_operational_chars_to_mod_tx_operational_types" FOREIGN KEY ("operational_type") REFERENCES "mod_tx_operational_types" ("operational_type"),
	 CONSTRAINT "fkeycon_inputs_transmission_operational_chars_to_subscenarios_transmission_operational_chars" FOREIGN KEY ("transmission_operational_chars_scenario_id") REFERENCES "subscenarios_transmission_operational_chars" ("transmission_operational_chars_scenario_id")
);

CREATE TABLE "mod_tx_capacity_and_tx_operational_type_invalid_combos" (
	"capacity_type" VARCHAR,
	"operational_type" VARCHAR,
	 PRIMARY KEY ("capacity_type","operational_type"),
	 CONSTRAINT "fkeycon_mod_tx_capacity_and_tx_operational_type_invalid_combos_to_mod_tx_operational_types" FOREIGN KEY ("operational_type") REFERENCES "mod_tx_operational_types" ("operational_type"),
	 CONSTRAINT "fkeycon_mod_tx_capacity_and_tx_operational_type_invalid_combos_to_mod_tx_capacity_types" FOREIGN KEY ("capacity_type") REFERENCES "mod_tx_capacity_types" ("capacity_type")
);

CREATE TABLE "mod_reserve_types" (
	"reserve_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("reserve_type")
);

CREATE TABLE "mod_operational_types" (
	"operational_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("operational_type")
);

CREATE TABLE "inputs_project_operational_chars" (
	"project_operational_chars_scenario_id" INTEGER,
	"project" VARCHAR,
	"technology" VARCHAR,
	"operational_type" VARCHAR,
	"balancing_type_project" VARCHAR,
	"variable_om_cost_per_mwh" FLOAT,
	"fuel" VARCHAR,
	"heat_rate_curves_scenario_id" INTEGER,
	"variable_om_curves_scenario_id" INTEGER,
	"startup_chars_scenario_id" INTEGER,
	"min_stable_level_fraction" FLOAT,
	"unit_size_mw" FLOAT,
	"startup_cost_per_mw" FLOAT,
	"shutdown_cost_per_mw" FLOAT,
	"startup_fuel_mmbtu_per_mw" FLOAT,
	"startup_plus_ramp_up_rate" FLOAT,
	"shutdown_plus_ramp_down_rate" FLOAT,
	"ramp_up_when_on_rate" FLOAT,
	"ramp_down_when_on_rate" FLOAT,
	"ramp_up_violation_penalty" FLOAT,
	"ramp_down_violation_penalty" FLOAT,
	"min_up_time_hours" INTEGER,
	"min_up_time_violation_penalty" FLOAT,
	"min_down_time_hours" INTEGER,
	"min_down_time_violation_penalty" FLOAT,
	"charging_efficiency" FLOAT,
	"discharging_efficiency" FLOAT,
	"charging_capacity_multiplier" FLOAT,
	"discharging_capacity_multiplier" FLOAT,
	"minimum_duration_hours" FLOAT,
	"maximum_duration_hours" FLOAT,
	"aux_consumption_frac_capacity" FLOAT,
	"aux_consumption_frac_power" FLOAT,
	"last_commitment_stage" INTEGER,
	"variable_generator_profile_scenario_id" INTEGER,
	"curtailment_cost_per_pwh" FLOAT,
	"hydro_operational_chars_scenario_id" INTEGER,
	"lf_reserves_up_derate" FLOAT,
	"lf_reserves_down_derate" FLOAT,
	"regulation_up_derate" FLOAT,
	"regulation_down_derate" FLOAT,
	"frequency_response_derate" FLOAT,
	"spinning_reserves_derate" FLOAT,
	"lf_reserves_up_ramp_rate" FLOAT,
	"lf_reserves_down_ramp_rate" FLOAT,
	"regulation_up_ramp_rate" FLOAT,
	"regulation_down_ramp_rate" FLOAT,
	"frequency_response_ramp_rate" FLOAT,
	"spinning_reserves_ramp_rate" FLOAT,
	 PRIMARY KEY ("project_operational_chars_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_operational_chars_to_mod_operational_types" FOREIGN KEY ("operational_type") REFERENCES "mod_operational_types" ("operational_type"),
	 CONSTRAINT "fkeycon_inputs_project_operational_chars_to_subscenarios_project_operational_chars" FOREIGN KEY ("project_operational_chars_scenario_id") REFERENCES "subscenarios_project_operational_chars" ("project_operational_chars_scenario_id")
);

CREATE TABLE "mod_availability_types" (
	"availability_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("availability_type")
);

CREATE TABLE "mod_capacity_types" (
	"capacity_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("capacity_type")
);

CREATE TABLE "inputs_project_portfolios" (
	"project_portfolio_scenario_id" INTEGER,
	"project" VARCHAR,
	"specified" INTEGER,
	"new_build" INTEGER,
	"capacity_type" VARCHAR,
	 PRIMARY KEY ("project_portfolio_scenario_id","project"),
	 CONSTRAINT "fkeycon_inputs_project_portfolios_to_mod_capacity_types" FOREIGN KEY ("capacity_type") REFERENCES "mod_capacity_types" ("capacity_type"),
	 CONSTRAINT "fkeycon_inputs_project_portfolios_to_subscenarios_project_portfolios" FOREIGN KEY ("project_portfolio_scenario_id") REFERENCES "subscenarios_project_portfolios" ("project_portfolio_scenario_id")
);

CREATE TABLE "mod_capacity_and_operational_type_invalid_combos" (
	"capacity_type" VARCHAR,
	"operational_type" VARCHAR,
	 PRIMARY KEY ("capacity_type","operational_type"),
	 CONSTRAINT "fkeycon_mod_capacity_and_operational_type_invalid_combos_to_mod_capacity_types" FOREIGN KEY ("capacity_type") REFERENCES "mod_capacity_types" ("capacity_type"),
	 CONSTRAINT "fkeycon_mod_capacity_and_operational_type_invalid_combos_to_mod_operational_types" FOREIGN KEY ("operational_type") REFERENCES "mod_operational_types" ("operational_type")
);

CREATE TABLE "mod_months" (
	"month" INTEGER,
	"description" VARCHAR,
	 PRIMARY KEY ("month")
);

CREATE TABLE "inputs_temporal" (
	"temporal_scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"period" INTEGER,
	"number_of_hours_in_timepoint" INTEGER,
	"timepoint_weight" FLOAT,
	"previous_stage_timepoint_map" INTEGER,
	"spinup_or_lookahead" INTEGER,
	"linked_timepoint" INTEGER,
	"month" INTEGER,
	"hour_of_day" FLOAT,
	"timestamp" DATETIME,
	 PRIMARY KEY ("temporal_scenario_id","subproblem_id","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_temporal_to_mod_months" FOREIGN KEY ("month") REFERENCES "mod_months" ("month"),
	 CONSTRAINT "fkeycon_inputs_temporal_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id"),
	 CONSTRAINT "fkeycon_inputs_temporal_to_inputs_temporal_periods" FOREIGN KEY ("temporal_scenario_id","period") REFERENCES "inputs_temporal_periods" ("temporal_scenario_id","period")
);

CREATE TABLE "inputs_temporal_horizon_timepoints_start_end" (
	"temporal_scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"balancing_type_horizon" VARCHAR,
	"horizon" VARCHAR,
	"tmp_start" INTEGER,
	"tmp_end" INTEGER,
	 PRIMARY KEY ("temporal_scenario_id","subproblem_id","stage_id","balancing_type_horizon","horizon","tmp_start","tmp_end"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizon_timepoints_start_end_to_inputs_temporal" FOREIGN KEY ("temporal_scenario_id","subproblem_id","stage_id","tmp_end") REFERENCES "inputs_temporal" ("temporal_scenario_id","subproblem_id","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizon_timepoints_start_end_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id")
);

CREATE TABLE "mod_horizon_boundary_types" (
	"horizon_boundary_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("horizon_boundary_type")
);

CREATE TABLE "inputs_temporal_horizons" (
	"temporal_scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"balancing_type_horizon" VARCHAR,
	"horizon" VARCHAR,
	"boundary" VARCHAR,
	 PRIMARY KEY ("temporal_scenario_id","subproblem_id","horizon","balancing_type_horizon"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizons_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizons_to_mod_horizon_boundary_types" FOREIGN KEY ("boundary") REFERENCES "mod_horizon_boundary_types" ("horizon_boundary_type")
);

CREATE TABLE "inputs_temporal_horizon_timepoints" (
	"temporal_scenario_id" INTEGER,
	"subproblem_id" INTEGER,
	"stage_id" INTEGER,
	"timepoint" INTEGER,
	"balancing_type_horizon" VARCHAR,
	"horizon" VARCHAR,
	 PRIMARY KEY ("temporal_scenario_id","subproblem_id","stage_id","timepoint","balancing_type_horizon","horizon"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizon_timepoints_to_inputs_temporal" FOREIGN KEY ("temporal_scenario_id","subproblem_id","stage_id","timepoint") REFERENCES "inputs_temporal" ("temporal_scenario_id","subproblem_id","stage_id","timepoint"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizon_timepoints_to_inputs_temporal_horizons" FOREIGN KEY ("temporal_scenario_id","subproblem_id","balancing_type_horizon","horizon") REFERENCES "inputs_temporal_horizons" ("temporal_scenario_id","subproblem_id","balancing_type_horizon","horizon"),
	 CONSTRAINT "fkeycon_inputs_temporal_horizon_timepoints_to_subscenarios_temporal" FOREIGN KEY ("temporal_scenario_id") REFERENCES "subscenarios_temporal" ("temporal_scenario_id")
);
