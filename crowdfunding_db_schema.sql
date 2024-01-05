DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

CREATE TABLE category(
	category_id VARCHAR(30) PRIMARY KEY,
	category VARCHAR(30)	
);
SELECT * FROM category;

CREATE TABLE subcategory(
	subcategory_id VARCHAR(30) PRIMARY KEY,
	subcategory VARCHAR (30)
);
SELECT * FROM subcategory;

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(70)
);
SELECT * FROM contacts

CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(50),
	description VARCHAR(70),
	goal VARCHAR(30),
	pledged VARCHAR(30),
	outcome VARCHAR(30),
	backers_count INT,
	country VARCHAR(10),
	currency VARCHAR(10),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(30),
	subcategory_id VARCHAR(30),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);
SELECT * FROM campaign





