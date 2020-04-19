SELECT country_name
FROM countries c, cities ci, venues v, events e
WHERE c.country_code = ci.country_code
AND ci.postal_code = v.postal_code
AND v.venue_id = e.venue_id
AND e.title = 'Fight Club';
