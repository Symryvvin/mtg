/* DROP TABLES */
DROP TABLE IF EXISTS LANG;
/* LANG - table with list of languages */
CREATE TABLE lang (
    code VARCHAR(5) NOT NULL,
    lang_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (code),
    UNIQUE INDEX lang_name_UNIQUE (lang_name),
	UNIQUE INDEX code_UNIQUE (code)
);
START TRANSACTION;
INSERT INTO lang (code, lang_name) VALUES ('en', 'English');
INSERT INTO lang (code, lang_name) VALUES ('ru', 'Russian');
INSERT INTO lang (code, lang_name) VALUES ('de', 'German');
INSERT INTO lang (code, lang_name) VALUES ('fr', 'French');
INSERT INTO lang (code, lang_name) VALUES ('it', 'Italian');
INSERT INTO lang (code, lang_name) VALUES ('es', 'Spanish');
INSERT INTO lang (code, lang_name) VALUES ('pt', 'Portuguese (Brazil)');
INSERT INTO lang (code, lang_name) VALUES ('ja', 'Japanese');
INSERT INTO lang (code, lang_name) VALUES ('ko', 'Korean');
INSERT INTO lang (code, lang_name) VALUES ('cs', 'Chinese Simplified');
INSERT INTO lang (code, lang_name) VALUES ('ct', 'Chinese Traditional');
COMMIT;
