-- 
-- Converted tables from pg to sqlite
-- datetime fields are chars
--
DROP TABLE IF EXISTS auth_group;
CREATE TABLE auth_group (
    id INTEGER PRIMARY KEY NOT NULL,
    name varchar(80) NOT NULL
);

DROP TABLE IF EXISTS auth_group_permissions;
CREATE TABLE auth_group_permissions (
    id INTEGER PRIMARY KEY NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


DROP TABLE IF EXISTS auth_permission;
CREATE TABLE auth_permission (
    id INTEGER PRIMARY KEY NOT NULL,
    name varchar(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename varchar(100) NOT NULL
);


DROP TABLE IF EXISTS auth_user;
CREATE TABLE auth_user (
    id INTEGER PRIMARY KEY NOT NULL,
    password varchar(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username varchar(30) NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    email varchar(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);

DROP TABLE IF EXISTS auth_user_groups;
CREATE TABLE auth_user_groups (
    id INTEGER PRIMARY KEY NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


DROP TABLE IF EXISTS auth_user_user_permissions;
CREATE TABLE auth_user_user_permissions (
    id integer primary key NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);

DROP TABLE IF EXISTS coin_machine;
CREATE TABLE coin_machine (
    id integer primary key NOT NULL,
    name varchar(200) NOT NULL,
    product0_id integer,
    product1_id integer,
    product2_id integer,
    product3_id integer,
    product4_id integer,
    key varchar(200) NOT NULL
);

DROP TABLE IF EXISTS coin_product;
CREATE TABLE coin_product (
    id integer primary key NOT NULL,
    productname varchar(400) NOT NULL,
    price integer NOT NULL
);

DROP TABLE IF EXISTS coin_transaction;
CREATE TABLE coin_transaction (
    id integer primary key NOT NULL,
    description varchar(500) NOT NULL,
    member_id integer NOT NULL,
    machine_id integer,
    value integer NOT NULL,
    "time" timestamp with time zone NOT NULL
);

DROP TABLE IF EXISTS member_member;
CREATE TABLE member_member (
    id integer primary key NOT NULL,
    handle varchar(200) NOT NULL,
    address varchar(500) NOT NULL,
    picture varchar(100) NOT NULL,
    cellphone varchar(200) NOT NULL,
    member_since varchar(200) NOT NULL,
    last_modified varchar(200) NOT NULL,
    access_card varchar(200) NOT NULL,
    unix_username varchar(200) NOT NULL,
    unix_uid integer,
    authorized_keys text NOT NULL,
    hausmania_keynumber integer,
    hausmania_deposit boolean NOT NULL,
    nettlaug_member boolean NOT NULL,
    membership_expiry date,
    membertype varchar(200) NOT NULL,
    comment text NOT NULL,
    user_id integer NOT NULL,
    running_membership boolean NOT NULL,
    card_number varchar(30) NOT NULL,
    bankregex varchar(255) NOT NULL
);

DROP TABLE IF EXISTS member_physicalaccess;
CREATE TABLE member_physicalaccess (
    id integer primary key NOT NULL,
    cardname varchar(200) NOT NULL,
    contactinfo varchar(200) NOT NULL,
    enabled boolean NOT NULL,
    access_token varchar(200) NOT NULL,
    access_start varchar(200) NOT NULL,
    access_end varchar(200) NOT NULL,
    description text NOT NULL
);

DROP TABLE IF EXISTS spaceapi_roomstate;
CREATE TABLE spaceapi_roomstate (
    id integer primary key NOT NULL,
    roomname varchar(255) NOT NULL,
    is_open boolean NOT NULL,
    last_modified varchar(200) NOT NULL
);
