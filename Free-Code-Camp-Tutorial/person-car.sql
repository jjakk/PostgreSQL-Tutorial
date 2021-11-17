CREATE TABLE car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);

CREATE TABLE person (
	person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uid UUID REFERENCES car(car_uid),
	UNIQUE(car_uid)
);

INSERT INTO person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES (uuid_generate_v4(), 'Eolande', 'Duferie', '', 'Male', '2021-11-04', 'France');
INSERT INTO person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES (uuid_generate_v4(), 'Page', 'Tipler', 'ptipler1@google.it', 'Female', '2021-09-18', 'Russia');
INSERT INTO person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES (uuid_generate_v4(), 'Fania', 'Yurkevich', '', 'Female', '2021-04-30', 'Moldova');

INSERT INTO car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'Buick', 'LeSabre', '50279.02');
INSERT INTO car (car_uid, make, model, price) VALUES (uuid_generate_v4(), 'Mercedes-Benz', 'W201', '94018.37');
