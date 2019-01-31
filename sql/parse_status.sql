DROP TABLE IF EXISTS parse_status;
DROP TABLE IF EXISTS page_parser;
CREATE TABLE parse_status (
    status_ID INT NOT NULL,
    status_value VARCHAR(10) NOT NULL,
    PRIMARY KEY(status_ID),
    UNIQUE INDEX status_ID_UNIQUE (status_ID),
    UNIQUE INDEX status_value_UNIQUE (status_value)
);
START TRANSACTION;
INSERT INTO parse_status VALUES(0, 'SUCCESS');
INSERT INTO parse_status VALUES(1, 'NOT_PARSED');
INSERT INTO parse_status VALUES(2, 'EMPTY');
INSERT INTO parse_status VALUES(3, 'ERROR');
COMMIT;

CREATE TABLE page_parser (
    multiverse_ID INT NOT NULL,
    details_status INT DEFAULT 1,
    language_status INT DEFAULT 1,
    legality_status INT DEFAULT 1,
    PRIMARY KEY( multiverse_ID),
    UNIQUE INDEX  multiverse_ID_UNIQUE ( multiverse_ID),
    FOREIGN KEY (details_status) REFERENCES parse_status (status_ID),
    FOREIGN KEY (language_status) REFERENCES parse_status (status_ID),
    FOREIGN KEY (legality_status) REFERENCES parse_status (status_ID)
);
