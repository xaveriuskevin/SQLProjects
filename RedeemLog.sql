SELECT spice_id , user_redeem_log.name , user_redeem_log.redeem_date
FROM user
INNER JOIN user_redeem_log
ON user.id = user_redeem_log.user_id
WHERE user_redeem_log.redeem_date BETWEEN "2022-08-01 00:00:00" AND "2022-09-30 23:59:59"
ORDER BY user_redeem_log.redeem_date ASC