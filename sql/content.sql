CREATE TABLE `content_metainfo` (
  `multiverse_ID` int NOT NULL,
  `oracle_ID` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `lang_code` varchar(2) NOT NULL,
  PRIMARY KEY (`multiverse_ID`),
  UNIQUE KEY `multiverse_ID_UNIQUE` (`multiverse_ID`),
  CONSTRAINT `lang_code_FK` FOREIGN KEY (`lang_code`) REFERENCES `lang_definition` (`code`)
);
---------------------------------------------------------
CREATE TABLE `localized_content_data` (
  `multiverse_ID` INT NOT NULL,
  `data` JSON NOT NULL);

---------------------------------------------------------
CREATE TABLE `content_details` (
  `content_ID` INT NOT NULL AUTO_INCREMENT,
  `oracle_ID` INT NOT NULL,
  `oracle_name` VARCHAR(200) NOT NULL,
  `manacost` VARCHAR(50) NULL,
  `converted_mc` INT NULL,
  `text` TEXT(1000),
  `flavor_text` TEXT(1000),
  `watermark` VARCHAR(45),
  `artist` VARCHAR(100) NOT NULL,
  `expansion_code` VARCHAR(5) NOT NULL,
  `rarity` ENUM('COMMON', 'UNCOMMON', 'RARE', 'MYTHIC', 'SPECIAL') NOT NULL,
  `number` INT NOT NULL,
  PRIMARY KEY (`content_ID`),
  UNIQUE INDEX `content_ID_UNIQUE` (`content_ID`),
  INDEX `oracle_ID_IDX` (`oracle_ID`)
 );
--------------------------------------------------------- 
CREATE TABLE `content_stats` (
  `content_ID` INT NOT NULL,
  `type` ENUM('LOYALTY', 'POWER', 'TOUGHTESS'),
  `value` INT NULL,
  CONSTRAINT `content_ID_stats_FK` FOREIGN KEY (`content_ID`) REFERENCES `magic`.`content_details` (`content_ID`)
);
--------------------------------------------------------- 
CREATE TABLE `content_type` (
  `content_ID` INT NOT NULL,
  `type_ID` INT NOT NULL,
  INDEX `content_ID_FK_idx` (`content_ID` ASC) VISIBLE,
  INDEX `type_ID_FK_idx` (`type_ID` ASC) VISIBLE,
  CONSTRAINT `content_ID_types_FK` FOREIGN KEY (`content_ID`) REFERENCES `magic`.`content_details` (`content_ID`),
  CONSTRAINT `type_ID_FK` FOREIGN KEY (`type_ID`) REFERENCES `magic`.`type_definition` (`type_ID`)
);
--------------------------------------------------------- 
