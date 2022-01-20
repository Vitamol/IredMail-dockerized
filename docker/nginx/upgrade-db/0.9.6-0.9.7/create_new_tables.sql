USE vmail;

CREATE TABLE IF NOT EXISTS alias_moderators (
    id BIGINT(20) UNSIGNED AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL DEFAULT '',
    moderator VARCHAR(255) NOT NULL DEFAULT '',
    domain VARCHAR(255) NOT NULL DEFAULT '',
    dest_domain VARCHAR(255) NOT NULL DEFAULT '',
    PRIMARY KEY (id),
    UNIQUE INDEX (address, moderator),
    INDEX (domain),
    INDEX (dest_domain)
) ENGINE=InnoDB;

-- Forwardings. it contains
--  - members of mail alias account
--  - per-account alias addresses
--  - per-user mail forwarding addresses
CREATE TABLE IF NOT EXISTS forwardings (
    id BIGINT(20) UNSIGNED AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL DEFAULT '',
    forwarding VARCHAR(255) NOT NULL DEFAULT '',
    domain VARCHAR(255) NOT NULL DEFAULT '',
    dest_domain VARCHAR(255) NOT NULL DEFAULT '',
    -- defines whether it's a standalone mail alias account. 0=no, 1=yes.
    is_list TINYINT(1) NOT NULL DEFAULT 0,
    -- defines whether it's a mail forwarding address of mail user. 0=no, 1=yes.
    is_forwarding TINYINT(1) NOT NULL DEFAULT 0,
    -- defines whether it's a per-account alias address. 0=no, 1=yes.
    is_alias TINYINT(1) NOT NULL DEFAULT 0,
    active TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (id),
    UNIQUE INDEX (address, forwarding),
    INDEX (domain),
    INDEX (dest_domain),
    INDEX (is_list),
    INDEX (is_alias)
) ENGINE=InnoDB;
