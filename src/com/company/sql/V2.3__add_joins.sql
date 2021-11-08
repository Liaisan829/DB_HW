
select g.title, p.id from good g inner join goodProd p on g.goodprodid = p.id;

select distinct supplier.name, supplier.phoneNumber, shop.supplierid from shop left join supplier on shop.supplierID = supplier.id;


insert into goodprod (name, documentID, matProdID)
VALUES
    ('compB', 22, 2), ('compD', 24, 3);

insert into materialprod (name, documentId)
VALUES
    ('factE', 15);
select gP.name, mP.name from goodprod gP right join materialProd mP on mP.id = gP.matProdID;

select * from goodprod gP full join materialProd mP on gP.matProdID = mP.id;

select supplier.name, shop.name from supplier cross join shop;

select * from orders natural join shop;

insert into shop (name, address, supplierid)
values
    ('DNS', 'Kazan, Ershova, 78B', 3);

select s.name from supplier s
where exists(select 1
             from shop
             where shop.supplierID = s.id);

select s.name from supplier s
where not exists(select 1
                 from shop
                 where shop.supplierID = s.id);

create table employees(
                          id serial primary key,
                          name varchar(30) not null,
                          boss_id int references employees(id)
                              on delete cascade
);

insert into employees (name, boss_id)
VALUES
    ('Mike', null),
    ('Alice', 1),
    ('Tom', 1),
    ('Jim', 2),
    ('Dima', 4),
    ('Anton', 4);

alter table shop add column boss int references employees (id);

update shop set boss = 1 where address like '%Zakieva%';
--можно будет проверять что босс у него только null

select e.name employees, b.name Boss
from employees e
         join employees b on b.id = e.boss_id
order by Boss;



alter table goodProd add constraint nameCheck UNIQUE(name);

