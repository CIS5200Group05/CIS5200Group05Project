USE ereyno19;
SELECT source_user_domain,COUNT(*) as max_logins FROM auth   
GROUP BY source_user_domain  
ORDER BY max_logins  DESC limit 10; 
