CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR (40) NOT NULL,
	last_name VARCHAR (40) NOT NULL,
	email VARCHAR (40) NOT NULL
);

CREATE TABLE category(
	category_id VARCHAR (40) PRIMARY KEY,
	category VARCHAR (40) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR (40) PRIMARY KEY,
	subcategory VARCHAR (40) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR (80) NOT NULL,
	description VARCHAR (255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(40) NOT NULL,
	backers_count INT NOT NULL,
	currency VARCHAR (40) NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (40) NOT NULL REFERENCES category(category_id),
	subcategory_id VARCHAR (40) NOT NULL REFERENCES subcategory(subcategory_id)
);
