
set max_partitions_per_insert_block=10000;

INSERT INTO tpch1000.customer   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/customer.tbl';
INSERT INTO tpch1000.nation     FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/nation.tbl';
INSERT INTO tpch1000.region     FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/region.tbl';

INSERT INTO tpch1000.supplier   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/supplier.tbl';
INSERT INTO tpch1000.part       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/part.tbl';
INSERT INTO tpch1000.partsupp   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/partsupp.tbl';

INSERT INTO tpch1000.orders     FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/orders.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem.tbl';


INSERT INTO tpch1000.part       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/part.tbl';
/*INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem.tbl';
*/

INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_aa.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ab.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ac.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ad.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ae.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_af.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ag.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ah.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ai.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_aj.tbl';
INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ak.tbl';


