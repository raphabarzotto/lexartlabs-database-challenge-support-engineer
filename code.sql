DROP TABLE IF EXISTS `AverageLifeExpectancy`;
CREATE TABLE `AverageLifeExpectancy` (
  `LifeProm` decimal(3,1) DEFAULT NULL,
  `Region` char(26) NOT NULL DEFAULT '',
  PRIMARY KEY (`Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'Africa'
		FROM world.country
		WHERE Continent = 'Africa';
        
INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'Asia'
		FROM world.country
		WHERE Continent = 'Asia';
        
INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'Europe'
		FROM world.country
		WHERE Continent = 'Europe';
        
INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'North America'
		FROM world.country
		WHERE Continent = 'North America';
        
INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'Oceania'
		FROM world.country
		WHERE Continent = 'Oceania';
        
INSERT INTO `AverageLifeExpectancy` (LifeProm, Region)
	SELECT sum(LifeExpectancy * Population) / sum(Population), 'South America'
		FROM world.country
		WHERE Continent = 'South America';