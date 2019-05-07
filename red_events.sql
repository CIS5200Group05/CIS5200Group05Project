USE ereyno19;
SELECT time,user_domain, COUNT(user_domain) AS high_occurrence FROM redteam 
GROUP BY time,user_domain 
ORDER BY high_occurrence DESC;
