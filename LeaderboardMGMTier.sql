SELECT
mgm_leaderboard.spice_id AS parent,
user.spice_id AS child,
mgm_leaderboard.status_mgm,
a.user_tier as latest_tier,
a.created_date as tier_up_date,
user.register_date,
e.created_date as silver_date,
d.created_date as gold_date,
f.created_date as red_date
FROM
user_tier
INNER JOIN user ON user_tier.user_id = user.id
LEFT JOIN  user_tier e on user.id = e.user_id and e.user_tier LIKE '%silver%'
LEFT JOIN  user_tier d on user.id = d.user_id and d.user_tier LIKE '%gold%'
LEFT JOIN  user_tier f on user.id = f.user_id and f.user_tier LIKE '%red%'
INNER JOIN mgm_leaderboard ON mgm_leaderboard.spice_id_recruit = user.spice_id
LEFT JOIN (select * from user_tier where id in (
select MAX(id) as id from user_tier 
group by user_tier.user_id
order by user_tier.created_date desc
)) AS a ON a.user_id= user.id
where a.created_date between '2022-10-03 00:00:00' and '2022-11-30 23:59:59'
AND mgm_leaderboard.status_mgm = "Completed"
GROUP BY
user.spice_id