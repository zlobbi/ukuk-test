CREATE TABLE users
(
    id        serial primary key,
    email     varchar(128) NOT NULL,
    password  varchar(128) NOT NULL,
    person_id INT          NOT NULL,
    enabled   boolean      NOT NULL DEFAULT true
);
