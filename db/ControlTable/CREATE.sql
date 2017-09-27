-- Table: public."DataTable"

-- DROP TABLE public."DataTable";

CREATE TABLE public."DataTable"
(
    "Key" integer NOT NULL,
    "BusinessEntity" character varying(64)[] COLLATE pg_catalog."default",
    "Attribute" character varying(64)[] COLLATE pg_catalog."default",
    "System" character varying(64)[] COLLATE pg_catalog."default",
    "Value" json[],
    CONSTRAINT "DataTable_pkey" PRIMARY KEY ("Key")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."DataTable"
    OWNER to andreasgrimm;