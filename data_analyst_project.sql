SELECT COUNT(*) 
FROM data_analyst_jobs;

SELECT * 
FROM data_analyst_jobs
LIMIT 10;

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';

SELECT * 
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;

SELECT *
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

SELECT location as state, ROUND(AVG(star_rating), 2) as avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY state
ORDER BY avg_rating DESC;

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location ='CA';

SELECT company, AVG(star_rating) as avg_rating
FROM data_analyst_jobs
GROUP BY company
HAVING sum(review_count) > '5000'
ORDER BY avg_rating desc;

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

SELECT * 
FROM data_analyst_jobs
WHERE (UPPER(title) NOT LIKE UPPER('%Analyst%') AND UPPER(title) NOT LIKE UPPER('%Analytics%'));


SELECT domain, COUNT(days_since_posting)
FROM data_analyst_jobs
WHERE skill like '%SQL%'
AND days_since_posting IS NOT NULL
AND days_since_posting > '21'
AND domain IS NOT NULL
GROUP BY domain
ORDER BY COUNT(days_since_posting) DESC;