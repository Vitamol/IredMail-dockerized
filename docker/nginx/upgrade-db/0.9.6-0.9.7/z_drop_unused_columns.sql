USE vmail;

-- Remove non-mail-alias account
DELETE FROM alias WHERE islist <> 1;

-- Remove per-domain catch-all account
DELETE FROM alias WHERE address=domain;

-- Drop unused columns
ALTER TABLE alias DROP COLUMN goto;
ALTER TABLE alias DROP COLUMN moderators;
ALTER TABLE alias DROP COLUMN islist;
ALTER TABLE alias DROP COLUMN is_alias;
ALTER TABLE alias DROP COLUMN alias_to;

