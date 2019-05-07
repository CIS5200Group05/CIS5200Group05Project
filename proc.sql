CREATE EXTERNAL TABLE `proc`(
	`time` int,
	`user_domain` string,
	`computer` string,
	`proc_name` string,
	`start_end` string)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://mycluster/user/ereyno19/proc'
TBLPROPERTIES (
  'transient_lastDdlTime'='1556483814')

