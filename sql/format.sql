CREATE TABLE `format_definition` (
  `format_ID` INT NOT NULL,
  `name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`format_ID`),
  UNIQUE INDEX `format_ID_UNIQUE` (`format_ID`)
);
 
START TRANSACTION;
INSERT INTO format_definition (format_ID, name) VALUES(1, 'Brawl');
INSERT INTO format_definition (format_ID, name) VALUES(2, 'Commander');
INSERT INTO format_definition (format_ID, name) VALUES(3, 'Legacy');
INSERT INTO format_definition (format_ID, name) VALUES(4, 'Modern');
INSERT INTO format_definition (format_ID, name) VALUES(5, 'Standard');
INSERT INTO format_definition (format_ID, name) VALUES(6, 'Vintage');
COMMIT;  

CREATE TABLE `legality` (
  `oracle_ID` INT NOT NULL,
  `format_ID` INT NOT NULL,
  `is_legal` TINYINT NULL DEFAULT 0,
  UNIQUE INDEX `oracle_ID_UNIQUE` (`oracle_ID`) ,
  INDEX `format_ID_FK_idx` (`format_ID`),
  CONSTRAINT `format_ID_FK` FOREIGN KEY (`format_ID`) REFERENCES `magic`.`format_definition` (`format_ID`)
 );
