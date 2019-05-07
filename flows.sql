CREATE EXTERNAL TABLE `flows`(
	`time` int,
	`duration` int,
	`source_comp` string,
	`source_port` string,
	`dest_comp` string,
	`dest_port` string,
	`protocol` string,
	`packet_count` int,
	`byte_count` int)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://mycluster/user/ereyno19/flows'
TBLPROPERTIES (
  'transient_lastDdlTime'='1556483832')

