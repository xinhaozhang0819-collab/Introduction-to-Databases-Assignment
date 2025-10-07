--University Insert
INSERT INTO university_rankings
  (world_rank, institution, country, score, year)
VALUES
  (350, 'Duke Tech', 'USA', 60.5, 2014);

SELECT * FROM university_rankings
WHERE institution = 'Duke Tech' AND year = 2014;


--Japan Universities in Global Top 200 in 2013
SELECT COUNT(*) AS jp_top200_2013
FROM university_rankings
WHERE country = 'Japan'
  AND year = 2013
  AND world_rank <= 200;


--University of Oxford Score Update
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford'
  AND year = 2014;

SELECT institution, year, score
FROM university_rankings
WHERE institution = 'University of Oxford' AND year = 2014;


--Cleaning
DELETE FROM university_rankings
WHERE "year" = 2015
  AND "score" < 45;

SELECT COUNT(*) AS remain_low_score_2015
FROM university_rankings
WHERE year = 2015 AND score < 45;
