SELECT 
user.spice_id,
COUNT(distinct date(user_login_log.login_date)) AS unique_login,
COUNT(user_login_log.login_date) AS total_login
FROM
user
INNER JOIN user_login_log ON
user_login_log.user_id = user.id
where
user_login_log.login_date between '2022-07-01 00:00:00' and '2022-07-30 23:59:59'
GROUP BY
user.spice_id
ORDER BY user.spice_id ASC