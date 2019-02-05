DROP TABLE IF EXISTS page_parse_status;
DROP TABLE IF EXISTS page;
CREATE TABLE `page` (
	`page_ID` INT NOT NULL,
	`name` VARCHAR(15) NOT NULL,
	`url` TEXT NOT NULL,	
	PRIMARY KEY (page_ID)	
);
INSERT INTO page (page_id, NAME, url) VALUES (1, 'Details_Oracle', 'http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=');
INSERT INTO page (page_ID, name, url) VALUES (2, 'Details_Oracle', 'http://gatherer.wizards.com/Pages/Card/Details.aspx?printed=false&multiverseid=');
INSERT INTO page (page_ID, name, url) VALUES (3, 'Legality', 'http://gatherer.wizards.com/Pages/Card/Printings.aspx?multiverseid=');
INSERT INTO page (page_ID, name, url) VALUES (4, 'Language', 'http://gatherer.wizards.com/Pages/Card/Languages.aspx?multiverseid=');
CREATE TABLE `page_parse_status` (
    `multiverse_ID` INT NOT NULL,
    `page_id` INT NOT NULL,
    `status` ENUM('NOT_PARSED', 'EMPTY', 'ERROR', 'SUCCESS') NOT NULL,
    PRIMARY KEY (`multiverse_ID`),
    UNIQUE INDEX `multiverse_ID_UNIQUE` (`multiverse_ID`),
    INDEX `status_idx` (`status`)
);
