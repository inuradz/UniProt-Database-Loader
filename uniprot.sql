
CREATE TABLE ENTRY (
    accession VARCHAR(25),
    dataset VARCHAR(50),
    created DATE,
    modified DATE,
    revision INTEGER,
    PRIMARY KEY (accession)
);

CREATE TABLE accessions (
    accession       VARCHAR(25),
    alternative     VARCHAR(25),
    FOREIGN KEY (accession) REFERENCES ENTRY (accession)
);

CREATE TABLE DBREFERENCES (
    accession   VARCHAR(25),
    type        VARCHAR(50),
    id          VARCHAR(50),
    FOREIGN KEY (accession) REFERENCES ENTRY (accession)
)
/*
-- TODO ACTUALLY FINISH THE ENCODING ALL THE ANNOTATION
CREATE TABLE names (
    accession   VARCHAR(25),
    name          VARCHAR(25),
    FOREIGN KEY (accession) REFERENCES entries (accession)
);

CREATE TABLE PROTEIN_RECOMMENDED_NAMES (
    accession   VARCHAR(25),
    fullname    TEXT,
    FOREIGN KEY (accession) REFERENCES entries (accession)
);

CREATE TABLE PROTEIN_RECOMMENDED_SHORT_NAMES (
    accession   VARCHAR(25),
    fullname    TEXT,
    shortname   TEXT,
    FOREIGN KEY (accession) REFERENCES entries (accession),
    FOREIGN KEY (fullname) REFERENCES PROTEIN_RECOMMENDED_NAMES(fullname),
);
*/



