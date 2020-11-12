
/*Bob lives in Sri Lanka */
INSERT INTO Users Values ('#0003','Bob', '7jbdaj72', "79° 51' 40.4784''", 'E', "6° 55' 37.4844''",'N','10-31-2020 6:56:23','IST');

SELECT *
from Users;

/* User can select what information they would like to see depending on the Constellation, Family or Specific coordinates*/
SELECT *
from Constellations
where c_name ='Ursa Major';

SELECT *
from Constellations
where c_family ='Zodiac';

SELECT c_name, cs_starNames
FROM ConstellationStars, Constellations
WHERE c_constellationkey = cs_constellationkey;

/* */
SELECT c_name, MAX(cs_amountofstars)
FROM ConstellationStars, Constellations
WHERE cs_constellationkey=c_constellationkey;

SELECT c_name,cs_amountofstars
FROM ConstellationStars, Constellations
WHERE cs_constellationkey=c_constellationkey
and cs_amountofstars = (SELECT MIN(cs_amountofstars) FROM ConstellationStars)
ORDER BY c_name;

SELECT SUM(cs_amountofstars)
from ConstellationStars;


/* W is Negative Longitude and E is Postive Longitude*/
/* S is Negative Latitude and N is Postive Latitude*/

/* HOW to Calculate LST
Given the local longitude, date and time.
Convert the date and time to UTC.
Calculate Greenwich mean sidereal time (GMST).
Using the local longitude, shift GMST to LST.
Display LST in hours, minutes, and seconds. */

/*
SELECT 
From Users
WHERE u_timezone = 'PST';*/

DELETE FROM Users where u_name ='Bob';