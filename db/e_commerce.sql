drop table users;
drop table products;
drop table orders;

create table users (
name varchar(100),
  email varchar(200),
  user_id serial primary key
);

create table products (
name varchar(50),
  price numeric,
  product_id serial primary key
);

create table orders (
order_id serial primary key,
  amount_ordered numeric,
  product_id int references products(product_id),
  user_id int references users(user_id)
);

insert into users 
(
  name,
  email
) 
values(
  ('John Smith',
  'Jsmithy@beepbop.org'),
  ('Cole Fin',
  'FINSSS@finny.com'),
  ('Eric Sellors',
  'esellor29@hotmail.com')
);

insert into products
(
  name,
  price
)
values(
  ('Sabre 3 150',
  2300.00),
  ('Vector Container',
   2900.00),
  ('Cypress AAD',
   1200.00)
);


insert into orders 
(
  amount_ordered,
  product_id,
  user_id
) 
values(
  (1, 2, 3), (3, 3, 2), (2, 3, 1)
);

select * from products p
join orders o on o.product_id = p.product_id;

select * from orders;

select sum(p.price * o.amount_ordered) from products p
join orders o on o.product_id = p.product_id
where order_id = 2;

select * from orders o 
join users u on u.user_id = o.user_id;

select count(o.order_id) from orders o
join users u on u.user_id = o.user_id
where u.user_id = 1;