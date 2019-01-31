/* DROP TABLES */
DROP TABLE IF EXISTS LEGALITY;
DROP TABLE IF EXISTS GAME_FORMAT;
/* CREATE GAME_FORMAT - list of game formats */
CREATE TABLE game_format (
    format_ID INT NOT NULL,
    format_name VARCHAR(9),
    UNIQUE INDEX format_id_UNIQUE (format_ID), 
    UNIQUE INDEX format_name_UNIQUE (format_name));
/* INSERTS INTO GAME_FORMAT */
START TRANSACTION;
INSERT INTO game_format (format_ID, format_name) VALUES(1, 'Brawl');
INSERT INTO game_format (format_ID, format_name) VALUES(2, 'Commander');
INSERT INTO game_format (format_ID, format_name) VALUES(3, 'Legacy');
INSERT INTO game_format (format_ID, format_name) VALUES(4, 'Modern');
INSERT INTO game_format (format_ID, format_name) VALUES(5, 'Standard');
INSERT INTO game_format (format_ID, format_name) VALUES(6, 'Vintage');
COMMIT;              
/* CREATE LEGALITY - table with legality data for each card */
CREATE TABLE legality (
    multiverse_id INT NOT NULL,
    format_id INT NOT NULL,
    is_legal BOOLEAN,
    UNIQUE INDEX multiverse_id_UNIQUE (multiverse_id),
    FOREIGN KEY (format_id) REFERENCES game_format (format_ID));
