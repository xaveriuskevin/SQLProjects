SELECT 
spice_id , 
user_login_log.login_date
FROM user 
INNER JOIN user_login_log
ON user.id = user_login_log.user_id
WHERE user_login_log.login_date BETWEEN "2022-08-01 00:00:00" AND "2022-09-30 23:59:59"
ORDER BY user_login_log.login_date ASC