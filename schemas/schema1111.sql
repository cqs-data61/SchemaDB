DROP DATABASE IF EXISTS "schema1111";
CREATE DATABASE "schema1111";
USE "schema1111";
CREATE TABLE "paragon_map_keys" (
	"id" SERIAL,
	"region_id" INTEGER,
	"key_1" INTEGER,
	"key_2" INTEGER,
	"key_3" INTEGER,
	"key_4" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paragon_player_log_command" (
	"id" SERIAL,
	"user_id" INTEGER,
	"command" TEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paragon_player_log_trade" (
	"user_id" INTEGER,
	"date" TIMESTAMP,
	"items_traded" TEXT,
	"items_received" TEXT,
	"other_username" TEXT,
	 PRIMARY KEY ("user_id","date")
);

CREATE TABLE "paragon_player_log_stake" (
	"user_id" INTEGER,
	"items_staked" TEXT,
	"items_received" TEXT,
	"other_staker" TEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("user_id","date")
);

CREATE TABLE "paragon_player_log_packet" (
	"user_id" INTEGER,
	"data" TEXT,
	"date" TIMESTAMP
);

CREATE TABLE "paragon_player_log_chat" (
	"user_id" INTEGER,
	"date" TIMESTAMP,
	"pm" BOOLEAN,
	"message" TEXT,
	 PRIMARY KEY ("user_id","date")
);

CREATE TABLE "paragon_player_skill" (
	"user_id" INTEGER,
	"label_skill" CHARACTER VARYING,
	"level" SMALLINT,
	"exp" DOUBLE PRECISION,
	 PRIMARY KEY ("user_id","label_skill")
);

CREATE TABLE "paragon_player_clan" (
	"user_id" INTEGER,
	"clan_name" CHARACTER VARYING,
	"entry_requirement" ENUM,
	"talk_requirement" ENUM,
	"kick_requirement" ENUM,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "paragon_player_relationship" (
	"user_id" INTEGER,
	"peer_id" INTEGER,
	"status_relationship" ENUM,
	 PRIMARY KEY ("user_id","peer_id")
);

CREATE TABLE "paragon_player_inventory" (
	"user_id" INTEGER,
	"slot" SMALLINT,
	"id" INTEGER,
	"amount" INTEGER,
	 PRIMARY KEY ("user_id","slot")
);

CREATE TABLE "paragon_player_equipment" (
	"user_id" INTEGER,
	"slot" CHARACTER VARYING,
	"id" INTEGER,
	"amount" INTEGER,
	 PRIMARY KEY ("user_id","slot")
);

CREATE TABLE "paragon_player_bank_count" (
	"user_id" INTEGER,
	"tab_1" SMALLINT,
	"tab_2" SMALLINT,
	"tab_3" SMALLINT,
	"tab_4" SMALLINT,
	"tab_5" SMALLINT,
	"tab_6" SMALLINT,
	"tab_7" SMALLINT,
	"tab_8" SMALLINT,
	"tab_9" SMALLINT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "paragon_player_bank" (
	"user_id" INTEGER,
	"slot" INTEGER,
	"id" INTEGER,
	"amount" INTEGER,
	 PRIMARY KEY ("user_id","slot")
);

CREATE TABLE "paragon_player" (
	"user_id" INTEGER,
	"pos_x" INTEGER,
	"pos_y" INTEGER,
	"pos_z" SMALLINT,
	"energy" DOUBLE PRECISION,
	"prayer_points" DOUBLE PRECISION,
	"magic_type" SMALLINT,
	"special_energy" SMALLINT,
	"gender" SMALLINT,
	"looks" TEXT,
	"colors" TEXT,
	"av_skill" TEXT,
	"av_style" TEXT,
	"av_slot" SMALLINT,
	"started" BOOLEAN,
	"pm_status" SMALLINT,
	"auto_retaliate" BOOLEAN,
	"recoil_count" SMALLINT,
	"hitpoint_bars_type" BOOLEAN,
	"hitmarkers_type" BOOLEAN,
	"context_menus_type" BOOLEAN,
	"hits_multiplied" BOOLEAN,
	"hotkeys_type" BOOLEAN,
	"fonts_type" BOOLEAN,
	"caves_wave" SMALLINT,
	"barrows_dead" TEXT,
	"mage_arena_finished" BOOLEAN,
	"lunars_finished" BOOLEAN,
	"rfd_stage" SMALLINT,
	"wand_lvl" SMALLINT,
	"poison_count" SMALLINT,
	"slayer_points" INTEGER,
	"runecraft_points" INTEGER,
	"splitchat" BOOLEAN,
	"armadyl_kc" INTEGER,
	"bandos_kc" INTEGER,
	"saradomin_kc" INTEGER,
	"zamorak_kc" INTEGER,
	"slayer_task_name" TEXT,
	"slayer_task_count" SMALLINT,
	"slayer_task_area" TEXT,
	"vote_points" INTEGER,
	"bank_pin" INTEGER,
	"dt_stage" SMALLINT,
	"md_stage" SMALLINT,
	"brain_robbery_stage" SMALLINT,
	"quest_points" SMALLINT,
	"bonus_xp_ticks" INTEGER,
	"xp_multiplier" SMALLINT,
	"last_login" BIGINT,
	"received_validation_package" BOOLEAN,
	"zombies_points" INTEGER,
	"skull_timer" SMALLINT,
	"nightmare_points" INTEGER,
	"nightmare_wave" SMALLINT,
	"prayers_unlocked" BOOLEAN,
	"tutorial_completed" BOOLEAN,
	"curses_enabled" BOOLEAN,
	"quick_prayers" INTEGER,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "runenova_definition_teleport_rune" (
	"teleport_id" SERIAL,
	"item_id" INTEGER,
	"item_amount" INTEGER,
	 PRIMARY KEY ("teleport_id","item_id")
);

CREATE TABLE "runenova_definition_teleport" (
	"id" SERIAL,
	"required_level" SMALLINT,
	"experience" DOUBLE PRECISION,
	"x" SMALLINT,
	"y" SMALLINT,
	"z" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "runenova_definition_item_equipment_weapon_ranged_usableammo" (
	"id" INTEGER,
	"id_ammo" INTEGER,
	 PRIMARY KEY ("id","id_ammo")
);

CREATE TABLE "runenova_definition_item_equipment_weapon_ranged" (
	"id" SERIAL,
	"id_animation" INTEGER,
	"id_projectile" INTEGER,
	"uses_ammo" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "runenova_definition_item_equipment_weapon" (
	"id" SERIAL,
	"id_interface" INTEGER,
	"id_interface_child" INTEGER,
	"combat_type" ENUM,
	"animation_stand" INTEGER,
	"animation_walk" INTEGER,
	"animation_run" INTEGER,
	"animation_block" INTEGER,
	"animation_accurate" INTEGER,
	"animation_aggressive" INTEGER,
	"animation_defensive" INTEGER,
	"animation_controlled" INTEGER,
	"special_energy" DOUBLE PRECISION,
	"speed_accurate" SMALLINT,
	"speed_aggressive" SMALLINT,
	"speed_defensive" SMALLINT,
	"speed_controlled" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "runenova_definition_item_equipment" (
	"id" SERIAL,
	"equipment_slot" ENUM,
	"offensive_stab" SMALLINT,
	"offensive_slash" SMALLINT,
	"offensive_crush" SMALLINT,
	"offensive_magic" SMALLINT,
	"offensive_ranged" SMALLINT,
	"defensive_stab" SMALLINT,
	"defensive_slash" SMALLINT,
	"defensive_crush" SMALLINT,
	"defensive_magic" SMALLINT,
	"defensive_ranged" SMALLINT,
	"defensive_summoning" SMALLINT,
	"absorb_melee" DOUBLE PRECISION,
	"absorb_magic" DOUBLE PRECISION,
	"absorb_ranged" DOUBLE PRECISION,
	"strength_melee" SMALLINT,
	"strength_ranged" SMALLINT,
	"prayer" SMALLINT,
	"magic_damage" DOUBLE PRECISION,
	"equipment_type" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "runenova_definition_item" (
	"id" SERIAL,
	"id_note" INTEGER,
	"id_lend" INTEGER,
	"id_template_note" INTEGER,
	"id_template_lend" INTEGER,
	"stackable" BOOLEAN,
	"tradable" BOOLEAN,
	"droppable" BOOLEAN,
	"members_only" BOOLEAN,
	"name" CHARACTER VARYING,
	"value" INTEGER,
	"weight" DOUBLE PRECISION,
	"examine" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paragon_api_key" (
	"uuid" CHARACTER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "paragon_definition_object_doors" (
	"id" SERIAL,
	"door_id" INTEGER,
	"pos_x" INTEGER,
	"pos_y" INTEGER,
	"pos_z" INTEGER,
	"open" BOOLEAN,
	"double_door" BOOLEAN,
	"face" INTEGER,
	"type" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paragon_definition_spawn_object" (
	"id_object" INTEGER,
	"delete" BOOLEAN,
	"type" SMALLINT,
	"face" SMALLINT,
	"pos_x" INTEGER,
	"pos_y" INTEGER,
	"pos_z" INTEGER,
	"id_region" INTEGER,
	 PRIMARY KEY ("id_object","pos_x","pos_y","pos_z")
);

CREATE TABLE "paragon_definition_combat_requirements_item" (
	"id" SERIAL,
	"skill" CHARACTER VARYING,
	"level" SMALLINT,
	 PRIMARY KEY ("id","skill")
);

CREATE TABLE "paragon_definition_combat_bonus_npc" (
	"npc_id" SERIAL,
	"npc_bonus_defensive_stab" INTEGER,
	"npc_bonus_defensive_slash" INTEGER,
	"npc_bonus_defensive_crush" INTEGER,
	"npc_bonus_defensive_ranged" INTEGER,
	"npc_bonus_defensive_magic" INTEGER,
	"npc_bonus_offensive_stab" INTEGER,
	"npc_bonus_offensive_slash" INTEGER,
	"npc_bonus_offensive_crush" INTEGER,
	"npc_bonus_offensive_magic" INTEGER,
	"npc_bonus_offensive_ranged" INTEGER,
	"npc_bonus_offensive_attack" INTEGER,
	"npc_bonus_offensive_strength" INTEGER,
	 PRIMARY KEY ("npc_id")
);

CREATE TABLE "paragon_definition_combat_npc" (
	"npc_id" SERIAL,
	"npc_time_death" INTEGER,
	"animation_attack" INTEGER,
	"animation_defend" INTEGER,
	"animation_death" INTEGER,
	"npc_speed_attack" INTEGER,
	"npc_max_hit" SMALLINT,
	"npc_max_hit_poison" SMALLINT,
	"npc_trait_aggressive" BIT VARYING,
	"npc_trait_retreats" BIT VARYING,
	"npc_immunity_poison" BIT VARYING,
	"npc_kill_reward_xp_slayer" DOUBLE PRECISION,
	"player_required_level_slayer" SMALLINT,
	 PRIMARY KEY ("npc_id")
);

CREATE TABLE "paragon_definition_skill_npc" (
	"npc_id" INTEGER,
	"npc_skill_label" CHARACTER VARYING,
	"npc_skill_level" SMALLINT,
	 PRIMARY KEY ("npc_id","npc_skill_label")
);

CREATE TABLE "paragon_definition_spawn_npc" (
	"npc_spawn_id" SERIAL,
	"npc_id" INTEGER,
	"coordinate_x" INTEGER,
	"coordinate_y" INTEGER,
	"coordinate_z" INTEGER,
	"radius" INTEGER,
	"direction" CHARACTER VARYING,
	 PRIMARY KEY ("npc_spawn_id")
);

CREATE TABLE "paragon_definition_drop_common_npc" (
	"id_npc" INTEGER,
	"table_type" CHARACTER VARYING,
	"chance" DOUBLE PRECISION,
	 PRIMARY KEY ("id_npc","table_type")
);

CREATE TABLE "paragon_definition_drop_common" (
	"name" CHARACTER VARYING,
	"id_item" INTEGER,
	"chance" DOUBLE PRECISION,
	"amount_minimum" INTEGER,
	"amount_maximum" INTEGER,
	"rare" BOOLEAN,
	 PRIMARY KEY ("name","id_item")
);

CREATE TABLE "paragon_definition_drop_npc" (
	"id_npc" INTEGER,
	"id_item" INTEGER,
	"chance" DOUBLE PRECISION,
	"amount_minimum" INTEGER,
	"amount_maximum" INTEGER,
	"rare" BOOLEAN,
	 PRIMARY KEY ("id_npc","id_item")
);

CREATE TABLE "paragon_definition_npc" (
	"npc_id" INTEGER,
	"npc_level_combat" INTEGER,
	"npc_name" CHARACTER VARYING,
	"npc_examine_text" TEXT,
	"npc_tile_size" SMALLINT,
	"npc_time_respawn" INTEGER,
	 PRIMARY KEY ("npc_id")
);

CREATE TABLE "paragon_definition_contents_shop" (
	"shop_id" INTEGER,
	"position" INTEGER,
	"item_id" INTEGER,
	"price_purchase" INTEGER,
	"price_sell" INTEGER,
	 PRIMARY KEY ("shop_id","position")
);

CREATE TABLE "paragon_definition_shop" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"currency" CHARACTER VARYING,
	"general_store" BOOLEAN,
	"buys_back" BOOLEAN,
	 PRIMARY KEY ("id")
);
