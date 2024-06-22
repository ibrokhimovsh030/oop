create table if not exists users(
    id serial primary key not null,
    username varchar(255) not null,
    reg_date datetime not null
    foreign key (user_id) references users(id)
);

create table if not exists comment(
    id serial primary key not null,
    product_id integer not null,
    reg_date date not null,
    text text not null,
    user_id integer not null
    foreign key (user_id) references users(id)
    foreign key (product_id) references product(id)
    foreign key (user_id) references users(id)
);

create table if not exists cart(
    id serial primary key not null,
    user_id integer not null,
    total_quantity integer not null,
    total_price integer not null,
    add_date date not null
    foreign key (user_id) references users(id)
);

create table if not exists cart_detail(
    id serial primary key not null,
    product_id integer not null,
    quantity integer not null,
    totl_price integer not null,
    cart_id integer not null,
    add_date date not null
    foreign key (cart_id) references cart(id)
    foreign key (product_id) references product(id)
);

create table if not exists category(
    id serial primary key not null,
    name varchar(255) not null,
    products_count integer not null
    foreign key (category) references category(id)
);

create table product (
	id serial primary key not null,
	title VARCHAR(50) not null,
	quantity INT not null,
	price INT not null,
	color VARCHAR(50) not null,
	category INT not null
    foreign key (category) references category(id)
);
insert into product (id, title, quantity, price, color, category) values (1, 'Huck White Towels', 56, 575, 'Green', 4);
insert into product (id, title, quantity, price, color, category) values (2, 'Shrimp - 21/25, Peel And Deviened', 92, 541, 'Purple', 5);
insert into product (id, title, quantity, price, color, category) values (3, 'Tomato Paste', 27, 531, 'Pink', 7);
insert into product (id, title, quantity, price, color, category) values (4, 'Bread - Pumpernickel', 64, 450, 'Turquoise', 3);
insert into product (id, title, quantity, price, color, category) values (5, 'Dried Cherries', 17, 514, 'Fuscia', 5);
select * from products where title like 'A%';
select * from products where price > 100;
select * from products where price between 150 and 450 order by price;
select * from products order by qty asc;
select * from products  order by qty desc; 