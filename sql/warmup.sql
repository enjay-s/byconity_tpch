select * from customer order by c_custkey limit 100;
select * from lineitem order by l_orderkey limit 100;
select * from nation   order by n_nationkey limit 100;
select * from orders   order by o_orderkey limit 100;
select * from part     order by p_partkey limit 100;
select * from partsupp order by ps_partkey limit 100;
select * from region   order by r_regionkey limit 100;
select * from supplier order by s_suppkey limit 100;


ALTER TABLE customer  MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE lineitem  MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE nation    MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE orders    MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE part      MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE partsupp  MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE region    MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
ALTER TABLE supplier  MODIFY SETTING parts_preload_level = 3,  enable_local_disk_cache = 1;
