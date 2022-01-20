USE vmail;

ALTER TABLE admin \
    MODIFY passwordlastchange DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE alias \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE alias_domain \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE domain \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE domain_admins \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE mailbox \
    MODIFY lastlogindate DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY passwordlastchange DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE recipient_bcc_domain \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE recipient_bcc_user \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE sender_bcc_domain \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

ALTER TABLE sender_bcc_user \
    MODIFY created DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01', \
    MODIFY modified DATETIME NOT NULL DEFAULT '1970-01-01 01:01:01';

UPDATE admin SET passwordlastchange='1970-01-01 01:01:01' WHERE passwordlastchange < '1970-01-01 01:01:01';
UPDATE admin SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE admin SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE alias SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE alias SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE alias_domain SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE alias_domain SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE domain SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE domain SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE domain_admins SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE domain_admins SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE mailbox SET lastlogindate='1970-01-01 01:01:01' WHERE lastlogindate < '1970-01-01 01:01:01';
UPDATE mailbox SET passwordlastchange='1970-01-01 01:01:01' WHERE passwordlastchange < '1970-01-01 01:01:01';
UPDATE mailbox SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE mailbox SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE recipient_bcc_domain SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE recipient_bcc_domain SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE recipient_bcc_user SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE recipient_bcc_user SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE sender_bcc_domain SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE sender_bcc_domain SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';

UPDATE sender_bcc_user SET created='1970-01-01 01:01:01' WHERE created < '1970-01-01 01:01:01';
UPDATE sender_bcc_user SET modified='1970-01-01 01:01:01' WHERE modified < '1970-01-01 01:01:01';
