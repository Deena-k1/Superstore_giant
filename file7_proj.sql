 SELECT * FROM store_project.customers;
 SELECT * FROM store_project.orders;
 
 -- foreign keys for order table:
ALTER TABLE store_project.orders
ADD CONSTRAINT FOREIGN KEY (`customer_id`) 
REFERENCES store_project.customers(`customer_id`);

ALTER TABLE store_project.orders
ADD CONSTRAINT FOREIGN KEY (`product_id`) 
REFERENCES store_project.products(`product_id`);


-- create table products:
CREATE TABLE `store_project`.`products` (
  `product_id` VARCHAR(40) NOT NULL,
  `product_category` VARCHAR(45) NULL,
  `product_sub_category` VARCHAR(45) NULL,
  `product_name` VARCHAR(100) NULL,
  PRIMARY KEY (`product_id`));

DROP TABLE products;
-- create sales table:
CREATE TABLE `store_project`.`sales` (
  `order_id` VARCHAR(40) NOT NULL,
  `customer_id` VARCHAR(45) NULL,
  `sales` DECIMAL(10,2) NOT NULL,
  `quantity` INT NULL,
  `discount` DECIMAL(4,2) NULL,
  `profit` DECIMAL(10,2) NULL,
  PRIMARY KEY (`order_id`));
  
-- add foreign keys to sales table
ALTER TABLE store_project.sales
ADD CONSTRAINT FOREIGN KEY (`order_id`) 
REFERENCES store_project.orders(`order_id`);

ALTER TABLE store_project.sales
ADD CONSTRAINT FOREIGN KEY (`customer_id`) 
REFERENCES store_project.customers(`customer_id`);

-- create table shippments:
CREATE TABLE `store_project`.`shipments` (
  `order_id` VARCHAR(40) ,
  `ship_date` DATE  NOT NULL,
  `ship_mode` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `region` VARCHAR(45) NULL,
  PRIMARY KEY (`ship_date`));
  
  -- add foreign keys
  ALTER TABLE store_project.shipments
ADD CONSTRAINT FOREIGN KEY (`order_id`) 
REFERENCES store_project.orders(`order_id`);

SELECT * from customers;
INSERT INTO customers (customer_id, customer_name, segment) VALUES
('DV-13045', 'Darrin Van Huff', 'Corporate'),
('SO-20335', 'Sean ODonnell', 'Consumer'),
('BH-11710', 'Brosina Hoffman', 'Consumer'),
('AA-10480', 'Andrew Allen', 'Consumer'),
('IM-15070', 'Irene Maddox', 'Consumer'),
('HP-14815', 'Harold Pawlan', 'Home Office'),
('PK-19075', 'Pete Kriz', 'Consumer'),
('AG-10270', 'Alejandro Grove', 'Consumer'),
('ZD-21925', 'Zuschuss Donatelli', 'Consumer'),
('KB-16585', 'Ken Black', 'Corporate'),
('SF-20065', 'Sandra Flanagan', 'Consumer'),
('EB-13870', 'Emily Burns', 'Consumer'),
('EH-13945', 'Eric Hoffmann', 'Consumer'),
('TB-21520', 'Tracy Blumstein', 'Consumer'),
('MA-17560', 'Matt Abelman', 'Home Office'),
('GH-14485', 'Gene Hale', 'Corporate'),
('SN-20710', 'Steve Nguyen', 'Home Office'),
('LC-16930', 'Linda Cazamias', 'Corporate'),
('RA-19885', 'Ruben Ausman', 'Corporate'),
('ES-14080', 'Erin Smith', 'Corporate'),
('ON-18715', 'Odella Nelson', 'Corporate'),
('PO-18865', 'Patrick ODonnell', 'Consumer'),
('LH-16900', 'Lena Hernandez', 'Consumer'),
('SS-20140', 'Saphhira Shifley', 'Corporate'),
('CK-12205', 'Chloris Kastensmidt', 'Consumer'),
('VS-21820', 'Vivek Sundaresam', 'Consumer'),
('TN-21040', 'Tanja Norvell', 'Home Office'),
('HR-14830', 'Harold Ryan', 'Corporate'),
('JS-15595', 'Jill Stevenson', 'Corporate'),
('BN-11470', 'Brad Norvell', 'Corporate'),
('AR-10405', 'Allen Rosenblatt', 'Corporate'),
('SW-20455', 'Shaun Weien', 'Consumer'),
('JE-16165', 'Justin Ellison', 'Corporate'),
('LH-16901', 'Lena Hernandez', 'Consumer'),
('VG-21790', 'Vivek Gonzalez', 'Consumer'),
('EM-13960', 'Eric Murdock', 'Consumer'),
('EM-13825', 'Elizabeth Moffitt', 'Corporate'),
('JH-15910', 'Jonathan Howell', 'Consumer'),
('NP-18700', 'Nora Preis', 'Consumer'),
('SH-20635', 'Stefanie Holloman', 'Corporate'),
('BM-11785', 'Bryan Mills', 'Consumer'),
('HG-14965', 'Henry Goldwyn', 'Corporate'),
('BM-11140', 'Becky Martin', 'Consumer'),
('PS-19045', 'Penelope Sewall', 'Home Office'),
('MS-17710', 'Maurice Satty', 'Consumer'),
('JL-15235', 'Janet Lee', 'Consumer'),
('KM-16660', 'Khloe Miller', 'Consumer'),
('RD-19900', 'Ruben Dartt', 'Consumer');
-- customers is done




INSERT INTO orders (order_id, order_date, ship_mode, customer_id, product_id) VALUES
('CA-2016-152156', '2016-11-08', 'Second Class', 'CG-12520', 'FUR-BO-10001798'),
('CA-2016-138688', '2016-06-12', 'Second Class', 'DV-13045', 'OFF-LA-10000240'),
('US-2015-108966', '2015-10-11', 'Standard Class', 'SO-20335', 'FUR-TA-10000577'),
('CA-2014-115812', '2014-06-09', 'Standard Class', 'BH-11710', 'TEC-PH-10002033'),
('CA-2017-114412', '2017-04-15', 'Standard Class', 'AA-10480', 'OFF-PA-10002365'),
('CA-2016-161389', '2016-12-05', 'Standard Class', 'IM-15070', 'OFF-BI-10003656'),
('US-2015-118983', '2015-11-22', 'Standard Class', 'HP-14815', 'OFF-BI-10000756'),
('CA-2014-105893', '2014-11-11', 'Standard Class', 'PK-19075', 'OFF-ST-10004186'),
('CA-2014-167164', '2014-05-13', 'Second Class', 'AG-10270', 'OFF-ST-10000107'),
('CA-2014-143336', '2014-08-27', 'Second Class', 'ZD-21925', 'OFF-BI-10002215'),
('CA-2016-137330', '2016-12-09', 'Standard Class', 'KB-16585', 'OFF-AP-10001492'),
('US-2017-156909', '2017-07-16', 'Second Class', 'SF-20065', 'FUR-CH-10002774'),
('CA-2015-106320', '2015-09-25', 'Standard Class', 'EB-13870', 'FUR-TA-10000577'),
('CA-2016-121755', '2016-01-16', 'Second Class', 'EH-13945', 'OFF-BI-10001634'),
('US-2015-150630', '2015-09-17', 'Standard Class', 'TB-21520', 'OFF-AR-10001683'),
('CA-2017-107727', '2017-10-19', 'Second Class', 'MA-17560', 'OFF-PA-10000249'),
('CA-2016-117590', '2016-12-08', 'First Class', 'GH-14485', 'FUR-FU-10003664'),
('CA-2015-117415', '2015-12-27', 'Standard Class', 'SN-20710', 'TEC-PH-10000486'),
('CA-2017-120999', '2017-09-10', 'Standard Class', 'LC-16930', 'TEC-PH-10004093'),
('CA-2016-101343', '2016-07-17', 'Standard Class', 'RA-19885', 'OFF-ST-10003479'),
('CA-2017-139619', '2017-09-19', 'Standard Class', 'ES-14080', 'OFF-ST-10003282'),
('CA-2016-118255', '2016-03-11', 'First Class', 'ON-18715', 'TEC-AC-10000171'),
('CA-2014-146703', '2014-10-20', 'Second Class', 'PO-18865', 'OFF-ST-10001713'),
('CA-2016-169194', '2016-06-20', 'Standard Class', 'LH-16900', 'TEC-AC-10002167'),
('CA-2017-164756', '2017-09-18', 'Standard Class', 'SS-20140', 'FUR-FU-10002963'),
('CA-2017-122028', '2017-08-18', 'Standard Class', 'CK-12205', 'OFF-BI-10004817'),
('US-2015-165512', '2015-05-24', 'Second Class', 'VS-21820', 'OFF-BI-10001249'),
('CA-2015-140557', '2015-09-07', 'Standard Class', 'TN-21040', 'TEC-AC-10002402'),
('US-2017-135013', '2017-07-24', 'Same Day', 'HR-14830', 'TEC-CO-10001449'),
('CA-2017-111220', '2017-09-02', 'Standard Class', 'JS-15595', 'OFF-ST-10003994'),
('US-2017-149006', '2017-12-06', 'Second Class', 'BN-11470', 'OFF-ST-10003221'),
('CA-2017-149468', '2017-05-20', 'Same Day', 'AR-10405', 'OFF-BI-10002225'),
('CA-2016-140249', '2016-09-27', 'Standard Class', 'SW-20455', 'TEC-PH-10002584'),
('US-2017-135503', '2017-12-10', 'Standard Class', 'JE-16165', 'FUR-FU-10002364'),
('CA-2014-126277', '2014-09-13', 'Second Class', 'LH-16901', 'OFF-BI-10004022'),
('US-2017-115301', '2017-07-29', 'Standard Class', 'VG-21790', 'FUR-BO-10004709'),
('CA-2017-168942', '2017-08-01', 'Second Class', 'EM-13960', 'OFF-ST-10004340'),
('US-2017-128398', '2017-05-02', 'Second Class', 'EM-13825', 'TEC-AC-10001714'),
('CA-2015-104115', '2015-06-12', 'Standard Class', 'JH-15910', 'TEC-PH-10002844');

INSERT INTO orders (order_id, order_date, ship_mode, customer_id, product_id)
VALUES
('CA-2014-142510', '2014-12-22', 'Standard Class', 'NP-18700', 'OFF-PA-10001289'),
('CA-2014-124247', '2014-12-16', 'Standard Class', 'SH-20635', 'FUR-CH-10001854'),
('CA-2016-105473', '2016-04-16', 'Second Class', 'BM-11785', 'OFF-SU-10003567'),
('CA-2015-102806', '2015-05-21', 'Standard Class', 'HG-14965', 'OFF-BI-10001597'),
('CA-2017-121706', '2017-02-26', 'Standard Class', 'BM-11140', 'OFF-AP-10003287'),
('CA-2017-109211', '2017-04-04', 'Standard Class', 'PS-19045', 'OFF-EN-10001532'),
('CA-2015-134257', '2015-03-16', 'Second Class', 'MS-17710', 'OFF-EN-10003845'),
('CA-2015-137925', '2015-11-30', 'Standard Class', 'JL-15235', 'OFF-PA-10002659'),
('CA-2016-140046', '2016-07-28', 'Standard Class', 'KM-16660', 'OFF-LA-10000305'),
('CA-2016-140382', '2016-06-23', 'Second Class', 'RD-19900', 'OFF-PA-10001019');
-- orders done

SELECT * FROM orders;

-- find the total number of orders made each year:
SELECT COUNT(*) AS total_orders
FROM orders 
WHERE YEAR (order_date) = '2014'; -- 8 total orders in 2014

SELECT COUNT(*) AS total_orders
FROM orders 
WHERE YEAR (order_date) = '2015'; -- 11 total orders in 2015

SELECT COUNT(*) AS total_orders
FROM orders 
WHERE YEAR (order_date) = '2016'; -- 13 total orders in 2016

SELECT COUNT(*) AS total_orders
FROM orders 
WHERE YEAR (order_date) = '2017'; -- 17 total orders in 2017



INSERT INTO products (product_id, product_category, product_sub_category, product_name) VALUES
('FUR-BO-10001798', 'Furniture', 'Bookcases', 'Bush Somerset Bookcase'),
('OFF-LA-10000240', 'Office Supplies', 'Labels', 'Address Labels for Typewriters'),
('FUR-TA-10000577', 'Furniture', 'Tables', 'Bretford CR4500 Rectangular Table'),
('TEC-PH-10002033', 'Technology', 'Phones', 'Konftel 250 Conference Phone - Charcoal'),
('OFF-PA-10002365', 'Office Supplies', 'Paper', 'Xerox 1967'),
('OFF-BI-10003656', 'Office Supplies', 'Binders', 'Fellowes PB200 Binding Machine'),
('OFF-BI-10000756', 'Office Supplies', 'Binders', 'Storex DuraTech Plastic Binders'),
('OFF-ST-10004186', 'Office Supplies', 'Storage', 'Stur-D-Stor Shelving 5-Shelf'),
('OFF-ST-10000107', 'Office Supplies', 'Storage', 'Fellowes Super Stor/Drawer'),
('OFF-BI-10002215', 'Office Supplies', 'Binders', 'Wilson Jones Hanging View Binder'),
('OFF-AP-10001492', 'Office Supplies', 'Appliances', 'Acco Six-Outlet Power Strip'),
('FUR-CH-10002774', 'Furniture', 'Chairs', 'Global Deluxe Stacking Chair - Gray'),
('FUR-TA-10000597', 'Furniture', 'Tables', 'Bretford CR4500 Rectangular Table'),
('OFF-BI-10001634', 'Office Supplies', 'Binders', 'Wilson Jones Active Use Binders'),
('OFF-AR-10001683', 'Office Supplies', 'Art', 'Lumber Crayons'),
('OFF-PA-10000249', 'Office Supplies', 'Paper', 'Easy-Staple Paper'),
('FUR-FU-10003664', 'Furniture', 'Furnishings', 'Electrix Swing Arm Lamp - Black'),
('TEC-PH-10000486', 'Technology', 'Phones', 'Plantronics HL10 Handset Lifter'),
('TEC-PH-10004093', 'Technology', 'Phones', 'Panasonic Kx-TS550'),
('OFF-ST-10003479', 'Office Supplies', 'Storage', 'Eldon Base for Storage Shelf - Platinum'),
('OFF-ST-10003282', 'Office Supplies', 'Storage', 'Advantus 10-Drawer Smoke Drawers'),
('TEC-AC-10000171', 'Technology', 'Accessories', 'Verbatim Single Layer Recordable Disc'),
('OFF-ST-10001713', 'Office Supplies', 'Storage', 'Gould Plastics 9-Pocket Panel Bin - Black'),
('TEC-AC-10002167', 'Technology', 'Accessories', 'Imation 8GB Micro USB 2.0 Flash Drive'),
('FUR-FU-10002963', 'Furniture', 'Furnishings', 'Master Caster Door Stop - Gray'),
('OFF-BI-10004817', 'Office Supplies', 'Binders', 'GBC Personal VeloBind Strips'),
('OFF-BI-10001249', 'Office Supplies', 'Binders', 'Avery Heavy-Duty EZD View Binder '),
('TEC-AC-10002402', 'Technology', 'Accessories', 'Razer Kraken PRO Over Ear Headset'),
('TEC-CO-10001449', 'Technology', 'Copiers', 'Hewlett Packard LaserJet 3310 Copier'),
('OFF-ST-10003994', 'Office Supplies', 'Storage', 'Belkin Center-Weighted Shelf - Gray'),
('OFF-ST-10003221', 'Office Supplies', 'Storage', 'Staple Magnet'),
('OFF-BI-10002225', 'Office Supplies', 'Binders', 'Square Ring Data Binders Covers'),
('TEC-PH-10002584', 'Technology', 'Phones', 'Samsung Galaxy S4'),
('FUR-FU-10002364', 'Furniture', 'Furnishings', 'Eldon Desk Accessories - Oak'),
('OFF-BI-10004022', 'Office Supplies', 'Binders', 'Acco Suede Grain Ring Binder'),
('FUR-BO-10004709', 'Furniture', 'Bookcases', 'Bush Westfield Bookcases - Cherry Finish'),
('OFF-ST-10004340', 'Office Supplies', 'Storage', 'Fellowes Mobile File Cart - Black'),
('TEC-AC-10001714', 'Technology', 'Accessories', 'Logitech MX Performance Wireless Mouse'),
('TEC-PH-10002844', 'Technology', 'Phones', 'Speck Products Candyshell Flip Case'),
('OFF-PA-10001289', 'Office Supplies', 'Paper', 'White Computer Printout Paper by Universal'),
('FUR-CH-10001854', 'Furniture', 'Chairs', 'Office Star Matrix Back Chair '),
('OFF-SU-10003567', 'Office Supplies', 'Supplies', 'Stiletto Hand Letter Openers'),
('OFF-BI-10001597', 'Office Supplies', 'Binders', 'Wilson Jones Ledger-Size - 2" Blue'),
('OFF-AP-10003287', 'Office Supplies', 'Appliances', 'Tripp Lite TLP810NET Broadband Surge'),
('OFF-EN-10001532', 'Office Supplies', 'Envelopes', 'Brown Kraft Recycled Envelopes'),
('OFF-EN-10003845', 'Office Supplies', 'Envelopes', 'Colored Envelopes'),
('OFF-PA-10002659', 'Office Supplies', 'Paper', 'Avoid Verbal Orders Carbonless Minifold Book'),
('OFF-LA-10000305', 'Office Supplies', 'Labels', 'Avery 495'),
('OFF-PA-10001019', 'Office Supplies', 'Paper', 'Xerox 1884');
-- products is done

SELECT * FROM sales;
ALTER TABLE sales
ADD COLUMN product_id VARCHAR(40);

INSERT INTO sales (order_id, customer_id, product_id, sales, quantity, discount, profit) VALUES
('CA-2016-152156', 'CG-12520', 'FUR-BO-10001798', 261.96, 2, NULL, 41.9136),
('CA-2016-138688', 'DV-13045', 'OFF-LA-10000240', 14.62, 2, NULL, 6.8714),
('US-2015-108966', 'SO-20335', 'FUR-TA-10000577', 957.5775, 5, 0.45, -383.031),
('CA-2014-115812', 'BH-11710', 'TEC-PH-10002033', 911.424, 4, 0.20, 68.3568),
('CA-2017-114412', 'AA-10480', 'OFF-PA-10002365', 15.552, 3, 0.20, 5.4432),
('CA-2016-161389', 'IM-15070', 'OFF-BI-10003656', 407.976, 3, 0.20, 132.5922),
('US-2015-118983', 'HP-14815', 'OFF-BI-10000756', 2.544, 3, 0.80, -3.816),
('CA-2014-105893', 'PK-19075', 'OFF-ST-10004186', 665.88, 6, NULL, 13.3176),
('CA-2014-167164', 'AG-10270', 'OFF-ST-10000107', 55.5, 2, NULL, 9.99),
('CA-2014-143336', 'ZD-21925', 'OFF-BI-10002215', 22.72, 4, 0.20, 7.384),
('CA-2016-137330', 'KB-16585', 'OFF-AP-10001492', 60.34, 7, NULL, 15.6884),
('US-2017-156909', 'SF-20065', 'FUR-CH-10002774', 71.372, 2, 0.30, -1.0196),
('CA-2015-106320', 'EB-13870', 'FUR-TA-10000577', 1044.63, 3, NULL, 240.2649),
('CA-2016-121755', 'EH-13945', 'OFF-BI-10001634', 11.648, 2, 0.20, 4.2224),
('US-2015-150630', 'TB-21520', 'OFF-AR-10001683', 15.76, 2, 0.20, 3.546),
('CA-2017-107727', 'MA-17560', 'OFF-PA-10000249', 29.472, 3, 0.20, 9.9468),
('CA-2016-117590', 'GH-14485', 'FUR-FU-10003664', 190.92, 5, 0.60, -147.963),
('CA-2015-117415', 'SN-20710', 'TEC-PH-10000486', 371.168, 4, 0.20, 41.7564),
('CA-2017-120999', 'LC-16930', 'TEC-PH-10004093', 147.168, 4, 0.20, 16.5564),
('CA-2016-101343', 'RA-19885', 'OFF-ST-10003479', 77.88, 2, NULL, 3.894),
('CA-2017-139619', 'ES-14080', 'OFF-ST-10003282', 95.616, 2, 0.20, 9.5616),
('CA-2016-118255', 'ON-18715', 'TEC-AC-10000171', 45.98, 2, NULL, 19.7714),
('CA-2014-146703', 'PO-18865', 'OFF-ST-10001713', 211.96, 4, NULL, 8.4784),
('CA-2016-169194', 'LH-16900', 'TEC-AC-10002167', 45, 3, NULL, 4.95),
('CA-2017-164756', 'SS-20140', 'FUR-FU-10002963', 20.32, 4, NULL, 6.9088),
('CA-2017-122028', 'CK-12205', 'OFF-BI-10004817', 10.782, 3, 0.70, -7.9068),
('US-2015-165512', 'VS-21820', 'OFF-BI-10001249', 7.656, 6, 0.80, -13.0152),
('CA-2015-140557', 'TN-21040', 'TEC-AC-10002402', 559.93, 7, NULL, 167.979),
('US-2017-135013', 'HR-14830', 'TEC-CO-10001449', 2399.96, 5, 0.20, 839.986),
('CA-2017-111220', 'JS-15595', 'OFF-ST-10003994', 235.92, 5, 0.20, -44.235),
('US-2017-149006', 'BN-11470', 'OFF-ST-10003221', 10.68, 1, NULL, 2.8836),
('CA-2017-149468', 'AR-10405', 'OFF-BI-10002225', 41.28, 2, NULL, 19.8144),
('CA-2016-140249', 'SW-20455', 'TEC-PH-10002584', 1001.584, 2, 0.20, 125.198),
('US-2017-135503', 'JE-16165', 'FUR-FU-10002364', 14.76, 2, NULL, 4.2804),
('CA-2014-126277', 'LH-16900', 'OFF-BI-10004022', 2.502, 3, 0.70, -2.0016),
('US-2017-115301', 'VG-21790', 'FUR-BO-10004709', 115.96, 2, NULL, 25.5112),
('CA-2017-168942', 'EM-13960', 'OFF-ST-10004340', 186.54, 3, NULL, 50.3658),
('US-2017-128398', 'EM-13825', 'TEC-AC-10001714', 159.56, 4, NULL, 59.0372),
('CA-2015-104115', 'JH-15910', 'TEC-PH-10002844', 55.984, 2, 0.20, 4.1988),
('CA-2014-142510', 'NP-18700', 'OFF-PA-10001289', 124.032, 4, 0.20, 44.9616),
('CA-2014-124247', 'SH-20635', 'FUR-CH-10001854', 1403.92, 5, 0.20, 70.196),
('CA-2016-105473', 'BM-11785', 'OFF-SU-10003567', 28.8, 3, NULL, 0.864),
('CA-2015-102806', 'HG-14965', 'OFF-BI-10001597', 24.588, 2, 0.70, -18.0312),
('CA-2017-121706', 'BM-11140', 'OFF-AP-10003287', 356.79, 7, NULL, 99.9012),
('CA-2017-109211', 'PS-19045', 'OFF-EN-10001532', 16.98, 1, NULL, 8.49),
('CA-2015-134257', 'MS-17710', 'OFF-EN-10003845', 7.38, 2, NULL, 3.3948),
('CA-2015-137925', 'JL-15235', 'OFF-PA-10002659', 23.66, 7, NULL, 10.8836),
('CA-2016-140046', 'KM-16660', 'OFF-LA-10000305', 18.9, 3, NULL, 8.694);


SELECT * FROM sales;

SELECT * FROM shipments;

ALTER TABLE shipments
DROP PRIMARY KEY;
INSERT INTO shipments (order_id, ship_date, ship_mode, country, city, state, region)
VALUES

('CA-2016-152156', '2016-11-11', 'Second Class', 'United States', 'Henderson', 'Kentucky', 'South'),
('CA-2016-138688', '2016-06-16', 'Second Class', 'United States', 'Los Angeles', 'California', 'West'),
('US-2015-108966', '2015-10-18', 'Standard Class', 'United States', 'Fort Lauderdale', 'Florida', 'South'),
('CA-2014-115812', '2014-06-14', 'Standard Class', 'United States', 'Los Angeles', 'California', 'West'),
('CA-2017-114412', '2017-04-20', 'Standard Class', 'United States', 'Concord', 'North Carolina', 'South'),
('CA-2016-161389', '2016-12-10', 'Standard Class', 'United States', 'Seattle', 'Washington', 'West'),
('US-2015-118983', '2015-11-26', 'Standard Class', 'United States', 'Fort Worth', 'Texas', 'Central'),
('CA-2014-105893', '2014-11-18', 'Standard Class', 'United States', 'Madison', 'Wisconsin', 'Central'),
('CA-2014-167164', '2014-05-15', 'Second Class', 'United States', 'West Jordan', 'Utah', 'West'),
('CA-2014-143336', '2014-09-01', 'Second Class', 'United States', 'San Francisco', 'California', 'West'),
('CA-2016-137330', '2016-12-13', 'Standard Class', 'United States', 'Fremont', 'Nebraska', 'Central'),
('US-2017-156909', '2017-07-18', 'Second Class', 'United States', 'Philadelphia', 'Pennsylvania', 'East'),
('CA-2015-106320', '2015-09-30', 'Standard Class', 'United States', 'Orem', 'Utah', 'West'),
('CA-2016-121755', '2016-01-20', 'Second Class', 'United States', 'Los Angeles', 'California', 'West'),
('US-2015-150630', '2015-09-21', 'Standard Class', 'United States', 'Philadelphia', 'Pennsylvania', 'East'),
('CA-2017-107727', '2017-10-23', 'Second Class', 'United States', 'Houston', 'Texas', 'Central'),
('CA-2016-117590', '2016-12-10', 'First Class', 'United States', 'Richardson', 'Texas', 'Central'),
('CA-2015-117415', '2015-12-31', 'Standard Class', 'United States', 'Houston', 'Texas', 'Central'),
('CA-2017-120999', '2017-09-15', 'Standard Class', 'United States', 'Naperville', 'Illinois', 'Central'),
('CA-2016-101343', '2016-07-22', 'Standard Class', 'United States', 'Los Angeles', 'California', 'West'),
('CA-2017-139619', '2017-09-23', 'Standard Class', 'United States', 'Melbourne', 'Florida', 'South'),
('CA-2016-118255', '2016-03-13', 'First Class', 'United States', 'Eagan', 'Minnesota', 'Central'),
('CA-2014-146703', '2014-10-25', 'Second Class', 'United States', 'Westland', 'Michigan', 'Central'),
('CA-2016-169194', '2016-06-25', 'Standard Class', 'United States', 'Dover', 'Delaware', 'East'),
('CA-2017-164756', '2017-09-22', 'Standard Class', 'United States', 'Columbus', 'Georgia', 'South'),
('CA-2017-122028', '2017-08-25', 'Standard Class', 'United States', 'Lakewood', 'Ohio', 'East'),
('US-2015-165512', '2015-05-26', 'Second Class', 'United States', 'Naperville', 'Illinois', 'Central'),
('CA-2015-140557', '2015-09-11', 'Standard Class', 'United States', 'New York City', 'New York', 'East'),
('US-2017-135013', '2017-07-24', 'Same Day', 'United States', 'Huntington Beach', 'California', 'West'),
('CA-2017-111220', '2017-09-08', 'Standard Class', 'United States', 'Chicago', 'Illinois', 'Central'),
('US-2017-149006', '2017-12-08', 'Second Class', 'United States', 'Brentwood', 'California', 'West'),
('CA-2017-149468', '2017-05/20', 'Same Day', 'United States', 'Trenton', 'Michigan', 'Central'),
('CA-2016-140249', '2016-10/03', 'Standard Class', 'United States', 'Seattle', 'Washington', 'West'),
('US-2017-135503', '2017-12/15', 'Standard Class', 'United States', 'North Charleston', 'South Carolina', 'South'),
('CA-2014-126277', '2014-09/18', 'Second Class', 'United States', 'Columbus', 'Ohio', 'East'),
('US-2017-115301', '2017-08/02', 'Standard Class', 'United States', 'Seattle', 'Washington', 'West'),
('CA-2017-168942', '2017-08/05', 'Second Class', 'United States', 'San Francisco', 'California', 'West'),
('US-2017-128398', '2017-05/05', 'Second Class', 'United States', 'Los Angeles', 'California', 'West'),
('CA-2015-104115', '2015-06/16', 'Standard Class', 'United States', 'West Palm Beach', 'Florida', 'South'),
('CA-2014-142510', '2014-12/29', 'Standard Class', 'United States', 'Chicago', 'Illinois', 'Central'),
('CA-2014-124247', '2014-12/21', 'Standard Class', 'United States', 'Sacramento', 'California', 'West'),
('CA-2016-105473', '2016-04/18', 'Second Class', 'United States', 'Seattle', 'Washington', 'West'),
('CA-2015-102806', '2015-05/28', 'Standard Class', 'United States', 'Philadelphia', 'Pennsylvania', 'East'),
('CA-2017-121706', '2017-03/02', 'Standard Class', 'United States', 'Santa Barbara', 'California', 'West'),
('CA-2017-109211', '2017-04/10', 'Standard Class', 'United States', 'New York City', 'New York', 'East'),
('CA-2015-134257', '2015-03/19', 'Second Class', 'United States', 'Auburn', 'Alabama', 'South'),
('CA-2015-137925', '2015-12/04', 'Standard Class', 'United States', 'New York City', 'New York', 'East'),
('CA-2016-140046', '2016-08/03', 'Standard Class', 'United States', 'Los Angeles', 'California', 'West'),
('CA-2016-140382', '2016-06/25', 'Second Class', 'United States', 'San Francisco', 'California', 'West');

-- Identify the most and least profitable products, 
-- use products table, find the sum of profit from sales table
-- create 

SELECT p.product_id, p.product_name, subquery.profit
FROM products p
JOIN (
    SELECT s.product_id,
	SUM(s.profit) AS profit
    FROM sales s
    GROUP BY s.product_id
) subquery
ON
    p.product_id = subquery.product_id
WHERE subquery.profit = (
    SELECT MAX(profit) 
    FROM (SELECT SUM(s.profit) AS profit
	FROM sales s
	GROUP BY s.product_id
    ) max_subquery
)
OR subquery.profit = (
    SELECT MIN(profit) 
    FROM (SELECT SUM(s.profit) AS profit
	FROM sales s
	GROUP BY s.product_id
    ) min_subquery
);
-- DONE



-- Highest performing products in terms of sales
SELECT
    p.product_name,
    SUM(s.sales) AS total_sales
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY
    total_sales ASC -- als DESC for least profitable
    LIMIT 10; 




  -- To find the product category that has the highest sales and profit (only need one)
 -- need the products category and find:
 -- total of sales and the profits -> from sales table (join through product id)
 -- need largest numbers limit it to one
  --
SELECT
    p.product_category,
    SUM(s.sales) AS total_sales,
    SUM(s.profit) AS total_profit
FROM products p
JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_category
ORDER BY
    total_sales DESC, total_profit DESC
LIMIT 1;


-- created in the view tab, that only shows the area (city, region) from shipments table:

-- CREATE 
    -- ALGORITHM = UNDEFINED 
    -- DEFINER = `root`@`localhost` 
    -- SQL SECURITY DEFINER
-- VIEW `area_list` AS
   -- SELECT DISTINCT
       -- `shipments`.`city` AS `city`,
       -- `shipments`.`region` AS `region`
   -- FROM
       -- `shipments`

-- SELECT * FROM area_list;

SELECT * FROM region_list;

drop view region_list;
drop view city_list;

-- Most Profitable Region
SELECT sh.region, SUM(s.profit) AS total_profit
FROM shipments sh
JOIN sales s ON sh.order_id = s.order_id
GROUP BY sh.region
ORDER BY total_profit DESC
LIMIT 1; -- West $1756.20

-- Least Profitable Region
SELECT sh.region, SUM(s.profit) AS total_profit
FROM shipments sh
JOIN sales s ON sh.order_id = s.order_id
GROUP BY sh.region
ORDER BY total_profit ASC
LIMIT 1; -- South $-307.34


CREATE VIEW brief_order_info AS
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    p.product_id,
    p.product_name
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
JOIN
    products p ON o.product_id = p.product_id;
    
    SELECT * FROM brief_order_info;
    

-- Grouping orders by customer and calculating the total order amount that is greater than $300
-- incorporate the HAVING function
SELECT
    o.customer_id,
    COUNT(o.order_id) AS total_orders,
    SUM(sales) AS total_order_amount
FROM
    orders o
JOIN sales s ON o.customer_id = s.customer_id
GROUP BY
    customer_id
HAVING
    total_order_amount > 300;



-- Retrieve a list of customers who placed the most orders:
SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY order_count DESC
LIMIT 10; -- DONE


CREATE VIEW brief_order_info AS
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    p.product_id,
    p.product_name
FROM
    customers c
JOIN
    orders o ON c.customer_id = o.customer_id
JOIN
    products p ON o.product_id = p.product_id;
    
    
SELECT * FROM brief_order_info;

-- use view
-- see which customers (id) order total was greater than $300

SELECT
    o.customer_id,
    COUNT(o.order_id) AS total_orders,
    SUM(sales) AS total_order_amount
FROM
    orders o
JOIN sales s ON o.customer_id = s.customer_id
GROUP BY
    customer_id
HAVING
    total_order_amount > 300;
    -- done 

-- create a stored function that you can use to find the total profits of each product category:

DELIMITER //

CREATE FUNCTION CalculateTotalProfit(productCategory VARCHAR(40)) 
RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE totalProfit DECIMAL(10, 2);
    SELECT SUM(profit) INTO totalProfit
    FROM sales
    WHERE product_id IN (SELECT product_id FROM products WHERE product_category = productCategory);
    RETURN totalProfit;
END;
//
DELIMITER ;

-- find the total profit of each category
SELECT CalculateTotalProfit('Office Supplies') AS
 TotalProfitForOfficeSupplies;
-- DONE
SELECT CalculateTotalProfit('Furniture') AS
 TotalProfitForfurniture;

SELECT CalculateTotalProfit('Technology') AS
 TotalProfitForTechnology;





    
 