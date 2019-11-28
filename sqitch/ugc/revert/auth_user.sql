-- Revert flipr:auth_user from pg

BEGIN;

DROP TABLE user_basic;

COMMIT;