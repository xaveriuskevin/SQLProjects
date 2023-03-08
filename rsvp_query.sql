SELECT 
rsvp_city.spice_id,
rsvp_city.city,
rsvp_city.place,
master_place.mailing
FROM rsvp_city
INNER JOIN master_place
on rsvp_city.place = master_place.place_name
WHERE master_place.status = "Active"
AND rsvp_city.created_date BETWEEN "2022-10-19 00:00:00" AND "2022-10-27 12:00:00"