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

UPDATE aadhaar_dump SET aadhaar_num = LPAD(FLOOR(RAND() * 999999999999.99), 12, '0')
WHERE aadhaar_num ='124354454545' DECLARE i = LPAD(FLOOR(RAND() * 999999999999.99), 12, '0');
INSERT INTO aadhaar_dump (aadhaar_num) VALUES (i) SET @K = 0;
 lab1: REPEAT
INSERT INTO aadhaar_dump (aadhaar_num) VALUES ('12313123213'); SET @k = @k +1; UNTIL @K > 100 END REPEAT lab1;

CREATE PROCEDURE dorepeat(p1 INT) BEGIN SET @x = 0; REPEAT SET @x = @x + 1; UNTIL @x > p1 END REPEAT; END 
CALL dorepeat(1000)//

DELETE FROM aadhaar_dump WHERE aadhaar_num LIKE '0%'
