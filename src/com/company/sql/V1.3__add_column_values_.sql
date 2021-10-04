insert into shop (name, address, supplierID)
values ('DNS', 'Aznakayevo, Lenina, 25', 1), ('Citilink', 'Aznakayevo, Lenina, 45', 2);

alter table supplier add column age int check (age > 18);

update supplier set age = 27 where id = 1;
update supplier set age = 24 where id = 2;
update supplier set age = 19 where id = 3;
update supplier set age = 30 where id = 4;
