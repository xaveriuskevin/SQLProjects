SELECT
mgm_leaderboard.spice_id AS parent,
user.spice_id AS child,
mgm_leaderboard.status_mgm,
user_address.address,
user.register_date,
user.point,
count(user_login_log.user_id)
FROM
user
INNER JOIN mgm_leaderboard ON mgm_leaderboard.spice_id_recruit = user.spice_id
INNER JOIN user_login_log ON user_login_log.user_id = user.id
INNER JOIN user_address ON user_address.user_id = user.id
where user.register_date between '2022-10-03 00:00:00' and '2022-11-30 23:59:59'
AND mgm_leaderboard.status_mgm = "Completed"
GROUP BY user.spice_id