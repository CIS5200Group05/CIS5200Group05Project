USE ereyno19;
SELECT source_user_domain,COUNT(*) AS successful_logon FROM auth 
WHERE succ_fail!="Success"  
GROUP BY source_user_domain  
ORDER BY successful_logon;
