CREATE SCHEMA `hie_db` ;

CREATE TABLE `hie_db`.`otp_history` (
  `id` INT NOT NULL,
  `aadhaar_id` VARCHAR(45) NOT NULL,
  `otp` VARCHAR(45) NOT NULL,
  `date_of_generation` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
COMMENT = 'This table is using for store generate and store dummy otp ';

CREATE TABLE `hie_db`.`aadhaar_dump` (
  `id` INT NOT NULL,
  `aadhaar_num` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

