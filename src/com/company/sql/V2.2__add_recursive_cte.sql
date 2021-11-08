with recursive l(good) as (
    select id from orders

    union all
    select goodid from orders
    inner join l on l.good = goodid

) select * from l;