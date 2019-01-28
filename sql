---------------------------------------------------------------------------------------
--| TBL_CARD_BUFFER | JSON represent of card data parsed from gatherer.wizards.com |
---------------------------------------------------------------------------------------
CREATE TABLE tbl_card_buffer (
    multiverse_id INT COMMENT 'multiverse id from gatherer.wizards,com' NOT NULL,
    json_data CLOB COMMENT 'card JSON string' NOT NULL,
    language: VARCHAR(50) NOT NULL,
    is_parsed BOOLEAN,
    error: CLOB
);
CREATE INDEX card_multiverse_id ON tbl_card_json_data (multiverse_id);
-------------------------------------------------------
--| TBL_EXPANSION_SET | table with expansion sets data |
--------------------------------------------------------
CREATE TABLE tbl_expansion_set (
    code            VARCHAR(5)      COMMENT 'Expansion set code'              NOT NULL,
    set_name        VARCHAR(30)     COMMENT 'Expansion set full name'         NOT NULL,
    card_quantiry   SMALLINT        COMMENT 'Card quantiryi in expansion set',
    release_date    DATE            COMMENT 'Date of release expansion set',
    block           VARCHAR(30)     COMMENT 'Expansion set block name'
);
CREATE INDEX set_code ON tbl_expansion_set (code);
CREATE INDEX set_name ON tbl_expansion_set (set_name);
-------------------------------------------------
--| TBL_LANGUAGE | table with list of languages |
------------------------------------------------- 
CREATE TABLE tbl_language (
    code        VARCHAR(5)  COMMENT 'Language code'         NOT NULL,
    description VARCHAR(30) COMMENT 'Full language name'    NOT NULL
);
CREATE INDEX lang_code ON tbl_language (code);
--------------------------------------------------------------------------
--| TBL_CARD | table with multiverse id and names in different languages |
--------------------------------------------------------------------------
CREATE TABLE tbl_card (
	id 			INT 			COMMENT 'Multiverse ID of magic card from gatherer.wizards.com' NOT NULL,
	card_name 	VARCHAR(200) 	COMMENT 'Card name in different languages' 						NOT NULL,
	lang_code 	VARCHAR(5) 		COMMENT 'Language code FK on tbl_language' 						NOT NULL,
	FOREIGN KEY (lang_code) REFERENCES tbl_language (code)
);
CREATE INDEX multiverse_id  ON tbl_card (id);
CREATE INDEX card_name ON tbl_card (card_name);
CREATE TRIGGER before_insert_card_language
    BEFORE INSERT ON tbl_card FOR EACH ROW
    BEGIN
        IF NEW.lang_code not in (SELECT code FROM tbl_language)
        THEN
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Cannot insert row with incorrect language code value';
        END IF;
    END;
-----------------------------------------------------------
--| TBL_LEGALITY | table with legality data for each card |
-----------------------------------------------------------
CREATE TABLE tbl_legality (
    card_id     INT             COMMENT 'Reference on table tbl_card' NOT NULL,
    standart    BOOLEAN,
    modern      BOOLEAN,
    commander   BOOLEAN,
    brawl       BOOLEAN,
    legacy      BOOLEAN,    
    FOREIGN KEY (card_id) REFERENCES tbl_card (id)
CREATE INDEX standart_meta ON tbl_legality (standart);
);
-----------------------------------------------------------
--| TBL_LAYOUT | table with legality data for each card |
-----------------------------------------------------------
CREATE TABLE tbl_legality (
    card_id     INT             COMMENT 'Reference on table tbl_card' NOT NULL,
    standart    BOOLEAN,
    modern      BOOLEAN,
    commander   BOOLEAN,
    brawl       BOOLEAN,
    legacy      BOOLEAN,    
    FOREIGN KEY (card_id) REFERENCES tbl_card (id)
CREATE INDEX standart_meta ON tbl_legality (standart);
);

-- Card details table
CREATE TABLE tbl_card_details (
	multiverse_id INT NOT NULL,
	mana VARCHAR(60) NOT NULL,							
	mana_cost INT NOT NULL,
	spell_type VARCHAR(15) NOT NULL,
	text CLOB,
	flavor CLOB,
	watermark VARCHAR(20),
	expansion VARCHAR(30) NOT NULL,
	FOREIGN KEY (multiverse_id) REFERENCE tbl_card(multiverse_id),
	FOREIGN KEY (expansion) REFERENCE tbl_expansion_set(expansion)
);



CREATE TABLE `gatherer`.`lang` (
  `code` VARCHAR(2) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


CREATE TABLE `gatherer`.`print_layout` (
  `layout_ID` INT NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`layout_ID`),
  UNIQUE INDEX `layout_ID_UNIQUE` (`layout_ID` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE);

CREATE TABLE `gatherer`.`exp_set` (
  `codes` VARCHAR(5) NOT NULL,
  `card_quanity` TINYINT(4) NULL DEFAULT NULL,
  `expansion_type` VARCHAR(20) NULL DEFAULT NULL,
  `release_date` DATE NULL DEFAULT NULL,
  `block` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`codes`),
  UNIQUE INDEX `codes_UNIQUE` (`codes` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


CREATE TABLE `gatherer`.`card_metainfo` (
  `card_ID` INT NOT NULL,
  `multiverse_id` INT NOT NULL,
  `name` VARCHAR(200) NOT NULL,
  `lang_code` VARCHAR(2) NOT NULL,
  `print_layout_id` INT NOT NULL,
  `expansion_code` VARCHAR(5) NULL,
  `number` VARCHAR(4) NOT NULL,
  PRIMARY KEY (`card_ID`),
  UNIQUE INDEX `card_id_UNIQUE` (`card_ID` ASC) VISIBLE,
  INDEX `language_idx` (`lang_code` ASC) VISIBLE,
  INDEX `layout_idx` (`print_layout_id` ASC) VISIBLE,
  INDEX `eex_idx` (`expansion_code` ASC) VISIBLE,
  CONSTRAINT `language`
    FOREIGN KEY (`lang_code`)
    REFERENCES `gatherer`.`lang` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `layout`
    FOREIGN KEY (`print_layout_id`)
    REFERENCES `gatherer`.`print_layout` (`layout_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `expansion`
    FOREIGN KEY (`expansion_code`)
    REFERENCES `gatherer`.`exp_set` (`codes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


