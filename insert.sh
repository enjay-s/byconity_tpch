#!/bin/bash 

#hadoop dfs -put /data/jasong/tpch/data_tpch_1000/lineitem_aa /data_tpch_1000/data_tpch_1000/lineitem_aa.tbl
#hadoop dfs -put /data/jasong/tpch/data_tpch_1000/lineitem_ab /data_tpch_1000/data_tpch_1000/lineitem_ab.tbl
#hadoop dfs -put /data/jasong/tpch/data_tpch_1000/lineitem_ac /data_tpch_1000/data_tpch_1000/lineitem_ac.tbl
#hadoop dfs -put /data/jasong/tpch/data_tpch_1000/lineitem_ad /data_tpch_1000/data_tpch_1000/lineitem_ad.tbl
#hadoop dfs -put /data/jasong/tpch/data_tpch_1000/lineitem_ae /data_tpch_1000/data_tpch_1000/lineitem_ae.tbl
#hadoop dfs -put /data/jasong/tpch/data_tpch_1000/lineitem_af /data_tpch_1000/data_tpch_1000/lineitem_af.tbl

cat insert.sql | while read line
do
    echo "select hostName(); $line"
    clickhouse client -h k8s-node1 --port=32000 --enable_optimizer=1 --dialect_type='ANSI' --distributed_product_mode=allow --send_timeout=2147483647 --receive_timeout=2147483647 -mn --input_format_defaults_for_omitted_fields=1 --format_csv_delimiter='|' --input_format_parallel_parsing=1  --max_execution_time=3600 --exchange_timeout=3600000 --exchange_enable_multipath_reciever=0 --max_partitions_per_insert_block=2000 -q "$line"
done

benchmark.sh 1000
