USE ereyno19;
SELECT source_port,COUNT(*) AS count FROM flows
GROUP BY source_port 
ORDER BY count DESC limit 10;
