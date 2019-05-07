 CREATE EXTERNAL TABLE `auth`(                                   
   `time` int,                                                   
   `source_user_domain` string,                                  
   `dest_user_domain` string,                                    
   `source_computer` string,                                     
   `dest_computer` string,                                       
   `auth_type` string,                                           
   `logon_type` string,                                          
   `auth_orient` string,                                         
   `succ_fail` string)                                           
 ROW FORMAT DELIMITED                                            
   FIELDS TERMINATED BY ','                                      
 STORED AS INPUTFORMAT                                           
   'org.apache.hadoop.mapred.TextInputFormat'                    
 OUTPUTFORMAT                                                    
   'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
 LOCATION                                                        
   'hdfs://mycluster/user/ereyno19/auth';

