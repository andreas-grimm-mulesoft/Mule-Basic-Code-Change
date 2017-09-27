-- Table: public."DataTable"

-- DROP TABLE public."DataTable";

CREATE TABLE public."DataTable"
(
    "Key" integer NOT NULL,
    "Entity" text COLLATE pg_catalog."default",
    "Attribute" text COLLATE pg_catalog."default",
    "System" text COLLATE pg_catalog."default",
    "Value" text COLLATE pg_catalog."default",
    "Group" text COLLATE pg_catalog."default",
    "Begin" bigint,
    "End" bigint,
    CONSTRAINT "DataTable_pkey" PRIMARY KEY ("Key")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."DataTable"
    OWNER to andreasgrimm;