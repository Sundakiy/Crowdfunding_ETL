-- Drop campaign table if exists
DROP TABLE IF EXISTS campaign;

-- Create new campaign table
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric(10,2)   NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);
-- View the campaign table structure without the data
SELECT *
FROM campaign;

-- Insert data into the campaign table 

-- View the campaign table
SELECT *
FROM campaign;

-- Drop category table if exists
DROP TABLE IF EXISTS category;

-- Create new category table
CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category_id"
     )
);
-- View the category table structure without the data
SELECT *
FROM category;

-- Insert data into the category table 

-- View the category table
SELECT *
FROM category;


-- Drop subcategory table if exists
DROP TABLE IF EXISTS subcategory;

-- Create new subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Subategory" PRIMARY KEY (
        "subcategory_id"
     )
);
-- View the subcategory table structure without the data
SELECT *
FROM subcategory;

-- Insert data into the subcategory table 

-- View the subcategory table
SELECT *
FROM subcategory;

-- Drop contacts table if exists
DROP TABLE IF EXISTS contacts;

-- Create new contacts table
CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

-- View the contacts table structure without the data
SELECT *
FROM contacts;

-- Insert data into the contacts table 

-- View the contacts table
SELECT *
FROM contacts;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");


