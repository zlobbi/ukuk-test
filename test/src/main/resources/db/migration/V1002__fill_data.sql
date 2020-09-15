insert into users (name, login, password) values ('admin', 'admin', '$2a$10$7zUsHnbwiASdnEGyO31bweOZ0MqNSVJmy6rUahhSYqctojoIB01nu');
insert into users (name, login, password) values ('user', 'user', '$2a$10$7zUsHnbwiASdnEGyO31bweOZ0MqNSVJmy6rUahhSYqctojoIB01nu');

insert into user_roles (user_id, role) values (1, 'ADMIN');
insert into user_roles (user_id, role) values (2, 'USER');

insert into news (title, date, descr, image, user_id) values ('title1', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 1);
insert into news (title, date, descr, image, user_id) values ('title2', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title3', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title4', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title5', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title6', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title7', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title8', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title9', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title10', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title11', 'yesterday'::timestamp, 'some long description', 'no-image.jpg', 2);

insert into news (title, date, descr, image, user_id) values ('title1', 'today'::timestamp, 'some long description', 'no-image.jpg', 1);
insert into news (title, date, descr, image, user_id) values ('title2', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title3', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title4', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title5', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title6', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title7', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title8', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title9', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title10', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
insert into news (title, date, descr, image, user_id) values ('title11', 'today'::timestamp, 'some long description', 'no-image.jpg', 2);
