--
-- Legal Notice
-
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
DROP
DATABASE IF EXISTS tpch1000;
CREATE
DATABASE tpch1000;
USE
tpch1000;

set max_partitions_per_insert_block = 1000;

CREATE TABLE customer
(
    c_custkey    BIGINT,
    c_name       Nullable(String),
    c_address    Nullable(String),
    c_nationkey  BIGINT,
    c_phone      Nullable(String),
    c_acctbal    DECIMAL(12, 2),
    c_mktsegment Nullable(String),
    c_comment    Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (c_custkey)
CLUSTER BY c_custkey INTO 128 Buckets
SETTINGS enable_nullable_sorting_key=1;


CREATE TABLE lineitem
(
    l_orderkey      BIGINT,
    l_partkey       INT,
    l_suppkey       INT,
    l_linenumber    INT,
    l_quantity      DECIMAL(12, 2),
    l_extendedprice DECIMAL(12, 2),
    l_discount      DECIMAL(12, 2),
    l_tax           DECIMAL(12, 2),
    l_returnflag    Nullable(String),
    l_linestatus    Nullable(String),
    l_shipdate      DATE,
    l_commitdate    DATE,
    l_receiptdate   DATE,
    l_shipinstruct  Nullable(String),
    l_shipmode      Nullable(String),
    l_comment       Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (`l_shipdate`, `l_orderkey`)
CLUSTER BY l_orderkey INTO 128 Buckets
SETTINGS enable_nullable_sorting_key=1;

CREATE TABLE nation
(
    n_nationkey BIGINT,
    n_name      Nullable(String),
    n_regionkey BIGINT,
    n_comment   Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (n_nationkey)
SETTINGS enable_nullable_sorting_key=1;


CREATE TABLE orders
(
    o_orderkey      BIGINT,
    o_custkey       BIGINT,
    o_orderstatus   Nullable(String),
    o_totalprice    DECIMAL(12, 2),
    o_orderdate     DATE,
    o_orderpriority Nullable(String),
    o_clerk         Nullable(String),
    o_shippriority  INT,
    o_comment       Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (`o_orderkey`, `o_orderdate`)
CLUSTER BY o_orderkey INTO 128 Buckets
SETTINGS enable_nullable_sorting_key=1;


CREATE TABLE part
(
    p_partkey     BIGINT,
    p_name        Nullable(String),
    p_mfgr        Nullable(String),
    p_brand       Nullable(String),
    p_type        Nullable(String),
    p_size        INT,
    p_container   Nullable(String),
    p_retailprice DECIMAL(12, 2),
    p_comment     Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (p_partkey)
CLUSTER BY p_partkey INTO 128 Buckets
SETTINGS enable_nullable_sorting_key=1;


CREATE TABLE partsupp
(
    ps_partkey    BIGINT,
    ps_suppkey    BIGINT,
    ps_availqty   BIGINT,
    ps_supplycost DECIMAL(12, 2),
    ps_comment    Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (ps_partkey)
CLUSTER BY ps_partkey INTO 128 Buckets
SETTINGS enable_nullable_sorting_key=1;

CREATE TABLE region
(
    r_regionkey BIGINT,
    r_name      Nullable(String),
    r_comment   Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (r_regionkey)
SETTINGS enable_nullable_sorting_key=1;

CREATE TABLE supplier
(
    s_suppkey   BIGINT,
    s_name      Nullable(String),
    s_address   Nullable(String),
    s_nationkey BIGINT,
    s_phone     Nullable(String),
    s_acctbal   DECIMAL(12, 2),
    s_comment   Nullable(String)
)
ENGINE = CnchMergeTree
ORDER BY (s_suppkey)
CLUSTER BY s_suppkey INTO 128 Buckets
SETTINGS enable_nullable_sorting_key=1;
