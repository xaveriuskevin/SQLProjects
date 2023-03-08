select spice_id, action, user_point_log.created_date 
from user
inner join user_point_log
on user.id = user_point_log.user_id
inner join master_point
on user_point_log.point_id  = master_point.id
where user_point_log.created_date between "2022-01-01 00:00:00" AND "2022-08-31 23:59:59" 
AND point_get > 0 
group by spice_id, ACTION 
order by created_date ASC , spice_id ASC