
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