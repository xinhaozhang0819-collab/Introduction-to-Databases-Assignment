# Introduction-to-Databases-Assignment

## CRUD Operation
### 1. Add new university
```sql
INSERT INTO university_rankings
  (world_rank, institution, country, score, year)
VALUES
  (350, 'Duke Tech', 'USA', 60.5, 2014);
```
- Result: Successfully added new record for Duke Tech (USA) with world rank 350 and score 60.5 in year 2014. Verified with the following SQL query:
```sql
SELECT * FROM university_rankings WHERE institution='Duke Tech';
```

### 2. Count Japan universities in global top 200 in 2013
```sql
SELECT COUNT(*) AS jp_top200_2013
FROM university_rankings
WHERE country = 'Japan'
  AND year = 2013
  AND world_rank <= 200;
```
- Result: There are 6 universities from Japan ranked in the global top 200 in 2013.

### 3. Update University of Oxford’s 2014 score
```sql
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = 'University of Oxford'
  AND year = 2014;
```
- Result: The 2014 score for University of Oxford was updated from 98.71 to 99.91. Verified with the following SQL query:
```sql
SELECT institution, year, score
FROM university_rankings
WHERE institution = 'University of Oxford' AND year = 2014;
```

### 4. Remove 2015 records with score below 45
```sql
DELETE FROM university_rankings
WHERE "year" = 2015
  AND "score" < 45;
```
- Result: All 2015 universities with score < 45 were successfully deleted. Verified with the following SQL query (returned 0 remaining rows):
```sql
SELECT COUNT(*) AS remain_low_score_2015
FROM university_rankings
WHERE year = 2015 AND score < 45;
```

