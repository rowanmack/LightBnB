SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON property_id = properties.id
WHERE rating >= 4 AND city LIKE '%ancouv%'
GROUP BY properties.id
ORDER BY cost_per_night
LIMIT 10;