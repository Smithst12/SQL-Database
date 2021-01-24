DROP DATABASE testDB;
CREATE DATABASE testDB;
USE testDB;

#based off of the JSA form
CREATE TABLE jsa_form(
	ticket_num INT NOT NULL,
	proj_date VARCHAR(010),#01/01/2020 format
    company VARCHAR(50),
    representive VARCHAR(50),
    location VARCHAR(100),
    well_num INT,
    afe_num INT,
    weather_id INT,
    emergency_address VARCHAR(100),
    gps_location VARCHAR(50),
    hazard_id INT,
    major_steps TEXT,
    potiental_hazard TEXT,
    remove_hazard TEXT,
    user_id INT,
    signatures  VARCHAR(3),
    PRIMARY KEY (ticket_num),
    FOREIGN KEY (weather_id) REFERENCES weather(weather_id),
    FOREIGN KEY (hazard_id) REFERENCES hazard(hazard_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) 
);

CREATE TABLE daily_report_form(
  proj_date VARCHAR(8),
  customer VARCHAR(50),
  project VARCHAR(50),
  contract_num INT NOT NULL,
  user_id INT, #foremen/lead
  weather_delay_notes TEXT,
  weather_delay_start VARCHAR(10),#Time stamps, we can talk about what format we want to put that in.
  weather_delay_end VARCHAR(10),
  project_delay_notes TEXT,
  project_delay_start VARCHAR(10),
  project_delay_end VARCHAR(10),
  hours DOUBLE, #need to tie hours into each worker. Not sure what to do for that yet.
  job_num INT,
  job_description TEXT,
  PRIMARY KEY (contract_num),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE weather( #Puts DB into 1st Normal form 
	weather_id INT NOT NULL,
    weather_type VARCHAR(10),
    PRIMARY KEY (weather_id)
);

CREATE TABLE hazard( #Puts DB into 1st Normal form 
	hazard_id INT NOT NULL,
    harzard_type VARCHAR(50),
    PRIMARY KEY (hazard_id)
);

CREATE TABLE users(
	user_id INT NOT NULL,
    user_name VARCHAR(20),
    username VARCHAR(20),
    user_password VARCHAR(20),
    user_role VARCHAR(15),
    hours DOUBLE, #need to tie in with other forms. 
    PRIMARY KEY (user_id)
);