CREATE EXTERNAL TABLE `redteam`(
	`time` int,
	`user_domain` string,
	`source_comp` string,
	`dest_computer` string)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://mycluster/user/ereyno19/redteam'

