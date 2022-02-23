DROP DATABASE IF EXISTS "schema682";
CREATE DATABASE "schema682";
USE "schema682";
CREATE TABLE "_dpkc_other_multi_pk" (
	"id" BINARY,
	"other_id" BINARY,
	"varchar" VARCHAR,
	 PRIMARY KEY ("id","other_id")
);

CREATE TABLE "_dpkc_other" (
	"id" BINARY,
	"varchar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "_dpkc_main" (
	"id" BINARY,
	"another_id" BINARY,
	"varchar" VARCHAR,
	"nbr" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "_dpkc_1n_relation_double_constraint_two" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_id" BINARY,
	"_dpkc_main_another_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk._dpkc_1n_relation_double_constraint_two._dpkc_main" FOREIGN KEY ("_dpkc_main_another_id","_dpkc_main_id") REFERENCES "_dpkc_main" ("another_id","id")
);

CREATE TABLE "_dpkc_1n_relation_double_constraint" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_id" BINARY,
	"_dpkc_main_another_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk._dpkc_1n_relation_double_constraint._dpkc_main" FOREIGN KEY ("_dpkc_main_another_id","_dpkc_main_id") REFERENCES "_dpkc_main" ("another_id","id")
);

CREATE TABLE "_dpkc_1n_relation_on_another_id" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_another_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk._dpkc_1n_relation_on_another_id._dpkc_main_another_id" FOREIGN KEY ("_dpkc_main_another_id") REFERENCES "_dpkc_main" ("another_id")
);

CREATE TABLE "_dpkc_1n_multi_relation" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_id" BINARY,
	"_dpkc_main_select_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk._dpkc_1n_multi_relation._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id"),
	 CONSTRAINT "fk._dpkc_1n_multi_relation._dpkc_main_select_id" FOREIGN KEY ("_dpkc_main_select_id") REFERENCES "_dpkc_main" ("id")
);

CREATE TABLE "_dpkc_mn_relation_multi_pk" (
	"_dpkc_main_id" BINARY,
	"_dpkc_other_multi_pk_id" BINARY,
	"_dpkc_other_multi_pk_other_id" BINARY,
	 PRIMARY KEY ("_dpkc_main_id","_dpkc_other_multi_pk_id","_dpkc_other_multi_pk_other_id"),
	 CONSTRAINT "fk._dpkc_mn_relation_multi_pk._dpkc_other_multi_pk_id" FOREIGN KEY ("_dpkc_other_multi_pk_id","_dpkc_other_multi_pk_other_id") REFERENCES "_dpkc_other_multi_pk" ("id","other_id"),
	 CONSTRAINT "fk._dpkc_mn_relation_multi_pk._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id")
);

CREATE TABLE "_dpkc_mn_relation2" (
	"_dpkc_main_id" BINARY,
	"_dpkc_other_id" BINARY,
	 PRIMARY KEY ("_dpkc_main_id","_dpkc_other_id"),
	 CONSTRAINT "fk._dpkc_mn_relation2._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id"),
	 CONSTRAINT "fk._dpkc_mn_relation2._dpkc_other_id" FOREIGN KEY ("_dpkc_other_id") REFERENCES "_dpkc_other" ("id")
);

CREATE TABLE "_dpkc_mn_relation1" (
	"_dpkc_main_id" BINARY,
	"_dpkc_other_id" BINARY,
	 PRIMARY KEY ("_dpkc_main_id","_dpkc_other_id"),
	 CONSTRAINT "fk._dpkc_mn_relation1._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id"),
	 CONSTRAINT "fk._dpkc_mn_relation1._dpkc_other_id" FOREIGN KEY ("_dpkc_other_id") REFERENCES "_dpkc_other" ("id")
);

CREATE TABLE "_dpkc_1n_relation3" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk._dpkc_1n_relation3._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id")
);

CREATE TABLE "_dpkc_1n_relation2" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk._dpkc_1n_relation2._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id")
);

CREATE TABLE "_dpkc_1n_relation1" (
	"id" BINARY,
	"varchar" VARCHAR,
	"_dpkc_main_id" BINARY,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK._dpkc_1n_relation1._dpkc_main_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id")
);

CREATE TABLE "_dpkc_main_translation" (
	"_dpkc_main_id" BINARY,
	"language_id" BINARY,
	"varchar" VARCHAR,
	 PRIMARY KEY ("_dpkc_main_id","language_id"),
	 CONSTRAINT "fk._dpkc_main_translation.cms_page_id" FOREIGN KEY ("_dpkc_main_id") REFERENCES "_dpkc_main" ("id")
);
