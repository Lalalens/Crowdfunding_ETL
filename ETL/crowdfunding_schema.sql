DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;
CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	email VARCHAR (255) NOT NULL
);
CREATE TABLE category(
	category_id VARCHAR (255) PRIMARY KEY,
	category VARCHAR (255) NOT NULL
);
CREATE TABLE subcategory(
	subcategory_id VARCHAR (255) PRIMARY KEY,
	subcategory VARCHAR (255) NOT NULL
);
CREATE TABLE campaign(
	cf_id INT,
	contact_id INT NOT NULL REFERENCES contacts(contact_id),
	company_name VARCHAR (255) NOT NULL,
	description VARCHAR (255) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(255) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR (255) NOT NULL,
	currency VARCHAR (255) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR (255) NOT NULL REFERENCES category(category_id),
	subcategory_id VARCHAR (255) NOT NULL REFERENCES subcategory(subcategory_id)
);
SELECT * FROM campaign
SELECT * FROM subcategory
SELECT * FROM category
SELECT * FROM contacts