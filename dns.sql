CREATE EXTERNAL TABLE `dns`(
	`time` int,
	`source_comp` string,
	`comp_resolved` string)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://mycluster/user/ereyno19/dns';

