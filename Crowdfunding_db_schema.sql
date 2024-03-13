CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
	campaign_description VARCHAR(100) NOT NULL,
    goal NUMERIC(10,2) NOT NULL,
    pledge NUMERIC(10,2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	staff_pick VARCHAR(5) NOT NULL,
	spotlight VARCHAR(5) NOT NULL, 
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    PRIMARY KEY (cf_id)
);

CREATE TABLE Contact (
    contact_id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE category (
    category_id VARCHAR(10) NOT NULL,
    category VARCHAR(30) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory VARCHAR(30) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

COPY category FROM 'C:\Users\macks\Project 2 Crowdfunding\Starter_Files\Resources' DELIMITER ',' CSV HEADER;
COPY subcategory FROM 'C:\Users\macks\Project 2 Crowdfunding\Starter_Files\Resources' DELIMITER ',' CSV HEADER;



