-- Verify flipr:auth_user on pg

BEGIN;

-- XXX Add verifications here.
SELECT * FROM user_basic;

ROLLBACK;