select
  *
from (
  select
    ps_partkey,
    sum(ps_supplycost * ps_availqty) as value_1
  from
    partsupp,
    supplier,
    nation
  where
    ps_suppkey = s_suppkey
    and s_nationkey = n_nationkey
    and n_name = 'GERMANY'
  group by
    ps_partkey
) as inner_query
where
  value_1 > (
    select
      sum(ps_supplycost * ps_availqty) * 0.0001
    from
      partsupp,
      supplier,
      nation
    where
      ps_suppkey = s_suppkey
      and s_nationkey = n_nationkey
      and n_name = 'GERMANY'
  )
order by
  value_1 desc;
