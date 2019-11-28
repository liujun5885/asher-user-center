-- Deploy flipr:auth_user to pg

BEGIN;

CREATE TABLE user_basic (
    id BIGSERIAL PRIMARY KEY,
    region VARCHAR(8) NOT NULL,
    phonenumber BIGINT UNIQUE NOT NULL,
    username VARCHAR(128) NOT NULL,
    email  VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL,
    is_active boolean NOT NULL,
    created_at TIMESTAMP without time zone default (now() at time zone 'utc'),
    updated_at TIMESTAMP without time zone default (now() at time zone 'utc')
);

ALTER SEQUENCE user_basic_id_seq RESTART WITH 1000000;

COMMIT;
