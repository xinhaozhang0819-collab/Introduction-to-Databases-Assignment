
SELECT * 
FROM university_rankings
LIMIT 10;


SELECT COUNT(*) AS total_universities
FROM university_rankings;


SELECT country, COUNT(*) AS num_universities
FROM university_rankings
GROUP BY country
ORDER BY num_universities DESC;


SELECT AVG(score) AS avg_score
FROM university_rankings;


SELECT institution, country, score
FROM university_rankings
ORDER BY score DESC
LIMIT 10;


SELECT year, COUNT(*) AS universities_this_year
FROM university_rankings
GROUP BY year
ORDER BY year;


SELECT year, 
       MAX(score) AS max_score, 
       MIN(score) AS min_score
FROM university_rankings
GROUP BY year
ORDER BY year;
