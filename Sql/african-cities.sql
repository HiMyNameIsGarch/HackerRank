SELECT ci.NAME FROM CITY AS ci INNER JOIN COUNTRY AS co ON ci.COUNTRYCODE = co.CODE WHERE co.CONTINENT = 'Africa'
