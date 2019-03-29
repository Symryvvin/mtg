CREATE TABLE `magic`.`lang_definition` (
  `code` VARCHAR(2) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE INDEX `code_UNIQUE` (`code` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE);
  
START TRANSACTION;
INSERT INTO lang_definition (code, name) VALUES ('en', 'English');
INSERT INTO lang_definition (code, name) VALUES ('ru', 'Russian');
INSERT INTO lang_definition (code, name) VALUES ('de', 'German');
INSERT INTO lang_definition (code, name) VALUES ('fr', 'French');
INSERT INTO lang_definition (code, name) VALUES ('it', 'Italian');
INSERT INTO lang_definition (code, name) VALUES ('es', 'Spanish');
INSERT INTO lang_definition (code, name) VALUES ('pt', 'Portuguese (Brazil)');
INSERT INTO lang_definition (code, name) VALUES ('ja', 'Japanese');
INSERT INTO lang_definition (code, name) VALUES ('ko', 'Korean');
INSERT INTO lang_definition (code, name) VALUES ('cs', 'Chinese Simplified');
INSERT INTO lang_definition (code, name) VALUES ('ct', 'Chinese Traditional');
COMMIT;
