SELECT
COUNT(spice_id), year(registration_date), month(registration_date)
FROM 
user 
WHERE user.registration_date between "2022-01-01 00:00:00" AND "2022-12-31 23:59:59"
group by month(registration_date)