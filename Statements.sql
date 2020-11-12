
/*Steve is in Seattle */
INSERT INTO Users Values ('#0002','Steve', '7nfsk72', -122.335167, 47.608013,'2020-01-13 06:56:23','PST');

SELECT *
from Users;

/* User can select what information they would like to see depending on the Constellation Name, Family or Specific coordinates*/
SELECT *
from Constellations
where c_name ='Ursa Major';

SELECT *
from Constellations
where c_family ='Zodiac';

SELECT c_name, cs_starNames
FROM ConstellationStars, Constellations
WHERE c_constellationkey = cs_constellationkey and c_name= 'Ursa Major';

/*Random Facts about the Constellations*/
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

/* Star Clusters Facts */

SELECT *
FROM StarClusters
WHERE sc_name= 'M3';

SELECT sc_name
FROM StarClusters
WHERE sc_type = 'Open';

SELECT *
from Stars
WHERE s_name = 'Macondo';

SELECT COUNT(sc_type) AS 'Number of Globular Clusters'
FROM StarClusters
WHERE sc_type = 'Globular';

SELECT sc_key, sc_constellation AS 'Constellation Locations of Star Clusters'
FROM StarClusters
GROUP BY sc_constellation;

/* about star types */
SELECT *
FROM StarType
WHERE st_color like 'blue%';

/* W is Negative Longitude and E is Postive Longitude*/
/* S is Negative Latitude and N is Postive Latitude*/

/* HOW to Calculate LST
Given the local longitude, date and time.
Convert the date and time to UTC.
Calculate Greenwich mean sidereal time (GMST).
Using the local longitude, shift GMST to LST.
Display LST in hours, minutes, and seconds. */

/*Change to UTC*/
SELECT datetime(u_dateandtime,'utc') as UniTime
FROM Users
Where u_timezone = 'PST';

/* Calculate Time of the UTC times */
SELECT (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as Jul
from (SELECT datetime(u_dateandtime,'utc') as UniTime
FROM Users
Where u_timezone = 'PST')r1;

/*GMST*/
SELECT (280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 as GMST
from (SELECT (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from (SELECT datetime(u_dateandtime,'utc') as UniTime
FROM Users
Where u_timezone = 'PST')r1)r2;

/*LST*/
SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey;


SELECT SUBSTR(r4.LST,1,1)as H, SUBSTR(r4.LST,2,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST < 10
UNION
SELECT SUBSTR(r4.LST,1,2)as H, SUBSTR(r4.LST,3,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST >= 10;


SELECT T1.H - strftime('%H', l_ascension) as hD, T1.M-strftime('%M', l_ascension) as mD
FROM Location, (SELECT SUBSTR(r4.LST,1,1)as H, SUBSTR(r4.LST,2,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST < 10
UNION
SELECT SUBSTR(r4.LST,1,2)as H, SUBSTR(r4.LST,3,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST >= 10)T1;

SELECT sc_constellation AS 'Constellation Locations of Star Clusters'
FROM StarClusters
GROUP BY sc_constellation;

SELECT *
FROM Constellations
WHERE c_name = (SELECT sc_constellation
FROM StarClusters
GROUP BY sc_constellation);

SELECT F.l_ascension
FROM Location F, (SELECT T1.H - strftime('%H', L.l_ascension) as hD, T1.M-strftime('%M', L.l_ascension) as mD, L.l_ascension
FROM Location L, (SELECT SUBSTR(r4.LST,1,1)as H, SUBSTR(r4.LST,2,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST < 10
UNION
SELECT SUBSTR(r4.LST,1,2)as H, SUBSTR(r4.LST,3,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST >= 10)T1)TF
WHERE TF.l_ascension = F.l_ascension
GROUP BY F.l_ascension
HAVING TF.hd > 0 and TF.mD >0;


UPDATE Location
SET l_ulongitude = +l_longitude
WHERE l_ascension IN (SELECT F.l_ascension
FROM Location F, (SELECT T1.H - strftime('%H', L.l_ascension) as hD, T1.M-strftime('%M', L.l_ascension) as mD, L.l_ascension
FROM Location L, (SELECT SUBSTR(r4.LST,1,1)as H, SUBSTR(r4.LST,2,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST < 10
UNION
SELECT SUBSTR(r4.LST,1,2)as H, SUBSTR(r4.LST,3,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST >= 10)T1)TF
WHERE TF.l_ascension = F.l_ascension
GROUP BY F.l_ascension
HAVING TF.hd >= 0 OR TF.mD >= 0);


UPDATE Location
SET l_ulongitude = -l_longitude
WHERE l_ascension IN (SELECT F.l_ascension
FROM Location F, (SELECT T1.H - strftime('%H', L.l_ascension) as hD, T1.M-strftime('%M', L.l_ascension) as mD, L.l_ascension
FROM Location L, (SELECT SUBSTR(r4.LST,1,1)as H, SUBSTR(r4.LST,2,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST < 10
UNION
SELECT SUBSTR(r4.LST,1,2)as H, SUBSTR(r4.LST,3,5)*60 as M
FROM (SELECT ((280.46061837+360.98564736629*(r2.t1*36525)+0.000387933*(r2.t1*r2.t1) - (r2.t1*r2.t1*r2.t1)/38710000)%360 + u_longitude)/15 as LST
from Users M, (SELECT U.u_userkey, (strftime ('%J', r1.UniTime) - 2451545.0)/36525 as t1
from Users U,(SELECT datetime(u_dateandtime,'utc') as UniTime, u_userkey
FROM Users
Where u_timezone = 'PST')r1
Where U.u_userkey = r1.u_userkey)r2
WHERE M.u_userkey = r2.u_userkey)r4
WHERE r4.LST >= 10)T1)TF
WHERE TF.l_ascension = F.l_ascension
GROUP BY F.l_ascension
HAVING TF.hd < 0 or TF.mD < 0);

SELECT *
FROM Location;

SELECT DISTINCT s_name as StarsNear
from Stars, Location, Users
WHERE u_name='Steve' and l_latitude <= u_latitude + 75 and l_latitude >= u_latitude - 75 and 
l_ulongitude <= u_longitude +75 and l_latitude >= u_longitude - 75 and l_locationkey=s_locationkey;


SELECT DISTINCT c_name as ConstellationsNearby
from Stars, Location, Users, Constellations
WHERE u_name='Steve' and l_latitude <= u_latitude + 75 and l_latitude >= u_latitude - 75 and 
l_ulongitude <= u_longitude +75 and l_latitude >= u_longitude - 75 and l_locationkey=s_locationkey and s_constellation= c_name;

DELETE FROM Users where u_name ='Steve';