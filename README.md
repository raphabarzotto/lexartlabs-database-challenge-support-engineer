# lexartlabs-database-challenge-support-engineer
The challenge answer can be seen in the image below:

![result](/images/result.png)

To get to this answer, I coded in SQL like this:

```SQL
INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'Africa'
		FROM world.country
		WHERE Continent = 'Africa';
```

- Full query can be found in `code.sql`
- To add the `AverageLifeExpectancy` table to the `world` database, run the query found in `world_averagelifeexpectancy.sql`