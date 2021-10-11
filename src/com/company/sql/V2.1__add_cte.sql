delete from good_order
where orderID = 4;

with delete_order (id) as(
    select* from orders
    where id = 4
)

delete from orders
where id in (select id from delete_order);


with closed_shop(address) as(
update shop set address = replace(address, 'Kazan, Zakieva, 1', 'Kazan, Zakieva, 31') where id = 1
    returning *
)

select * from closed_shop;