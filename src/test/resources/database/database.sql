CREATE TABLE seed(
    type VARCHAR(64) NOT NULL,
    value BIGINT NOT NULL,
    PRIMARY KEY (type)
);

CREATE TABLE minted(
    type VARCHAR(64) NOT NULL,
    value VARCHAR(64) NOT NULL,
    created TIMESTAMP WITH TIME ZONE NOT NULL,
    PRIMARY KEY (type, value),
    FOREIGN KEY (type) REFERENCES seed (type)
);
