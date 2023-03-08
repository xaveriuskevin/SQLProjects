SELECT user.spice_id , user_tier.user_tier AS latest_tier  
FROM user INNER JOIN user_tier ON
user_tier.user_id = user.id
ORDER BY spice_id ASC
-- WHERE register_date <= "2022-07-28 23:59:59"