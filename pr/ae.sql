DROP TABLE ae CASCADE;
CREATE TABLE ae (
    SUBJID integer,
    AEPT VARCHAR(255),
    AESOC VARCHAR(255),
    AESTDYI NUMERIC,
    AEENDYI NUMERIC,
    AESEVCD NUMERIC,
    AECONT CHAR(1)
);
COPY ae (SUBJID, AEPT, AESOC, AESTDYI, AEENDYI, AESEVCD, AECONT)
FROM '/tmp/adae.csv'
WITH (FORMAT CSV, HEADER);
CREATE index idx_ae ON ae(subjid);

DELETE FROM ae WHERE AESEVCD is null;
