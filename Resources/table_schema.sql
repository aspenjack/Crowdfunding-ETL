CREATE TABLE contacts (
	contact_id integer PRIMARY KEY,
	first_name varchar(100) NOT NULL,
	last_name varchar(100) NOT NULL,
	email varchar(100) NOT NULL
);


CREATE TABLE category (
	category_id varchar(100) PRIMARY KEY,
	category varchar(100) NOT NULL
);


CREATE TABLE subcategory (
	subcategory_id varchar(100) PRIMARY KEY,
	subcategory varchar(100) NOT NULL
);


CREATE TABLE campaign (
	cf_id integer PRIMARY KEY,
	contact_id integer NOT NULL,
	company_name varchar(100) NOT NULL,
	description varchar(100) NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar(100) NOT NULL,
	backers_count integer NOT NULL,
	country varchar(100) NOT NULL,
	currency varchar(100) NOT NULL,
	launch_date date NOT NULL,
	end_date date NOT NULL,
	category_id varchar(100) NOT NULL,
	subcategory_id varchar(100) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);