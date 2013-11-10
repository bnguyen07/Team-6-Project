

/*Create table Patient */
CREATE TABLE PATIENT (	patient_id				CHAR(10) 		NOT NULL,
						first_name				CHAR(50)		NOT NULL,
						last_name				CHAR(50)		NOT NULL,
						middle_name				CHAR(50)				,
						birthdate				DATE					,
						gender					CHAR(1)					,
						mother_name				CHAR(50)				,
						mother_maiden_name		CHAR(50)		NOT NULL,
						father_name				CHAR(50)				,
						POB_street_number 		CHAR(50)				,
						POB_street_name			CHAR(50)				,
						POB_city				CHAR(50)				,
						POB_state				CHAR(50)				,
						POB_zipcode				CHAR(5)					,
						POB_country				CHAR(50)				,
						current_street_number	CHAR(50)				,
						current_street_name		CHAR(50)				,
						current_city			CHAR(50)				,
						current_state			CHAR(50)				,
						current_zipcode			CHAR(5)					,
						current_country			CHAR(50)				,	
						username				CHAR(10)				,
						password				CHAR(30)				,
						parent_email			CHAR(50)				,
						CONSTRAINT patient_id_pk PRIMARY KEY(patient_id));		


INSERT INTO PATIENT VALUES ('001A001', 'Tony','Baxter', 'A', '1990-01-01', 'M', 'Susan', 'Lewis', 'Bob', '7600', 'Beechnut St', 'Houston', 'Texas', '77074', 'USA', '1000', 'Cambridge Street', 'Houston', 'Texas', '77054', 'USA','baxter','12345','baxter@gmail.com');

INSERT INTO PATIENT VALUES ('001ABC5', 'Chris','Smith', 'T', '1990-02-01', 'M', 'Mary', 'Young','Robert', '1401', 'St Joseph Pkwy', 'Houston', 'Texas', '77002', 'USA', '1234', 'Plum Creek Drive Dr', 'Houston', 'Texas', '77012', 'USA', 'smith','98765','smith@gmail.com');

INSERT INTO PATIENT VALUES ('001C123', 'Susan','White', 'T', '1990-03-02', 'F', 'Lisa', 'Hill', 'Tom', '6720', 'Bertner Ave', 'Houston', 'Texas', '77030', 'USA', '2013', 'Spring Music Street', 'Houston', 'Texas', '77035', 'USA', 'white','141516','white@gmail.com');

INSERT INTO PATIENT VALUES ('084AA11', 'James','Bond', '', '1990-05-02', 'M', 'Nancy', 'Ritzer', 'Chris', '12141', 'Richmond Ave', 'Houston', 'Texas', '77082', 'USA', '13111', 'Holly Hall', 'Houston', 'Texas', '77015', 'USA', 'bond','010203','bond@yahoo.com');

INSERT INTO PATIENT VALUES ('084BBCC', 'William','John', '', '1991-05-02', 'M', 'Helen', 'Hilton', 'Paul', '2450', 'Holcombe Blvd # 1', 'Texas', 'Houston', '77021', 'USA', '10328', 'Almeda', 'Texas', 'Houston', '77025', 'USA', 'john','john123','john@hotmail.com');

INSERT INTO PATIENT VALUES ('001111A', 'Daniel','Jackson', '', '1992-03-05', 'M', 'Moore', 'Berry', 'Haris', '7600', 'Fannin St', 'Houston', 'Texas', '77054', 'USA', '13112', 'Spring Creek', 'Houston', 'Texas', '77015', 'USA', 'jackson','jackon9897','jackson123@yahoo.com');

INSERT INTO PATIENT VALUES ('0010123', 'Kate','Morgan', '', '2013-07-22', 'F', 'Sharon', 'Alexander', 'Thomas', '7401', 'S Main St', 'Houston', 'Texas', '77030', 'USA', '2014', 'Old Spanish Trail', 'Houston', 'Texas', '77054', 'USA', 'morganS', 'morgan1', 'morgan1@gmail.com');

INSERT INTO PATIENT VALUES ('0011234', 'Carol','Henderson', '', '1994-05-02', 'F', 'Ruth', 'Giacomo', 'Jerry', '8200', 'Walnut Hill Ln', 'Dallas', 'Texas', '75231', 'USA', '14111', 'Bering Dr', 'Houston', 'Texas', '77057', 'USA', 'henderson','hender123','henderson@gmail.com');

INSERT INTO PATIENT VALUES ('0019999', 'Jeff','Henderson', '', '1994-05-02', 'M', 'Ruth', 'Giacomo', 'Jerry', '8200', 'Walnut Hill Ln', 'Dallas', 'Texas', '75231', 'USA', '14111', 'Bering Dr', 'Houston', 'Texas', '77057', 'USA', 'henderson','hender123','henderson@gmail.com');

INSERT INTO PATIENT VALUES ('0840123', 'Kim','Lee', '', '1993-12-12', 'F', 'Susan', 'Jolie', 'Biran', '7777', 'Forest Ln', 'Dallas', 'Texas', '75230', 'USA', '12522', 'Wortham Fall', 'Houston', 'Texas', '77065', 'USA', 'lee','susanbrian','leebrian@gmail.com');






/*Create table Physician*/
CREATE TABLE PHYSICIAN	(	physician_id				CHAR(10)		NOT NULL,
							first_name					CHAR(50)		NOT NULL,
							last_name					CHAR(50)		NOT NULL,
							middle_name					CHAR(50)				,
							department					CHAR(50)				,
							username					CHAR(10)				,
							password					CHAR(30)				,
							email						CHAR(50)				,
							CONSTRAINT physician_id_pk PRIMARY KEY(physician_id));


INSERT INTO PHYSICIAN VALUES ('99999', 'Harris', 'Taylor', '', 'Psychiatry', 'harrisT', '123456', 'harris@childcare.com');

INSERT INTO PHYSICIAN VALUES ('88888', 'Jenifer', 'White', '', 'Psychiatry', 'jenwhite', '987654', 'jenifer@childcare.com');

INSERT INTO PHYSICIAN VALUES ('77777', 'Michelle', 'Owens', '', 'Psychiatry', 'michelleO', '77777', 'michelle@childcare.com');

INSERT INTO PHYSICIAN VALUES ('66666', 'John', 'Carlos', '', 'Psychiatry', 'JohnC', '66666', 'john@childcare.com');


/*Create table Vaccination*/
CREATE TABLE VACCINE (		vaccine_id			CHAR(10)	NOT NULL,
							vaccine_name		CHAR(50)	NOT NULL,
							CONSTRAINT vaccine_id_pk PRIMARY KEY(vaccine_id));

INSERT INTO VACCINE VALUES ('HepB','Hepatitis B');
INSERT INTO VACCINE VALUES ('RV-1','Rotavirus 2-does series');
INSERT INTO VACCINE VALUES ('RV-5','Rotavirus 3-does series');
INSERT INTO VACCINE VALUES ('DTaP','Diphtheria, tetanus, & acellular pertussis: < 7 yrs');
INSERT INTO VACCINE VALUES ('Tdap','Tetanus, diphtheria & acellular pertussis: > 7 yrs');
INSERT INTO VACCINE VALUES ('Hib','Haemophilus influenzae type B');
INSERT INTO VACCINE VALUES ('PCV13', 'Pneumococcal conjugate');
INSERT INTO VACCINE VALUES ('PPSV23','Pneumococcal polysaccharide');
INSERT INTO VACCINE VALUES ('IPV','Inactivated Poliovirus: < 18 yrs');
INSERT INTO VACCINE VALUES ('IIV','Inactivated Influenza Vaccine: Minimum age - 6 months');
INSERT INTO VACCINE VALUES ('LAIV', 'Attenuated Influenza Vaccine: 2 years for live');
INSERT INTO VACCINE VALUES ('MMR','Measles, mumps, rubella');
INSERT INTO VACCINE VALUES ('VAR','Varicella');
INSERT INTO VACCINE VALUES ('HepA', 'Hepatitis A');
INSERT INTO VACCINE VALUES ('HPV2','Human papillomavirus: Females only');
INSERT INTO VACCINE VALUES ('HPV4','Human papillomavirus: Males and Females');
INSERT INTO VACCINE VALUES ('Hib-MenCY','Meningococcal: > 6 weeks');
INSERT INTO VACCINE VALUES ('MCV4-D','Meningococcal: > 9 months');
INSERT INTO VACCINE VALUES ('MCV4-CRM', 'Meningococcal: > 2 yrs');



/*Create table Immunization*/
CREATE TABLE VACCINATION (		vaccination_id		CHAR(10)		NOT NULL,
								patient_id			CHAR(10)		NOT NULL,
								vaccine_id			CHAR(10)		NOT NULL,
								physician_id		CHAR(10)		NOT NULL,	
								date_taken			DATETIME		NOT NULL,
								return_date			DATE					,
								
								CONSTRAINT vaccination_id PRIMARY KEY(vaccination_id),
								CONSTRAINT patient_id_fk FOREIGN KEY (patient_id) REFERENCES PATIENT (patient_id),
								CONSTRAINT vaccine_id_fk FOREIGN KEY (vaccine_id) REFERENCES VACCINE (vaccine_id),
								CONSTRAINT physician_id_fk FOREIGN KEY (physician_id) REFERENCES PHYSICIAN (physician_id));
								
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('A0001', 'HepB','1990-01-01 12:30:00', '1990-02-10', '99999', '001A001');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('A0002', 'HepB','1990-02-05 9:30:00', '', '99999', '001A001');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('A0003', 'RV-1','1990-02-05 9:30:00', '1990-04-10', '99999', '001A001');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('B0001', 'PCV13','1990-04-05 14:30:00', '1990-06-06', '99999', '001ABC5');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('B0002', 'PCV13','1990-06-06 15:30:00', '1990-08-07', '99999', '001ABC5');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('B0003', 'PCV13','1990-08-07 16:30:00', '1991-03-10', '99999', '001ABC5');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('C0001', 'IPV', '1990-05-02 8:30:00', '1990-07-15', '88888', '001C123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('C0002', 'IPV', '1990-07-15 8:30:00', '1990-09-15', '88888', '001C123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('C0003', 'IPV', '1990-09-15 8:30:00', '1994-03-15', '88888', '001C123');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('D0001', 'DTaP', '1990-07-02 8:30:00', '1990-09-02', '88888', '084AA11');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('D0002', 'DTaP', '1990-09-02 8:30:00', '1990-11-02', '88888', '084AA11');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('D0003', 'DTaP', '1990-11-02 8:30:00', '1991-08-03', '88888', '084AA11');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('E0001', 'Hib','1991-05-02 7:30:00', '1991-06-16', '66666', '084BBCC');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('E0002', 'Hib','1991-05-02 7:30:00', '1991-06-16', '66666', '084BBCC');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('E0003', 'PCV13','1991-05-02 7:30:00', '1991-06-16', '66666', '084BBCC');
/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('F0001', 'RV-5','1991-07-20 7:40:00', '1991-09-20', '88888', '001111A');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('F0002', 'RV-5','1991-09-20 7:40:00', '1991-11-20', '88888', '001111A');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('F0003', 'RV-5','1991-11-20 7:40:00', '', '88888', '001111A');
/*16 WEEKS*/

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0001', 'HepB','2013-07-22 10:30:00', '2013-08-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0002', 'HepB','2013-08-22 10:30:00', '2014-01-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0003', 'RV-1','2013-09-22 10:30:00', '2013-11-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0004', 'DTaP','2013-09-22 10:30:00', '2013-11-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0005', 'Hib','2013-09-22 10:30:00', '2013-11-22', '99999', '0010123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('G0006', 'PCV13','2013-09-22 10:30:00', '2013-11-22', '99999', '0010123');




/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('H0001', 'RV-1','1994-07-02 9:00:00', '1994-09-02', '77777', '0011234');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('H0002', 'DTaP','1994-07-02 9:00:00', '1994-09-02', '77777', '0011234');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('H0003', 'Hib','1994-07-02 9:00:00', '1994-09-02', '77777', '0011234');
/*16 WEEKS*/
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('I0001', 'RV-1','1994-07-02 9:00:00', '1994-09-02', '77777', '0019999');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('I0002', 'DTaP','1994-07-02 9:00:00', '1994-09-02', '77777', '0019999');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('I0003', 'Hib','1994-07-02 9:00:00', '1994-09-02', '77777', '0019999');

INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('J0001', 'HepB','1993-12-12 15:10:00', '1994-01-12', '66666', '0840123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('J0002', 'RV-5','1994-02-12 15:10:00', '1994-04-12', '66666', '0840123');
INSERT INTO VACCINATION (vaccination_id, vaccine_id, date_taken, return_date, physician_id, patient_id) VALUES ('J0003', 'PCV13','1994-02-12 15:10:00', '1994-04-12', '66666', '0840123');



