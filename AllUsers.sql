SELECT 
user.spice_id,
a.user_tier AS latest_tier,
master_city.city_name
FROM user_address
INNER JOIN user ON user.id = user_address.user_id
INNER JOIN master_city ON master_city.id = user_address.city_id
LEFT JOIN (select * from user_tier where id in (
select MAX(id) as id from user_tier 
group by user_tier.user_id
order by user_tier.created_date desc
)) AS a ON a.user_id= user.id
ORDER BY spice_id asc