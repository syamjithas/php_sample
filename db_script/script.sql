CREATE SCHEMA 'hie_db' ;

CREATE TABLE 'aadhaar_dump' (
	'id' INT(11) NOT NULL AUTO_INCREMENT,
	'aadhaar_num' VARCHAR(45) NULL DEFAULT NULL,
	PRIMARY KEY ('id')
)

COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
AUTO_INCREMENT=3;

CREATE TABLE 'otp_history' (
	'id' INT(11) NOT NULL AUTO_INCREMENT,
	'aadhaar_num' VARCHAR(45) NOT NULL,
	'otp' VARCHAR(45) NOT NULL,
	'date_of_generation' DATETIME NOT NULL,
	PRIMARY KEY ('id')
)
COMMENT='This table is using for store generate and store dummy otp '
COLLATE='latin1_swedish_ci'
ENGINE=MyISAM
AUTO_INCREMENT=3;


INSERT INTO aadhaar_dump (aadhaar_num) VALUES (LPAD(FLOOR(RAND() * 999999999999.99), 12, '0'));
