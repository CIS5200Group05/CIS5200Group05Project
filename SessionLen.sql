use ereyno19;
select user_domain, proc_name, start_end, sum(time)
from proc
group by user_domain, proc_name, start_end;
