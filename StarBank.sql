--
-- File generated with SQLiteStudio v3.2.1 on Tue Nov 3 14:02:37 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Constellation
CREATE TABLE Constellation (c_constellationkey INTEGER (0, 2) NOT NULL, c_name CHAR (32) NOT NULL, c_starsign CHAR (16), c_yearofDiscovery VARCHAR (0, 6) NOT NULL, c_family CHAR (16) NOT NULL, c_visibility VARCHAR (16) NOT NULL, c_area DOUBLE (0, 8) NOT NULL, c_quadrant CHAR (3) NOT NULL);
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (1, 'Andromeda', '', '150 AD', 'Perseus', '90°N – 40°S', 722.278, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (2, 'Antlia', '', '1800 AD', 'Lacaille', '45°N – 90°S', 238.901, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (3, 'Apus', '', '1603 AD', 'Bayer', '5°N – 90°S', 206.327, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (4, 'Aquarius', '', '150 AD', 'Zodiac', '65°N – 90°S', 979.854, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (5, 'Aquila', '', '150 AD', 'Hercules', '90°N – 75°S', 652.473, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (6, 'Ara', '', '150 AD', 'Hercules', '25°N – 90°S', 237.057, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (7, 'Aries', '', '150 AD', 'Zodiac', '90°N – 60°S', 441.395, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (8, 'Auriga', '', '150 AD', 'Perseus', '90°N – 40°S', 657.438, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (9, 'Boötes', '', '150 AD', 'Ursa Major', '90°N – 50°S', 906.831, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (10, 'Caelum', '', '1750 AD', 'Lacaille', '40°N – 90°S', 124.865, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (11, 'Camelopardalis', '', '1624 AD', 'Ursa Major', '90°N – 10°S', 756.828, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (12, 'Cancer', '', '150 AD', 'Zodiac', '90°N – 60°S', 505.872, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (13, 'Canes Venatici', '', '1687 AD', 'Ursa Major', '90°N – 40°S', 465.194, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (14, 'Canis Major', '', '150 AD', 'Orion', '60°N – 90°S', 380.118, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (15, 'Canis Minor', '', '150 AD', 'Orion', '90°N – 75°S', 183.367, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (16, 'Capricornus', '', '150 AD', 'Zodiac', '60°N – 90°S', 413.947, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (17, 'Carina', '', '1800 AD', 'Heavenly Waters', '20°N – 90°S', 494.184, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (18, 'Cassiopeia', '', '150 AD', 'Perseus', '90°N – 20°S', 598.407, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (19, 'Centaurus', '', '150 AD', 'Hercules', '25°N – 90°S', 1060.422, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (20, 'Cepheus', '', '150 AD', 'Perseus', '90°N – 10°S', 587.787, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (21, 'Cetus', '', '150 AD', 'Perseus', '70°N – 90°S', 1231.411, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (22, 'Chamaeleon', '', '1603 AD', 'Bayer', '0° – 90°S', 131.592, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (23, 'Circinus', '', '1756 AD', 'Lacaille', '30°N – 90°S', 93.353, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (24, 'Columba', '', '1603 AD', 'Heavenly Waters', '45°N – 90°S', 270.184, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (25, 'Coma Berenices', '', '1602 AD', 'Ursa Major', '90°N – 70°S', 386.475, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (26, 'Corona Australis', '', '150 AD', 'Hercules', '40°N – 90°S', 127.696, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (27, 'Corona Borealis', '', '150 AD', 'Ursa Major', '90°N – 50°S', 178.71, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (28, 'Corvus', '', '150 AD', 'Hercules', '60°N – 90°S', 183.801, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (29, 'Crater', '', '150 AD', 'Hercules', '65°N – 90°S', 282.398, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (30, 'Crux', '', '1624 AD', 'Hercules', '20°N – 90°S', 68.447, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (31, 'Cygnus', '', '150 AD', 'Hercules', '90°N – 40°S', 803.983, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (32, 'Delphinus', '', '150 AD', 'Heavenly Waters', '90°N – 70°S', 188.549, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (33, 'Dorado', '', '1603 AD', 'Bayer', '20°N – 90°S', 179.173, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (34, 'Draco', '', '150 AD', 'Ursa Major', '90°N – 15°S', 1082.952, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (35, 'Equuleus', '', '150 AD', 'Heavenly Waters', '90°N – 80°S', 71.641, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (36, 'Eridanus', '', '150 AD', 'Heavenly Waters', '32°N – 90°S', 1137.919, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (37, 'Fornax', '', '1756 AD', 'Lacaille', '50°N – 90°S', 397.502, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (38, 'Gemini', '', '150 AD', 'Zodiac', '90°N – 60°S', 513.761, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (39, 'Grus', '', '1603 AD', 'Bayer', '34°N – 90°S', 365.513, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (40, 'Hercules', '', '150 AD', 'Hercules', '90°N – 50°S', 1225.148, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (41, 'Horologium', '', '1756 AD', 'Lacaille', '30°N – 90°S', 248.885, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (42, 'Hydra', '', '150 AD', 'Hercules', '54°N – 83°S', 1302.844, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (43, 'Hydrus', '', '1603 AD', 'Bayer', '8°N – 90°S', 243.035, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (44, 'Indus', '', '1603 AD', 'Bayer', '15°N – 90°S', 294.006, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (45, 'Lacerta', '', '1687 AD', 'Perseus', '90°N – 40°S', 200.688, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (46, 'Leo', '', '150 AD', 'Zodiac', '90°N – 65°S', 946.964, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (47, 'Leo Minor', '', '1687 AD', 'Ursa Major', '90°N – 45°S', 231.956, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (48, 'Lepus', '', '150 AD', 'Orion', '63°N – 90°S', 290.291, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (49, 'Libra', '', '150 AD', 'Zodiac', '65°N – 90°S', 538.052, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (50, 'Lupus', '', '150 AD', 'Hercules', '35°N – 90°S', 333.683, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (51, 'Lynx', '', '1700 AD', 'Ursa Major', '90°N – 55°S', 545.386, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (52, 'Lyra', '', '150 AD', 'Hercules', '90°N – 40°S', 286.476, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (53, 'Mensa', '', '1700 AD', 'Lacaille', '4°N – 90°S', 153.484, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (54, 'Microscopium', '', '1700 AD', 'Lacaille', '45°N – 90°S', 209.513, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (55, 'Monoceros', '', '1600 AD', 'Orion', '75°N – 90°S', 481.569, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (56, 'Musca', '', '1603 AD', 'Bayer', '10°N – 90°S', 138.355, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (57, 'Norma', '', '1700 AD', 'Lacaille', '30°N – 90°S', 165.29, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (58, 'Octans', '', '1700 AD', 'Lacaille', '0°- 90°S', 291.045, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (59, 'Ophiuchus', '', '150 AD', 'Hercules', '80°N – 80°S', 948.34, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (60, 'Orion', '', '150 AD', 'Orion', '85°N – 75°S', 594.12, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (61, 'Pavo', '', '1603 AD', 'Bayer', '30°N – 90°S', 377.666, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (62, 'Pegasus', '', '150 AD', 'Perseus', '90°N – 60°S', 1120.794, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (63, 'Perseus', '', '150 AD', 'Perseus', '90°N – 35°S', 614.997, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (64, 'Phoenix', '', '1603 AD', 'Bayer', '32°N – 80°S', 469.319, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (65, 'Pictor', '', '1700 AD', 'Lacaille', '26°N – 90°S', 246.739, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (66, 'Pisces', '', '150 AD', 'Zodiac', '90°N – 65°S', 889.417, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (67, 'Piscis Austrinus', '', '150 AD', 'Heavenly Waters', '55°N – 90°S', 245.375, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (68, 'Puppis', '', '1752 AD', 'Heavenly Waters', '40°N – 90°S', 673.434, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (69, 'Pyxis', '', '1700 AD', 'Heavenly Waters', '50°N – 90°S', 220.833, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (70, 'Reticulum', '', '1700 AD', 'Lacaille', '23°N – 90°S', 113.936, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (71, 'Sagitta', '', '150 AD', 'Hercules', '90°N – 70°S', 79.932, 'NQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (72, 'Sagittarius', '', '150 AD', 'Zodiac', '55°N – 90°S', 867.432, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (73, 'Scorpius', '', '150 AD', 'Zodiac', '40°N – 90°S', 496.783, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (74, 'Sculptor', '', '1700 AD', 'Lacaille', '50°N – 90°S', 474.764, 'SQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (75, 'Scutum', '', '1683 Ad', 'Hercules', '80°N – 90°S', 109.114, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (76, 'Serpens', '', '150 AD', 'Hercules', '80°N – 80°S', 636.928, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (77, 'Sextans', '', '1600 AD', 'Hercules', '80°N – 90°S', 313.515, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (78, 'Taurus', '', '150 AD', 'Zodiac', '90°N – 65°S', 797.249, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (79, 'Telescopium', '', '1700 AD', 'Lacaille', '40°N – 90°S', 251.512, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (80, 'Triangulum', '', '150 AD', 'Perseus', '90°N – 60°S', 131.847, 'NQ1');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (81, 'Triangulum Australe', '', '1603 AD', 'Hercules', '25°N – 90°S', 109.978, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (82, 'Tucana', '', '1603 AD', 'Bayer', '25°N – 90°S', 294.557, 'SQ4');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (83, 'Ursa Major', '', '150 AD', 'Ursa Major', '90°N – 30°S', 1279.66, 'NQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (84, 'Ursa Minor', '', '150 AD', 'Ursa Major', '90°N – 10°S', 255.864, 'NQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (85, 'Vela', '', '1750 AD', 'Heavenly Waters', '30°N – 90°S', 499.649, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (86, 'Virgo', '', '150 AD', 'Zodiac', '80°N – 80°S', 1294.428, 'SQ3');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (87, 'Volans', '', '1603 AD', 'Bayer', '15°N – 90°S', 141.354, 'SQ2');
INSERT INTO Constellation (c_constellationkey, c_name, c_starsign, c_yearofDiscovery, c_family, c_visibility, c_area, c_quadrant) VALUES (88, 'Vulpecula', '', '1600 AD', 'Hercules', '90°N – 55°S', 268.165, 'NQ4');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
