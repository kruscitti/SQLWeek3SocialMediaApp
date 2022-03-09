-- CREATE DATABASE if not exists SocialMediaApp;

-- USE SocialMediaApp;

-- DROP TABLE if exists user_data;
-- DROP TABLE if exists post;
-- DROP TABLE if exists comment;

CREATE TABLE user_data (
 username varchar(20) not null,
 email varchar(20) not null,
 password varchar(20) not null,
 primary key (username)
);

CREATE TABLE post (
post_id int not null auto_increment,
username varchar(20) not null,
post_content tinytext not null,
date_posted date not null,
primary key (post_id),
foreign key (username) references user_data(username)
);

CREATE TABLE comment (
comment_id int not null auto_increment,
post_id int not null,
username varchar(20) not null,
comment_content tinytext not null,
date_commented date not null,
primary key (comment_id),
foreign key (username) references user_data(username),
foreign key (post_id) references post(post_id)
);