--SELECT*
--FROM Data1

--SELECT*
--FROM Data2

----Number of rows in our dataset1
--SELECT COUNT(*)
--FROM Data1

----Number of rows in our dataset1
--SELECT COUNT(*)
--FROM Data2

----Dataset for Jharkhand and Binar district
--SELECT*
--FROM Data1
--WHERE State IN ('Jharkhand', 'Bihar')

--Population of India
--SELECT SUM(Population) AS Population
--FROM Data2

----Average Growth for India
--SELECT AVG(Growth)*100 AS Avg_Growth
--FROM  Data1

----Average Growth for the States
--SELECT State, AVG(Growth)*100 AS Avg_Growth
--FROM  Data1
--GROUP BY State

--Average Sex Ratio
--SELECT State,AVG(Sex_Ratio) AS Avg_growth
--FROM Data1
--GROUP BY State

--SELECT State,ROUND (AVG(Sex_Ratio), 0) AS Avg_Sex_Ratio
--FROM Data1
--GROUP BY State

----Highest Average Sex Ratio
--SELECT State,ROUND (AVG(Sex_Ratio), 0) AS Avg_Sex_Ratio
--FROM Data1
--GROUP BY State
--ORDER BY Avg_Sex_Ratio DESC

----Average Literacy Rate
--SELECT State, ROUND (AVG(Literacy), 0) AS Avg_Literacy_Ratio
--FROM Data1
--GROUP BY State
--ORDER BY Avg_Literacy_Ratio DESC

----Avarage Literacy Ratio greater than 90
--SELECT State, ROUND (AVG(Literacy), 0) AS Avg_Literacy_Ratio
--FROM Data1
--GROUP BY State HAVING ROUND (AVG(Literacy), 0) >90
--ORDER BY Avg_Literacy_Ratio DESC

--Top 3 states with the highest average growth rate
--SELECT TOP 3 State, AVG(Growth)*100 AS Avg_Growth
--FROM  Data1
--GROUP BY State
--ORDER BY Avg_Growth DESC

--Bottom 3 states with the lowest average sex ratio
--SELECT TOP 3 State,ROUND (AVG(Sex_Ratio), 0) AS Avg_Sex_Ratio
--FROM Data1
--GROUP BY State
--ORDER BY Avg_Sex_Ratio ASC

--Top and bottom 3 states for literacy rate
--SELECT* FROM (
--SELECT TOP 3 State,ROUND (AVG(Literacy), 0) AS literacy_rate
--FROM Data1
--GROUP BY State
--ORDER BY literacy_rate DESC) a
--UNION 
--SELECT* FROM (
--SELECT TOP 3 State,ROUND (AVG(Literacy), 0) AS literacy_rate
--FROM Data1
--GROUP BY State
--ORDER BY literacy_rate ASC) b

----States starting with letter 'a'
--SELECT DISTINCT State
--FROM Data1
--WHERE LOWER(State) LIKE 'a%'

--States starting with letter 'a' or 'b'
--SELECT DISTINCT State
--FROM Data1
--WHERE LOWER(State) LIKE 'a%' OR LOWER(State) LIKE 'b%'

--States starting with letter 'a' and ending with 'b'
--SELECT DISTINCT State
--FROM Data1
--WHERE LOWER(State) LIKE 'b%' OR LOWER(State) LIKE 'r%'