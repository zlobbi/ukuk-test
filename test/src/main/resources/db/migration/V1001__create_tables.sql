CREATE TABLE users (
	id serial PRIMARY KEY,
	name varchar (10) not null,
	surname varchar (20),
	birthdate date ,
	login VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 200 ),
	ab_me TEXT,
	address varchar (244),
	enabled boolean default true
);

create table user_roles (
  user_role_id SERIAL PRIMARY KEY,
  user_id int NOT NULL,
  role varchar(20) NOT NULL,
  UNIQUE (user_id,role),
  constraint fk_user
  FOREIGN KEY (user_id) REFERENCES users (id)
);

create table news (
    id serial PRIMARY KEY ,
    title varchar (200) not null,
    date date not null,
    descr TEXT not null,
    image varchar (40) not null,
    user_id int not null,
    constraint user_fk
    FOREIGN KEY (user_id) REFERENCES users (id)
);
