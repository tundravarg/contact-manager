DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
    id integer PRIMARY KEY AUTOINCREMENT,
    name text,
    primary_name text,
    secondary_name text,
    middle_name text
);

DROP TABLE IF EXISTS contact_values;
CREATE TABLE contact_values (
    id integer PRIMARY KEY AUTOINCREMENT,
    "type" text,
    subtype text,
    "value" text
);

DROP TABLE IF EXISTS contact_values_link;
CREATE TABLE contact_values_link (
    contact_id integer,
    value_id integer,
    FOREIGN KEY (contact_id) REFERENCES contacts (id),
    FOREIGN KEY (value_id) REFERENCES contact_values (id)
);
