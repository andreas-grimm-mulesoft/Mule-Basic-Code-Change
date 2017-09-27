-- Table: public."DataTable"

-- DROP TABLE DataTable;

CREATE TABLE DataTable
(
    Key integer NOT NULL,
    Entity text,
    Attribute text,
    System text,
    Value text,
    Group text,
    Begin bigint,
    End bigint,
    CONSTRAINT DataTable_pkey PRIMARY KEY (Key)
)

-- note: begin and end are marked as bigint. if you are using int, the table will last until about 2034, by which the timestamp verflows that int value