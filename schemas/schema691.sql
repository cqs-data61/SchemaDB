DROP DATABASE IF EXISTS "schema691";
CREATE DATABASE "schema691";
USE "schema691";
CREATE TABLE "packs" (
	"product_id" VARCHAR,
	"product_name" VARCHAR,
	"product_release_date" DATE,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "card_colors" (
	"color_id" INT,
	"card_color" VARCHAR,
	 PRIMARY KEY ("color_id")
);

CREATE TABLE "cards" (
	"card_number" CHAR,
	"color_id" INT,
	"card_name" VARCHAR,
	"card_attribute" VARCHAR,
	"card_effect" VARCHAR,
	"monster_type" VARCHAR,
	"monster_association" VARCHAR,
	"monster_attack" INT,
	"monster_defense" INT,
	 PRIMARY KEY ("card_number"),
	 CONSTRAINT "fkeycon_cards_to_card_colors" FOREIGN KEY ("color_id") REFERENCES "card_colors" ("color_id")
);

CREATE TABLE "product_details" (
	"product_id" VARCHAR,
	"product_position" VARCHAR,
	"card_number" VARCHAR,
	 PRIMARY KEY ("product_id","product_position"),
	 CONSTRAINT "fkeycon_product_details_to_packs" FOREIGN KEY ("product_id") REFERENCES "packs" ("product_id"),
	 CONSTRAINT "fkeycon_product_details_to_cards" FOREIGN KEY ("card_number") REFERENCES "cards" ("card_number")
);

CREATE TABLE "ban_lists" (
	"ban_list_date" DATE,
	"card_number" CHAR,
	"ban_status" VARCHAR,
	 PRIMARY KEY ("ban_list_date","card_number"),
	 CONSTRAINT "fkeycon_ban_lists_to_cards" FOREIGN KEY ("card_number") REFERENCES "cards" ("card_number")
);
