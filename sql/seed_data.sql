-- Insert elements data
INSERT INTO elements (atomic_number, symbol, name) VALUES
(1, 'H', 'Hydrogen'),
(2, 'He', 'Helium'),
(3, 'Li', 'Lithium'),
(4, 'Be', 'Beryllium'),
(5, 'B', 'Boron'),
(6, 'C', 'Carbon'),
(7, 'N', 'Nitrogen'),
(8, 'O', 'Oxygen'),
(9, 'F', 'Fluorine'),
(10, 'Ne', 'Neon'),
(11, 'Na', 'Sodium'),
(12, 'Mg', 'Magnesium'),
(13, 'Al', 'Aluminum'),
(14, 'Si', 'Silicon'),
(15, 'P', 'Phosphorus'),
(16, 'S', 'Sulfur'),
(17, 'Cl', 'Chlorine'),
(18, 'Ar', 'Argon'),
(19, 'K', 'Potassium'),
(20, 'Ca', 'Calcium'),
(21, 'Sc', 'Scandium'),
(22, 'Ti', 'Titanium'),
(23, 'V', 'Vanadium'),
(24, 'Cr', 'Chromium'),
(25, 'Mn', 'Manganese'),
(26, 'Fe', 'Iron'),
(27, 'Co', 'Cobalt'),
(28, 'Ni', 'Nickel'),
(29, 'Cu', 'Copper'),
(30, 'Zn', 'Zinc'),
(31, 'Ga', 'Gallium'),
(32, 'Ge', 'Germanium'),
(33, 'As', 'Arsenic'),
(34, 'Se', 'Selenium'),
(35, 'Br', 'Bromine'),
(36, 'Kr', 'Krypton'),
(37, 'Rb', 'Rubidium'),
(38, 'Sr', 'Strontium'),
(39, 'Y', 'Yttrium'),
(40, 'Zr', 'Zirconium'),
(41, 'Nb', 'Niobium'),
(42, 'Mo', 'Molybdenum'),
(43, 'Tc', 'Technetium'),
(44, 'Ru', 'Ruthenium'),
(45, 'Rh', 'Rhodium'),
(46, 'Pd', 'Palladium'),
(47, 'Ag', 'Silver'),
(48, 'Cd', 'Cadmium'),
(49, 'In', 'Indium'),
(50, 'Sn', 'Tin'),
(51, 'Sb', 'Antimony'),
(52, 'Te', 'Tellurium'),
(53, 'I', 'Iodine'),
(54, 'Xe', 'Xenon'),
(55, 'Cs', 'Cesium'),
(56, 'Ba', 'Barium'),
(57, 'La', 'Lanthanum'),
(58, 'Ce', 'Cerium'),
(59, 'Pr', 'Praseodymium'),
(60, 'Nd', 'Neodymium'),
(61, 'Pm', 'Promethium'),
(62, 'Sm', 'Samarium'),
(63, 'Eu', 'Europium'),
(64, 'Gd', 'Gadolinium'),
(65, 'Tb', 'Terbium'),
(66, 'Dy', 'Dysprosium'),
(67, 'Ho', 'Holmium'),
(68, 'Er', 'Erbium'),
(69, 'Tm', 'Thulium'),
(70, 'Yb', 'Ytterbium'),
(71, 'Lu', 'Lutetium'),
(72, 'Hf', 'Hafnium'),
(73, 'Ta', 'Tantalum'),
(74, 'W', 'Tungsten'),
(75, 'Re', 'Rhenium'),
(76, 'Os', 'Osmium'),
(77, 'Ir', 'Iridium'),
(78, 'Pt', 'Platinum'),
(79, 'Au', 'Gold'),
(80, 'Hg', 'Mercury'),
(81, 'Tl', 'Thallium'),
(82, 'Pb', 'Lead'),
(83, 'Bi', 'Bismuth'),
(84, 'Po', 'Polonium'),
(85, 'At', 'Astatine'),
(86, 'Rn', 'Radon'),
(87, 'Fr', 'Francium'),
(88, 'Ra', 'Radium'),
(89, 'Ac', 'Actinium'),
(90, 'Th', 'Thorium'),
(91, 'Pa', 'Protactinium'),
(92, 'U', 'Uranium'),
(93, 'Np', 'Neptunium'),
(94, 'Pu', 'Plutonium'),
(95, 'Am', 'Americium'),
(96, 'Cm', 'Curium'),
(97, 'Bk', 'Berkelium'),
(98, 'Cf', 'Californium'),
(99, 'Es', 'Einsteinium'),
(100, 'Fm', 'Fermium'),
(101, 'Md', 'Mendelevium'),
(102, 'No', 'Nobelium'),
(103, 'Lr', 'Lawrencium'),
(104, 'Rf', 'Rutherfordium'),
(105, 'Db', 'Dubnium'),
(106, 'Sg', 'Seaborgium'),
(107, 'Bh', 'Bohrium'),
(108, 'Hs', 'Hassium'),
(109, 'Mt', 'Meitnerium'),
(110, 'Ds', 'Darmstadtium'),
(111, 'Rg', 'Roentgenium'),
(112, 'Cn', 'Copernicium'),
(113, 'Nh', 'Nihonium'),
(114, 'Fl', 'Flerovium'),
(115, 'Mc', 'Moscovium'),
(116, 'Lv', 'Livermorium'),
(117, 'Ts', 'Tennessine'),
(118, 'Og', 'Oganesson');

-- Insert types data
INSERT INTO types (type) VALUES 
('Nonmetal'), 
('Noble gas'), 
('Alkali metal'), 
('Alkaline earth metal'), 
('Metalloid'), 
('Halogen'), 
('Post-transition metal'), 
('Transition metal'), 
('Lanthanide'), 
('Actinide');

-- Insert properties data
INSERT INTO properties (atomic_number, type_id, atomic_mass, melting_point_celsius, boiling_point_celsius) VALUES
(1, 1, 1.008, -259.16, -252.87),
(2, 2, 4.0026, -272.2, -268.93),
(3, 3, 6.94, 180.54, 1342),
(4, 4, 9.0122, 1287, 2469),
(5, 5, 10.81, 2075, 4000),
(6, 1, 12.011, 3550, 4827),
(7, 1, 14.007, -210.1, -195.79),
(8, 1, 15.999, -218.79, -182.95),
(9, 6, 18.998, -219.67, -188.12),
(10, 2, 20.18, -248.59, -246.08),
(11, 3, 22.99, 97.72, 883),
(12, 4, 24.305, 650, 1090),
(13, 7, 26.982, 660.32, 2470),
(14, 5, 28.085, 1414, 2900),
(15, 1, 30.974, 44.15, 280.5),
(16, 1, 32.06, 115.21, 444.6),
(17, 6, 35.45, -101.5, -34.04),
(18, 2, 39.948, -189.34, -185.85),
(19, 3, 39.098, 63.5, 759),
(20, 4, 40.078, 842, 1484),
(21, 8, 44.955, 1541, 2831),
(22, 8, 47.867, 1668, 3287),
(23, 8, 50.942, 1910, 3407),
(24, 8, 51.996, 1907, 2671),
(25, 8, 54.938, 1246, 2061),
(26, 8, 55.845, 1538, 2862),
(27, 8, 58.933, 1495, 2927),
(28, 8, 58.693, 1455, 2730),
(29, 8, 63.546, 1084.62, 2562),
(30, 8, 65.38, 419.53, 907),
(31, 7, 69.723, 29.76, 2400),
(32, 5, 72.63, 938.25, 2833),
(33, 5, 74.922, 817, 614),
(34, 1, 78.971, 221, 685),
(35, 6, 79.904, -7.2, 58.8),
(36, 2, 83.798, -157.37, -153.22),
(37, 3, 85.468, 39.31, 688),
(38, 4, 87.62, 777, 1382),
(39, 8, 88.906, 1526, 3338),
(40, 8, 91.224, 1855, 4409),
(41, 8, 92.906, 2477, 4744),
(42, 8, 95.95, 2623, 4639),
(43, 8, 98, 2157, 4265),
(44, 8, 101.07, 2334, 4150),
(45, 8, 102.91, 1964, 3695),
(46, 8, 106.42, 1554.9, 2963),
(47, 8, 107.87, 961.78, 2162),
(48, 8, 112.41, 321.07, 765),
(49, 7, 114.82, 156.6, 2072),
(50, 7, 118.71, 231.93, 2602),
(51, 7, 121.76, 630.63, 1587),
(52, 5, 127.6, 449.51, 988),
(53, 6, 126.9, 113.7, 184.3),
(54, 2, 131.29, -111.8, -108.1),
(55, 3, 132.91, 28.44, 671),
(56, 4, 137.33, 727, 1870),
(57, 9, 138.91, 920, 3464),
(58, 9, 140.12, 795, 3443),
(59, 9, 140.91, 935, 3130),
(60, 9, 144.24, 1024, 3074),
(61, 9, 145, 1042, 3000),
(62, 9, 150.36, 1072, 1900),
(63, 9, 151.96, 826, 1527),
(64, 9, 157.25, 1313, 3233),
(65, 9, 158.93, 1356, 3230),
(66, 9, 162.5, 1412, 2562),
(67, 9, 164.93, 1470, 2700),
(68, 9, 167.26, 1529, 2868),
(69, 9, 168.93, 1545, 1950),
(70, 9, 173.04, 824, 1196),
(71, 9, 174.97, 1663, 3402),
(72, 8, 178.49, 2233, 4603),
(73, 8, 180.95, 3017, 5458),
(74, 8, 183.84, 3422, 5555),
(75, 8, 186.21, 3186, 5596),
(76, 8, 190.23, 3033, 5012),
(77, 8, 192.22, 2466, 4428),
(78, 8, 195.08, 1768.3, 3825),
(79, 8, 196.97, 1064.18, 2970),
(80, 8, 200.59, -38.83, 356.73),
(81, 7, 204.38, 304, 1473),
(82, 7, 207.2, 327.46, 1749),
(83, 7, 208.98, 271.4, 1564),
(84, 1, 209, 254, 962),
(85, 6, 210, 302, 337),
(86, 2, 222, -71, -61.7),
(87, 3, 223, 27, 677),
(88, 4, 226, 700, 1737),
(89, 10, 227, 1050, 3200),
(90, 10, 232.04, 1750, 4788),
(91, 10, 231.04, 1572, 4000),
(92, 10, 238.03, 1132, 4131),
(93, 10, 237, 640, 3902),
(94, 10, 244, 640, 3228),
(95, 10, 243, 1176, 2607),
(96, 10, 247, 1340, 3110),
(97, 10, 247, 986, 2627),
(98, 10, 251, 900, 1470),
(99, 10, 252, 860, 996),
(100, 10, 257, 1527, 1800),
(101, 10, 258, 827, 1700),
(102, 10, 259, 827, 1700),
(103, 10, 262, 1627, 1900),
(104, 8, 267, 2100, 5500),
(105, 8, 270, 2200, 5500),
(106, 8, 271, 2300, 5400),
(107, 8, 270, 1400, 4200),
(108, 8, 277, 1600, 5800),
(109, 8, 276, 1700, 5500),
(110, 8, 281, 1800, 6000),
(111, 8, 282, 1900, 5900),
(112, 8, 285, 2000, 5800),
(113, 8, 286, 1300, 5500),
(114, 8, 289, 2100, 5900),
(115, 8, 290, 2200, 6000),
(116, 8, 293, 2300, 6100),
(117, 8, 294, 2400, 6200),
(118, 8, 294, 2500, 6300);

