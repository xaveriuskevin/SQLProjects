SELECT 
user.spice_id,
a.user_tier AS latest_tier,
user.registration_date
FROM user
LEFT JOIN (select * from user_tier where id in (
select MAX(id) as id from user_tier 
group by user_tier.user_id
order by user_tier.created_date desc
)) AS a ON a.user_id= user.id
WHERE user.registration_date <= "2022-12-10 09:00:00"
ORDER BY spice_id ASC
