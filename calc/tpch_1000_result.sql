customer	8	150000000	5.450829465
lineitem	16	0	0.167841417
nation	4	25	0.173256657
orders	9	1500000000	12.611312514
part	9	200000000	6.004835321
partsupp	5	513981385	12.01820853
region	3	5	0.136755006
supplier	7	10000000	1.719126893
[12/31/2024 18:24:11.511] Run warm up sql...
[12/31/2024 18:24:11.514] --
-- Legal Notice
--
-- This document and associated source code (the "Work") is a part of a
-- benchmark specification maintained by the TPC.
--
-- The TPC reserves all right, title, and interest to the Work as provided
-- under U.S. and international laws, including without limitation all patent
-- and trademark rights therein.
--
-- No Warranty
--
-- 1.1 TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE INFORMATION
--     CONTAINED HEREIN IS PROVIDED "AS IS" AND WITH ALL FAULTS, AND THE
--     AUTHORS AND DEVELOPERS OF THE WORK HEREBY DISCLAIM ALL OTHER
--     WARRANTIES AND CONDITIONS, EITHER EXPRESS, IMPLIED OR STATUTORY,
--     INCLUDING, BUT NOT LIMITED TO, ANY (IF ANY) IMPLIED WARRANTIES,
--     DUTIES OR CONDITIONS OF MERCHANTABILITY, OF FITNESS FOR A PARTICULAR
--     PURPOSE, OF ACCURACY OR COMPLETENESS OF RESPONSES, OF RESULTS, OF
--     WORKMANLIKE EFFORT, OF LACK OF VIRUSES, AND OF LACK OF NEGLIGENCE.
--     ALSO, THERE IS NO WARRANTY OR CONDITION OF TITLE, QUIET ENJOYMENT,
--     QUIET POSSESSION, CORRESPONDENCE TO DESCRIPTION OR NON-INFRINGEMENT
--     WITH REGARD TO THE WORK.

▽
  1 select * from customer order by c_custkey limit 100;
-- 1.2 IN NO EVENT WILL ANY AUTHOR OR DEVELOPER OF THE WORK BE LIABLE TO
--     ANY OTHER PARTY FOR ANY DAMAGES, INCLUDING BUT NOT LIMITED TO THE
--     COST OF PROCURING SUBSTITUTE GOODS OR SERVICES, LOST PROFITS, LOSS
--     OF USE, LOSS OF DATA, OR ANY INCIDENTAL, CONSEQUENTIAL, DIRECT,
--     INDIRECT, OR SPECIAL DAMAGES WHETHER UNDER CONTRACT, TORT, WARRANTY,
--     OR OTHERWISE, ARISING IN ANY WAY OUT OF THIS OR ANY OTHER AGREEMENT
--     RELATING TO THE WORK, WHETHER OR NOT SUCH AUTHOR OR DEVELOPER HAD
--     ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.
--
-- Contributors:
-- Gradient Systems
--

select * from call_center order by cc_call_center_id desc limit 100;
select * from catalog_page order by cp_catalog_page_id desc limit 100;
select * from catalog_returns order by cr_returned_date_sk desc limit 100;

▽

select * from catalog_sales order by cs_sold_date_sk desc limit 100;
select * from customer_address order by ca_address_id desc limit 100;
select * from customer_demographics order by cd_demo_sk desc limit 100;
select * from customer order by c_customer_id desc limit 100;
select * from date_dim order by d_date_id desc limit 100;
select * from household_demographics order by hd_demo_sk desc limit 100;
select * from income_band order by ib_income_band_sk desc limit 100;
select * from inventory order by inv_item_sk desc limit 100;
select * from item order by i_item_id desc limit 100;
select * from promotion order by p_promo_id desc limit 100;
select * from reason order by r_reason_id desc limit 100;
select * from ship_mode order by sm_ship_mode_id desc limit 100;
select * from store_returns order by sr_returned_date_sk desc limit 100;
select * from store_sales order by ss_sold_date_sk desc limit 100;
select * from store order by s_store_id desc limit 100;
select * from time_dim order by t_time_id desc limit 100;
select * from warehouse order by w_warehouse_id desc limit 100;
select * from web_page order by wp_web_page_id desc limit 100;
select * from web_returns order by wr_returned_date_sk desc limit 100;
select * from web_sales order by ws_sold_date_sk desc limit 100;
select * from web_site order by web_site_id desc limit 100;
Received exception from server (version 21.8.7):
Code: 60. DB::Exception: host = k8s-master: Received from k8s-node5:32000. DB::Exception: Table tpch1000.call_center doesn't exist in tpch1000, database engine type: Cnch SQLSTATE: 42P01.
[root@k8s-master tpch]#
[root@k8s-master tpch]#
[root@k8s-master tpch]#
[root@k8s-master tpch]# grep -rn 'call_center' .
^C
[root@k8s-master tpch]# ls
benchmark.sh  config.sh  data_tpch_1000  dbgen  doc  EULA.txt  hell.txt  helper.sh  insert.sh  insert.sql  logs  nohup.out  README.md  ref_data  sql
[root@k8s-master tpch]# vim sql/
standard/   warmup.sql
[root@k8s-master tpch]# vim sql/warmup.sql
[root@k8s-master tpch]# ./benchmark.sh 1000
[12/31/2024 18:27:16.643] Make sure stats are created for tables, this will take some time...
[12/31/2024 18:27:16.900] Run warm up sql...
[12/31/2024 18:27:16.902] select * from customer order by c_custkey limit 100;
select * from lineitem order by l_orderkey limit 100;
select * from nation order by n_nationkey limit 100;
select * from orders order by o_orderkey limit 100;
select * from part order by p_partkey limit 100;
select * from partsupp order by ps_partkey limit 100;
select * from region order by r_regionkey limit 100;
select * from supplier order by s_suppkey limit 100;
[12/31/2024 18:27:18.226] Run benchmark sql from /disk/nvme0n1/jasong/tpch/sql/standard
sed: can't read /disk/nvme0n1/jasong/tpch/logs/curr.txt: No such file or directory
[root@k8s-master tpch]#
[root@k8s-master tpch]#
[root@k8s-master tpch]# vim /disk/nvme0n1/jasong/tpch/logs/curr.txt
[root@k8s-master tpch]# ./benchmark.sh 1000
[12/31/2024 18:27:30.012] Make sure stats are created for tables, this will take some time...
[12/31/2024 18:27:30.258] Run warm up sql...
[12/31/2024 18:27:30.260] select * from customer order by c_custkey limit 100;
select * from lineitem order by l_orderkey limit 100;
select * from nation order by n_nationkey limit 100;
select * from orders order by o_orderkey limit 100;
select * from part order by p_partkey limit 100;
select * from partsupp order by ps_partkey limit 100;
select * from region order by r_regionkey limit 100;
select * from supplier order by s_suppkey limit 100;
[12/31/2024 18:27:31.516] Run benchmark sql from /disk/nvme0n1/jasong/tpch/sql/standard


[12/31/2024 18:27:31.660] [Queryq01]duration: 52ms, status: 0
[12/31/2024 18:27:33.048] [Queryq02]duration: 1299ms, status: 0
[12/31/2024 18:27:33.321] [Queryq03]duration: 187ms, status: 0
[12/31/2024 18:27:33.531] [Queryq04]duration: 118ms, status: 0
[12/31/2024 18:27:33.851] [Queryq05]duration: 232ms, status: 0
[12/31/2024 18:27:33.976] [Queryq06]duration: 35ms, status: 0
[12/31/2024 18:28:28.957] [Queryq07]duration: 54893ms, status: 0
[12/31/2024 18:28:42.425] [Queryq08]duration: 13376ms, status: 0
[12/31/2024 18:29:42.790] [Queryq09]duration: 60277ms, status: 0
[12/31/2024 18:29:44.706] [Queryq10]duration: 1826ms, status: 0
[12/31/2024 18:29:46.255] [Queryq11]duration: 1460ms, status: 0
[12/31/2024 18:29:46.481] [Queryq12]duration: 136ms, status: 0
[12/31/2024 18:30:11.017] [Queryq13]duration: 24445ms, status: 0
[12/31/2024 18:30:11.588] [Queryq14]duration: 480ms, status: 0
[12/31/2024 18:30:11.891] [Queryq15]duration: 213ms, status: 0
[12/31/2024 18:30:15.297] [Queryq16]duration: 3307ms, status: 0
[12/31/2024 18:30:15.951] [Queryq17]duration: 560ms, status: 0
[12/31/2024 18:30:16.240] [Queryq18]duration: 197ms, status: 0
[12/31/2024 18:30:16.903] [Queryq19]duration: 567ms, status: 0
[12/31/2024 18:30:17.846] [Queryq20]duration: 853ms, status: 0
[12/31/2024 18:30:35.852] [Queryq21]duration: 17916ms, status: 0
[12/31/2024 18:30:41.525] [Queryq22]duration: 5573ms, status: 0


INSERT INTO tpch1000.lineitem FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ab.tbl'
[byconity-server-1] 2025.01.02 14:10:56.436922 [ 306 ] {9b858b0f-6a20-493f-967f-df5bb5e340c6} <Information> executeQuery: not write to cache
[byconity-vw-vw-write-3] 2025.01.02 14:10:56.445086 [ 235 ] {03150f3c-726c-466d-8ec1-089e689b4698} <Information> DatabaseCatalog: got table tpch1000.lineitem_455029098121003010_write from worker resource
[byconity-vw-vw-write-3] 2025.01.02 14:10:56.445788 [ 235 ] {03150f3c-726c-466d-8ec1-089e689b4698} <Information> DatabaseCatalog: got table tpch1000.lineitem_455029098121003010_write (7d5aca38-ce94-4520-afa6-f5646589319d) from worker resource
[byconity-vw-vw-write-3] 2025.01.02 14:10:56.449244 [ 235 ] {03150f3c-726c-466d-8ec1-089e689b4698} <Information> executeQuery: not write to cache
[byconity-vw-vw-write-3] 2025.01.02 14:10:58.116810 [ 267 ] {03150f3c-726c-466d-8ec1-089e689b4698} <Information> ElectionReader: Updated leader from {10.244.9.9 10.244.9.9  rpc/9000 tcp/9000 exc/9000 exs/9000} to {10.244.6.53 10.244.6.53  rpc/9000 tcp/9000 exc/9000 exs/9000}
↘ Progress: 921.26 million rows, 150.64 GB (511.23 thousand rows/s., 83.60 MB/s.)


[byconity-vw-vw-write-3] 2025.01.02 14:43:29.681103 [ 235 ] {03150f3c-726c-466d-8ec1-089e689b4698} <Information> executeQuery: Read 1000000000 rows, 152.29 GiB in 1953.194579378 sec., 511981 rows/sec., 79.84 MiB/sec.
[byconity-server-1] 2025.01.02 14:43:29.686735 [ 306 ] {9b858b0f-6a20-493f-967f-df5bb5e340c6} <Information> executeQuery: Read 1000000000 rows, 152.29 GiB in 1953.257579096 sec., 511965 rows/sec., 79.84 MiB/sec.
Ok.

0 rows in set. Elapsed: 1953.265 sec. Processed 1.00 billion rows, 163.52 GB (511.96 thousand rows/s., 83.72 MB/s.)

type:                                  QueryFinish
event_date:                            2025-01-02
event_time:                            2025-01-02 14:43:29
event_time_microseconds:               2025-01-02 14:43:29.686707
query_start_time:                      2025-01-02 14:10:56
query_start_time_microseconds:         2025-01-02 14:10:56.408822
query_duration_ms:                     1953257
read_rows:                             1000000000
read_bytes:                            163519654819
disk_cache_read_bytes:                 0
written_rows:                          0
written_bytes:                         0
result_rows:                           0
result_bytes:                          0
memory_usage:                          3161278
current_database:                      default
query:                                 INSERT INTO tpch1000.lineitem   FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpch_1000/data_tpch_1000/lineitem_ab.tbl';
normalized_query_hash:                 14553484063522182896
query_kind:                            Insert
databases:                             ['tpch1000']
tables:                                ['tpch1000.lineitem']
columns:                               []
projections:                           []
materialized_views:                    []
exception_code:                        0
exception:
stack_trace:
is_initial_query:                      1
user:                                  default
query_id:                              9b858b0f-6a20-493f-967f-df5bb5e340c6
address:                               ::ffff:10.244.5.0
port:                                  50057
initial_user:                          default
initial_query_id:                      9b858b0f-6a20-493f-967f-df5bb5e340c6
initial_address:                       ::ffff:10.244.5.0
initial_port:                          50057
initial_query_start_time:              2025-01-02 14:10:56
initial_query_start_time_microseconds: 2025-01-02 14:10:56.408822
interface:                             1
os_user:                               songenjie001
client_hostname:                       k8s-master
client_name:                           ByConity
client_revision:                       54451
client_version_major:                  21
client_version_minor:                  8
client_version_patch:                  7
http_method:                           0
http_user_agent:
http_referer:
forwarded_for:
quota_key:
revision:                              54453
log_comment:
thread_ids:                            [306,914]
max_io_thread_name:
max_io_thread_query_ms:                0
ProfileEvents:                         {'CnchTxnAllTransactionRecord':1,'CnchTxnCommitV2ElapsedMilliseconds':5,'CnchTxnCommitted':1,'CnchTxnFinishedTransactionRecord':1,'CnchTxnWriteTxnCreated':1,'CompressedReadBufferBlocks':2,'CompressedReadBufferBytes':20,'ContextLock':245,'CreateTransactionRecordSuccess':1,'GetAllMutationsStorageIdSuccess':3,'GetAllViewsOnSuccess':1,'GetDatabaseSuccess':2,'GetTableSuccess':2,'IOBufferAllocBytes':4194830,'IOBufferAllocs':6,'InsertQuery':1,'NetworkReceiveBytes':126807,'NetworkReceiveElapsedMicroseconds':1953211185,'NetworkSendBytes':128133,'NetworkSendElapsedMicroseconds':478061,'Query':1,'RWLockAcquiredReadLocks':2,'ReadCompressedBytes':72,'RealTimeMicroseconds':3906517684,'SelectedBytes':163519655880,'SelectedRows':1000000005,'SetTransactionRecordWithRequestsSuccess':1,'SoftPageFaults':940,'SystemTimeMicroseconds':1412223,'TSORequest':8,'TSORequestMicroseconds':917,'TryGetTableByUUIDSuccess':1,'TryGetTableSuccess':2,'UserTimeMicroseconds':589008}
MaxIOThreadProfileEvents:              {}
Settings:                              {'allow_extended_type_conversion':'1','cast_keep_nullable':'1','check_data_overflow':'0','data_type_default_nullable':'1','decimal_arithmetic_promote_storage':'1','decimal_division_use_extended_scale':'1','dialect_type':'ANSI','distributed_product_mode':'allow','enable_implicit_arg_type_convert':'0','enable_merge_scheduler':'0','enable_optimizer':'0','except_default_mode':'DISTINCT','exception_on_unsupported_mysql_syntax':'1','exchange_enable_multipath_reciever':'0','exchange_timeout_ms':'3600000','format_csv_delimiter':'|','handle_division_by_zero':'0','input_format_defaults_for_omitted_fields':'1','input_format_parallel_parsing':'1','intersect_default_mode':'DISTINCT','join_use_nulls':'1','load_balancing':'random','log_queries':'1','max_execution_time':'3600','max_partitions_per_insert_block':'2000','max_rows_to_schedule_merge':'500000000','parse_literal_as_decimal':'1','prefer_column_name_to_alias':'1','receive_timeout':'2147483647','send_logs_level':'information','send_timeout':'2147483647','slow_query_ms':'0','strict_rows_to_schedule_merge':'50000000','total_rows_to_schedule_merge':'0','union_default_mode':'DISTINCT'}
Graphviz:                              {}
used_aggregate_functions:              []
used_aggregate_function_combinators:   []
used_database_engines:                 []
used_data_type_families:               ['UInt32','DateTime','Int8','Date','String','Decimal','Int32','Nullable','UInt64','Int64']
used_dictionaries:                     []
used_formats:                          []
used_functions:                        []
used_storages:                         ['CnchMergeTree']
used_table_functions:                  []
partition_ids:                         []
segment_id:                            -1
segment_parallel:                      -1
segment_parallel_index:                -1
fallback_reason:
segment_profiles:                      []
virtual_warehouse:                     vw_write
worker_group:                          vw_write


┌─database─┬─name─────┬─total_rows─┐
│ tpch1000 │ customer │  150000000 │
│ tpch1000 │ lineitem │ 5999989709 │
│ tpch1000 │ nation   │         25 │
│ tpch1000 │ orders   │ 1500000000 │
│ tpch1000 │ part     │  200000000 │
│ tpch1000 │ partsupp │  513981385 │
│ tpch1000 │ region   │          5 │
│ tpch1000 │ supplier │   10000000 │
└──────────┴──────────┴────────────┘

qid	duration	status
q01	9749	0
q02	1217	0
q03	19882	0
q04	28313	0
q05	28976	0
q06	906	0
q07	9161	0
q08		
q09		
q10	25032	0
q11	1960	0
q12	4972	0
q13	28054	0
q14	3593	0
q15	1825	0
q16	3578	0
q17	48595	0
q18	48383	0
q19	19770	0
q20	14946	0
q21	49219	0
q22	5160	0