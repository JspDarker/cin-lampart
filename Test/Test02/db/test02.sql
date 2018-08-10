create table Credit
(
id          INT(10) auto_increment
primary key,
name        VARCHAR(50)             not null,
credit_card VARCHAR(50)             not null,
ccv_code    VARCHAR(50)             not null,
user_id     VARCHAR(50) default '1' not null
);

create table booking
(
id           INT(10) auto_increment
primary key,
name         VARCHAR(225) not null,
check_in     DATE (10) not null,
check_out    DATE (10) not null,
total_person TINYINT(3)   not null,
total_room   TINYINT(3)   not null
);

create table category_room
(
id     INT(10) auto_increment
primary key,
name   VARCHAR(50) not null,
status TINYINT(3)  not null
);

create table hotel
(
id          INT(10) auto_increment
primary key,
name_hotel  VARCHAR(50) not null,
location_id INT(10)     not null,
category_id INT(10)     not null,
constraint FK_hotel_category
foreign key (category_id) references category_room (id)
on update cascade
);

create index category_id
on hotel (category_id);

create index location_id
on hotel (location_id);

create table location
(
id        INT(10) auto_increment
primary key,
country   VARCHAR(50) not null,
city      INT(10)     not null,
parent_id INT(10)     not null,
constraint FK_location_location
foreign key (parent_id) references location (id)
on update cascade
);

create index parent_id
on location (parent_id);

create table room
(
id           INT(10) auto_increment
primary key,
bed_quantity INT(10)     not null,
category_id  INT(10)     not null,
price        DECIMAL(10) not null
);

create table user
(
id       INT(10) auto_increment
primary key,
name     VARCHAR(50)          not null,
email    VARCHAR(50)          not null,
password VARCHAR(50)          not null,
phone    VARCHAR(50)          not null,
gender   TINYINT(3) default 1 not null,
birthday DATE (10) null,
address  VARCHAR(255)         null,
constraint email
unique (email)
);

create table `order`
(
id        INT(10) auto_increment
primary key,
user_id   INT(10)                                 not null,
hotel_id  INT(10)                                 not null,
create_at TIMESTAMP(19) default CURRENT_TIMESTAMP not null,
constraint FK_order_user
foreign key (user_id) references user (id)
on update cascade,
constraint FK_order_hotel
foreign key (hotel_id) references hotel (id)
on update cascade
);

create index hotel_id
on `order` (hotel_id);

create index user_id
on `order` (user_id);

create table person_guest
(
id       INT(10) auto_increment
primary key,
name     VARCHAR(50) null,
title    VARCHAR(50) null,
order_id INT(10)     not null,
constraint FK_person_guest_order
foreign key (order_id) references `order` (id)
on update cascade
);

create index FK_person_guest_order
on person_guest (order_id);

create table rate
(
id       INT(10) auto_increment
primary key,
hotel_id INT(10)    not null,
star     TINYINT(3) not null,
user_id  INT(10)    not null,
constraint FK__list_hotel
foreign key (hotel_id) references hotel (id)
on update cascade,
constraint FK_rate_user
foreign key (user_id) references user (id)
on update cascade
);

create table detail_hotel
(
id        INT(10) auto_increment
primary key,
hotel_id  INT(10) not null,
rate_id   INT(10) not null,
check_in  DATE (10) not null,
check_uot DATE (10) not null,
constraint FK_detail_hotel_hotel
foreign key (hotel_id) references hotel (id)
on update cascade,
constraint FK_detail_hotel_rate
foreign key (rate_id) references rate (id)
on update cascade
);

create index hotel_id
on detail_hotel (hotel_id);

create index rate_id
on detail_hotel (rate_id);

create index hotel_id
on rate (hotel_id);

create index user_id
on rate (user_id);

