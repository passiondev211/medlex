CREATE TABLE session (
    session_key	char(64) NOT NULL,
    session_data	bytea,
    session_expiry	timestamp NOT NULL,
    CONSTRAINT session_key PRIMARY KEY(session_key)
);