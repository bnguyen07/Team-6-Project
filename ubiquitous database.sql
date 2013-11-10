/*Create table User*/
CREATE TABLE USER (		user_id		CHAR(30)	NOT NULL,
						password	CHAR(30)	NOT NULL,
						email		CHAR(30)	NOT NULL,
						user_type	INTEGER		NOT NULL,
						CONSTRAINT user_id_pk	PRIMARY KEY(user_id));
/*Physician Login Info*/
INSERT INTO USER (user_id, password, email, user_type) VALUES ('harrisT','123456','harris@childcare.com','0');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('jenwhite','987654','jenifer@childcare.com','0');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('michelleO','77777','michelle@childcare.com','0');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('JohnC','66666','john@childcare.com','0');
/*Parents Login Info*/
INSERT INTO USER (user_id, password, email, user_type) VALUES ('baxter','12345','baxter@gmail.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('smith','98765','smith@gmail.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('white','141516','white@gmail.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('bond','010203','bond@yahoo.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('john','john123','john@hotmail.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('jackson','jackon9897','jackson123@yahoo.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('morganS','morgan1','morgan1@gmail.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('henderson','hender123','henderson@gmail.com','1');
INSERT INTO USER (user_id, password, email, user_type) VALUES ('lee','susanbrian','leebrian@gmail.com','1');

/*Create table Patient*/
CREATE TABLE PATIENT (	patient_id				CHAR(10) 		NOT NULL,
						first_name				CHAR(50)		NOT NULL,
						last_name				CHAR(50)		NOT NULL,
						middle_name				CHAR(50)				,
						birthdate				CHAR(12)		NOT NULL,
						gender					CHAR(1)			NOT NULL,
						mothers_name			CHAR(50)		NOT NULL,
						mothers_maiden_name		CHAR(50)		NOT NULL,
						fathers_name			CHAR(50)		NOT NULL,
						POB_street_number 		CHAR(50)		NOT NULL,
						POB_street_name			CHAR(50)		NOT NULL,
						POB_city				CHAR(50)		NOT NULL,
						POB_state				CHAR(50)				,
						POB_zipcode				CHAR(5)					,
						POB_country				CHAR(50)		NOT NULL,
						current_street_number	CHAR(50)				,
						current_street_name		CHAR(50)				,
						current_city			CHAR(50)				,
						current_state			CHAR(50)				,
						current_zipcode			CHAR(5)					,
						current_country			CHAR(50)				,
						user_id 				CHAR(30)		NOT NULL,	
						CONSTRAINT patient_id_pk PRIMARY KEY(patient_id),
						CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES USER (user_id));		


INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('001A001', 'Tony','Baxter', 'A', '1990-01-01', 'M', 'Susan', 'Lewis', 'Bob', '7600', 'Beechnut St', 'Houston', 'Texas', '77074', 'USA', '1000', 'Cambridge Street', 'Houston', 'Texas', '77054', 'USA', 'baxter');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('001ABC5', 'Chris','Smith', 'T', '1990-02-01', 'M', 'Mary', 'Young','Robert', '1401', 'St Joseph Pkwy', 'Houston', 'Texas', '77002', 'USA', '1234', 'Plum Creek Drive Dr', 'Houston', 'Texas', '77012', 'USA', 'smith');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('001C123', 'Susan','White', 'T', '1990-03-02', 'F', 'Lisa', 'Hill', 'Tom', '6720', 'Bertner Ave', 'Houston', 'Texas', '77030', 'USA', '2013', 'Spring Music Street', 'Houston', 'Texas', '77035', 'USA', 'white');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('084AA11', 'James','Bond', '', '1990-05-02', 'M', 'Nancy', 'Ritzer', 'Chris', '12141', 'Richmond Ave', 'Houston', 'Texas', '77082', 'USA', '13111', 'Holly Hall', 'Houston', 'Texas', '77015', 'USA', 'bond');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('084BBCC', 'William','John', '', '1991-05-02', 'M', 'Helen', 'Hilton', 'Paul', '2450', 'Holcombe Blvd # 1', 'Texas', 'Houston', '77021', 'USA', '10328', 'Almeda', 'Texas', 'Houston', '77025', 'USA', 'john');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('001111A', 'Daniel','Jackson', '', '1992-03-05', 'M', 'Moore', 'Berry', 'Haris', '7600', 'Fannin St', 'Houston', 'Texas', '77054', 'USA', '13112', 'Spring Creek', 'Houston', 'Texas', '77015', 'USA', 'jackson');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('0010123', 'Kate','Morgan', '', '1991-10-22', 'F', 'Sharon', 'Alexander', 'Thomas', '7401', 'S Main St', 'Houston', 'Texas', '77030', 'USA', '2014', 'Old Spanish Trail', 'Houston', 'Texas', '77054', 'USA', 'morganS');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('0011234', 'Carol', 'Henderson', '', '1994-05-02', 'F', 'Ruth', 'Giacomo', 'Jerry', '8200', 'Walnut Hill Ln', 'Dallas', 'Texas', '75231', 'USA', '14111', 'Bering Dr', 'Houston', 'Texas', '77057', 'USA', 'henderson');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('0019999', 'Jeff', 'Henderson', '', '1994-05-02', 'M', 'Ruth', 'Giacomo', 'Jerry', '8200', 'Walnut Hill Ln', 'Dallas', 'Texas', '75231', 'USA', '14111', 'Bering Dr', 'Houston', 'Texas', '77057', 'USA', 'henderson');

INSERT INTO PATIENT (patient_id, first_name, last_name, middle_name, birthdate, gender, mothers_name, mothers_maiden_name, fathers_name, POB_street_number, POB_street_name, POB_city, POB_state, POB_zipcode, POB_country, current_street_number, current_street_name, current_city, current_state,current_zipcode, current_country, user_id) VALUES ('0840123', 'Kim', 'Lee', '', '1993-12-12', 'F', 'Susan', 'Jolie', 'Biran', '7777', 'Forest Ln', 'Dallas', 'Texas', '75230', 'USA', '12522', 'Wortham Fall', 'Houston', 'Texas', '77065', 'USA', 'lee');

/*Create table Physician*/
CREATE TABLE PHYSICIAN	(	physician_id				CHAR(10)		NOT NULL,
							physician_first_name		CHAR(30)		NOT NULL,
							physician_last_name			CHAR(30)		NOT NULL,
							physician_middle_name		CHAR(2)					,
							clinic						CHAR(30)		NOT NULL,
							user_id 					CHAR(30)		NOT NULL,
							CONSTRAINT physician_id_pk PRIMARY KEY(physician_id));


INSERT INTO PHYSICIAN (physician_id, physician_first_name, physician_last_name, physician_middle_name, clinic, user_id) VALUES ('99999', 'Harris','Taylor', '', 'Children Hospital', 'harrisT');

INSERT INTO PHYSICIAN (physician_id, physician_first_name, physician_last_name, physician_middle_name, clinic, user_id ) VALUES ('88888', 'Jenifer','White', '', 'Psychiatry', 'jenwhite');

INSERT INTO PHYSICIAN (physician_id, physician_first_name, physician_last_name, physician_middle_name, clinic, user_id) VALUES ('77777', 'Michelle','Owens', '', 'Childcare Coop', 'michelleO');

INSERT INTO PHYSICIAN (physician_id, physician_first_name, physician_last_name, physician_middle_name, clinic, user_id) VALUES ('66666', 'John','Carlos', '', 'Private Clinic', 'JohnC');


/*Create table Vaccination*/
CREATE TABLE VACCINE (		vaccine_id			CHAR(20)	NOT NULL,
							vaccine_name		CHAR(80)	NOT NULL,
							CONSTRAINT vaccine_id_pk PRIMARY KEY(vaccine_id));

INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('HepB','Hepatitis B');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('BCG','Bacillus Calmette-Guerin');

INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('RV/RV1','Oral Rotavirus (1st dose))');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('RV/RV2','Oral Rotavirus (2nd dose))');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('RV/RV3','Oral Rotavirus (3rd dose))');

INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('OPV/OPV1','Oral Poliovirus (1st dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('OPV/OPV2','Oral Poliovirus (2nd dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('OPV/OPV3','Oral Poliovirus (3rd dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('OPV/OPV4','Oral Poliovirus (4th dose)');

INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('PENTA/PENTA1','Pentavalent Combination (1st dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('PENTA/PENTA2','Pentavalent Combination (2nd dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('PENTA/PENTA3','Pentavalent Combination (3rd dose)');

INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('PCV/PCV1', 'Pneumococcal Conjugate (1st dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('PCV/PCV2', 'Pneumococcal Conjugate (2nd dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('PCV/PCV3', 'Pneumococcal Conjugate (3rd dose)');

INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('MR/MR1','Measles and Rubella (1st dose)');
INSERT INTO VACCINE (vaccine_id, vaccine_name) VALUES ('MR/MR2','Measles and Rubella (2nd dose)');


/*Create table Immunization*/
CREATE TABLE VACCINATION (		vaccination_id		CHAR(10)		NOT NULL,
								patient_id			CHAR(10)		NOT NULL,
								vaccine_id			CHAR(20)		NOT NULL,
								physician_id		CHAR(10)		NOT NULL,	
								date_taken			DATE 			NOT NULL,
								return_date			DATE					,
								
								CONSTRAINT vaccination_id PRIMARY KEY(vaccination_id),
								CONSTRAINT patient_id_fk FOREIGN KEY (patient_id) REFERENCES PATIENT (patient_id),
								CONSTRAINT vaccine_id_fk FOREIGN KEY (vaccine_id) REFERENCES VACCINE (vaccine_id),
								CONSTRAINT physician_id_fk FOREIGN KEY (physician_id) REFERENCES PHYSICIAN (physician_id));
								
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('A0001', 'HepB','1990-01-01', '1990-02-10', '99999', '001A001');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('A0002', 'BCG','1990-02-05', '1990-04-05', '99999', '001A001');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('A0003', 'RV/RV1','1990-02-05', '1990-04-10', '99999', '001A001');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('B0001', 'HepB','1990-04-05', '1990-06-06', '99999', '001ABC5');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('B0002', 'PCV/PCV1','1990-06-06', '1990-08-07', '99999', '001ABC5');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('B0003', 'RV/RV1','1990-08-07', '1991-03-10', '99999', '001ABC5');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('C0001', 'BCG', '1990-05-02', '1990-07-15', '88888', '001C123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('C0002', 'HepB', '1990-07-15', '1990-09-15', '88888', '001C123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('C0003', 'PCV/PCV1', '1990-09-15', '1994-03-15', '88888', '001C123');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('D0001', 'OPV/OPV1', '1990-07-02', '1990-09-02', '88888', '084AA11');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('D0002', 'BCG', '1990-09-02', '1990-11-02', '88888', '084AA11');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('D0003', 'PENTA/PENTA1', '1990-11-02', '1991-08-03', '88888', '084AA11');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('E0001', 'HepB','1991-05-02', '1991-06-16', '66666', '084BBCC');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('E0002', 'PENTA/PENTA1','1991-05-02', '1991-06-16', '66666', '084BBCC');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('E0003', 'MR/MR1','1991-05-02', '1991-06-16', '66666', '084BBCC');
/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('F0001', 'BCG','1991-07-20', '1991-09-20', '88888', '001111A');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('F0002', 'PENTA/PENTA1','1991-09-20', '1991-11-20', '88888', '001111A');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('F0003', 'PCV/PCV1','1991-11-20', '1992-1-20', '88888', '001111A');
/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0001', 'PENTA/PENTA1','1992-10-22', '1995-10-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0002', 'PCV/PCV1','1995-10-22', '1995-12-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0003', 'OPV/OPV1','1991-10-22', '1991-11-20', '99999', '0010123');
/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('H0001', 'RV/RV1','1994-07-02', '1994-09-02', '77777', '0011234');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('H0002', 'MR/MR1','1994-07-02', '1994-09-02', '77777', '0011234');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('H0003', 'PENTA/PENTA1','1994-07-02', '1994-09-02', '77777', '0011234');
/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('I0001', 'RV/RV1','1994-07-02', '1994-09-02', '77777', '0019999');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('I0002', 'MR/MR1','1994-07-02', '1994-09-02', '77777', '0019999');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('I0003', 'PENTA/PENTA1','1994-07-02', '1994-09-02', '77777', '0019999');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('J0001', 'HepB','1993-12-12', '1994-01-12', '66666', '0840123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('J0002', 'BCG','1994-02-12', '1994-04-12', '66666', '0840123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('J0003', 'PCV/PCV1','1994-02-12', '1994-04-12', '66666', '0840123');

