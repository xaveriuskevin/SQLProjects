SELECT
user.spice_id,
user_point_log.note AS activity_id,
user_point_log.created_date AS completed_date
FROM user
INNER JOIN user_point_log
ON user.id = user_point_log.user_id
WHERE note like "%cod_m2_lvl%"
AND user_point_log.created_date BETWEEN "2022:10:24 00:00:00" AND "2022:10:27 23:59:59"
ORDER BY user.spice_id , activity_id