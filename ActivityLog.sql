select spice_id, `action`, user_point_log.created_date 
from user
inner join user_point_log
on user.id = user_point_log.user_id
inner join master_point
on user_point_log.point_id  = master_point.id
where user_point_log.created_date between "2022-08-01 00:00:00" AND "2022-09-30 23:59:59"
AND point_get > 0
AND point_id NOT IN (2,7,8,11)
order by created_date asc