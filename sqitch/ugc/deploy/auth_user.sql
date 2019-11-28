-- Deploy flipr:auth_user to pg

BEGIN;

CREATE TABLE user_basic (
    id serial PRIMARY KEY,
    region VARCHAR(8) NOT NULL,
    phonenumber BIGINT UNIQUE NOT NULL,
    username character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(128) NOT NULL,
    is_active boolean NOT NULL,
    created_at TIMESTAMP without time zone default (now() at time zone 'utc'),
    updated_at TIMESTAMP without time zone default (now() at time zone 'utc')
);

COMMIT;