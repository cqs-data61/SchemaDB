DROP DATABASE IF EXISTS "schema841";
CREATE DATABASE "schema841";
USE "schema841";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"unit" VARCHAR,
	"currency" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"twofa" TINYINT,
	"pin" VARCHAR,
	"currencies" LONGTEXT,
	"otpsecret" VARCHAR,
	"account_id" INT,
	"ip" INT,
	"subscriptions" LONGTEXT,
	"seed" VARCHAR,
	"fiat" TINYINT,
	"index" INT,
	"verified" VARCHAR,
	"locked" TINYINT,
	"authyid" VARCHAR,
	"admin" TINYINT,
	"email" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "withdrawals" (
	"id" INT,
	"user_id" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"amount" DOUBLE,
	"completed" TINYINT,
	"transit" VARCHAR,
	"account" VARCHAR,
	"institution" VARCHAR,
	"notes" TEXT,
	"email" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "withdrawals_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "waiting_list" (
	"id" INT,
	"email" VARCHAR,
	"phone" VARCHAR,
	"status" ENUM,
	"user_id" INT,
	"notes" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "waiting_list_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "referrals" (
	"id" INT,
	"user_id" INT,
	"sponsor_id" INT,
	"token" VARCHAR,
	"expiry" VARCHAR,
	"status" ENUM,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "prs" (
	"text" TEXT,
	"preimage" TEXT
);

CREATE TABLE "migrations_lock" (
	"index" INT,
	"is_locked" INT,
	 PRIMARY KEY ("index")
);

CREATE TABLE "migrations" (
	"id" INT,
	"name" VARCHAR,
	"batch" INT,
	"migration_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "linkingkeys" (
	"id" INT,
	"user_id" INT,
	"hex" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "deposits" (
	"id" INT,
	"user_id" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"amount" DOUBLE,
	"credited" TINYINT,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "codes" (
	"code" VARCHAR,
	"text" TEXT,
	 PRIMARY KEY ("code")
);

CREATE TABLE "accounts" (
	"id" INT,
	"user_id" INT,
	"asset" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"balance" DOUBLE,
	"pending" DOUBLE,
	"name" VARCHAR,
	"ticker" VARCHAR,
	"precision" INT,
	"domain" VARCHAR,
	"contract" LONGTEXT,
	"index" INT,
	"pubkey" VARCHAR,
	"hide" TINYINT,
	"seed" VARCHAR,
	"path" VARCHAR,
	"network" VARCHAR,
	"privkey" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"v1" DOUBLE,
	"v2" DOUBLE,
	"user_id" INT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"accepted" TINYINT,
	"a1_id" INT,
	"a2_id" INT,
	"completedat" DATETIME,
	"rate" DOUBLE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orders_a1_id_foreign" FOREIGN KEY ("a1_id") REFERENCES "accounts" ("id"),
	 CONSTRAINT "orders_a2_id_foreign" FOREIGN KEY ("a2_id") REFERENCES "accounts" ("id")
);

CREATE TABLE "invoices" (
	"id" INT,
	"user_id" INT,
	"text" TEXT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"rate" DOUBLE,
	"currency" VARCHAR,
	"address" VARCHAR,
	"received" DOUBLE,
	"amount" DOUBLE,
	"tip" DOUBLE,
	"network" VARCHAR,
	"unconfidential" VARCHAR,
	"uuid" VARCHAR,
	"memo" TEXT,
	"account_id" INT,
	"path" VARCHAR,
	"webhook" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "invoices_account_id_foreign" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);

CREATE TABLE "payments" (
	"id" INT,
	"user_id" INT,
	"hash" TEXT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"rate" DOUBLE,
	"currency" VARCHAR,
	"address" VARCHAR,
	"received" TINYINT,
	"amount" DOUBLE,
	"tip" DOUBLE,
	"confirmed" TINYINT,
	"fee" DOUBLE,
	"network" VARCHAR,
	"account_id" INT,
	"preimage" VARCHAR,
	"memo" TEXT,
	"redeemed" TINYINT,
	"redeemcode" VARCHAR,
	"path" VARCHAR,
	"invoice_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "payments_invoice_id_foreign" FOREIGN KEY ("invoice_id") REFERENCES "invoices" ("id"),
	 CONSTRAINT "payments_account_id_foreign" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);

CREATE TABLE "sequelizemeta" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);
