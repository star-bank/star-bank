
SELECT c_name, cs_starNames
FROM ConstellationStars, Constellations
WHERE c_constellationkey = cs_constellationkey;

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


SELECT 
From Users
WHERE u_timezone = 'PST';