CREATE TABLE users (
	id serial PRIMARY KEY,
	name varchar (30) not null,
	surname varchar (30),
	birthdate date ,
	login VARCHAR ( 50 ) UNIQUE NOT NULL,
	password VARCHAR ( 200 ),
	ab_me TEXT,
	image varchar (40) default 'no-image.jpg',
	address varchar (244),
	enabled boolean default true
);

create table user_roles (
  user_id int NOT NULL,
  roles varchar(20) NOT NULL,
  constraint role_fk
  FOREIGN KEY (user_id) REFERENCES users (id)
);

create table news (
    id serial PRIMARY KEY ,
    title varchar (200) not null,
    date date not null,
    descr TEXT not null,
    image varchar (255) default 'no-image.jpg',
    user_id int not null,
    constraint user_id_fk
    FOREIGN KEY (user_id) REFERENCES users (id)
);
