create schema IF NOT EXISTS data_migration;  

CREATE TABLE IF NOT EXISTS   data_migration.districts
(
    id serial,
    district_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT Now(),
    updated_at timestamp(0) without time zone DEFAULT Now() ,
    CONSTRAINT districts_pkey PRIMARY KEY (id)
);

INSERT INTO data_migration.districts(district_name)
	VALUES ('Lira'),('Masaka'),('Kampala');



CREATE TABLE IF NOT EXISTS data_migration.tagert_districts
(
    id bigint not null,
    district_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT Now(),
    updated_at timestamp(0) without time zone DEFAULT Now() ,
    CONSTRAINT target_districts_pkey PRIMARY KEY (id)
);