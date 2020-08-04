1.SELECT name, continent, population FROM world

2.SELECT name 
FROM world
WHERE population >= 200000000

3.SELECT name,gdp/population
FROM world
WHERE population>=200000000

4.SELECT name,population/1000000
FROM world
WHERE continent='south america'

5.SELECT name,population
FROM world
WHERE name IN ('France','Germany','Italy')

6.SELECT name
FROM world
WHERE name LIKE ('United%')

7.SELECT name,population,area
FROM world
WHERE population>250000000 OR area>3000000

8.SELECT name,population,area
FROM world
WHERE (population>250000000 AND area<=3000000)
                       OR
      (population<=250000000 AND area>3000000)
      
9.SELECT name,ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent='south america' 

10.SELECT name,ROUND(gdp/population,-3)
FROM world 
WHERE gdp>=1000000000000

12.SELECT name,capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1)
      AND name <> capital
                                     
                                     
                                     ****** NOBEL ****
                                     
                                     
1.SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

2.SELECT winner
  FROM nobel
 WHERE yr = 1962 AND subject = 'Literature'

3.SELECT yr,subject
FROM nobel
WHERE winner='albert einstein'

4.SELECT winner
FROM nobel
WHERE subject='Peace' AND yr>=2000

5.SELECT yr,subject,winner
FROM nobel
WHERE subject='Literature' AND yr BETWEEN 1980 AND 1989

6.SELECT yr,subject,winner
FROM nobel 
WHERE winner IN ('Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama')

7.SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

9.SELECT yr,subject,winner
FROM nobel
WHERE yr=1980 AND subject != 'Chemistry' AND subject!='Medicine'

SELECT yr,subject,winner
FROM nobel
WHERE NOT subject IN ('Chemistry','Medicine') AND yr=1980 

10.SELECT yr,subject,winner
FROM nobel
WHERE (yr<1910  AND subject='Medicine' ) 
               OR
       (yr>=2004 AND  subject='Literature')
