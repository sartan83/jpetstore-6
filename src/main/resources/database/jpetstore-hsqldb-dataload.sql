--
--    Copyright 2010-2026 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       https://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

INSERT INTO sequence VALUES('ordernum', 1000);

INSERT INTO signon VALUES('j2ee','j2ee');
INSERT INTO signon VALUES('ACID','ACID');

INSERT INTO account VALUES('j2ee','yourname@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');
INSERT INTO account VALUES('ACID','acid@yourdomain.com','ABC', 'XYX', 'OK', '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA',  '555-555-5555');

INSERT INTO profile VALUES('j2ee','english','KNITWEAR',1,1);
INSERT INTO profile VALUES('ACID','english','SHIRTS',1,1);

INSERT INTO bannerdata VALUES ('OUTERWEAR','<image src="/jpetstore/images/banner_outerwear.svg">');
INSERT INTO bannerdata VALUES ('SHIRTS','<image src="/jpetstore/images/banner_shirts.svg">');
INSERT INTO bannerdata VALUES ('KNITWEAR','<image src="/jpetstore/images/banner_knitwear.svg">');
INSERT INTO bannerdata VALUES ('TROUSERS','<image src="/jpetstore/images/banner_trousers.svg">');
INSERT INTO bannerdata VALUES ('ACCESSORY','<image src="/jpetstore/images/banner_accessories.svg">');

INSERT INTO category VALUES ('OUTERWEAR','Outerwear','Down jackets, parkas and gilets');
INSERT INTO category VALUES ('KNITWEAR','Knitwear','Cashmere, merino and virgin wool knits');
INSERT INTO category VALUES ('TROUSERS','Trousers','Cargo, track and tailored trousers');
INSERT INTO category VALUES ('SHIRTS','Shirts','Polo and button-down shirts');
INSERT INTO category VALUES ('ACCESSORY','Accessories','Beanies and scarves');

INSERT INTO product VALUES ('OW-PK-01','OUTERWEAR','Hooded Parka','<image src="/jpetstore/images/parka.svg">Long down parka with detachable hood');
INSERT INTO product VALUES ('OW-RJ-02','OUTERWEAR','Rain Jacket','<image src="/jpetstore/images/rainjacket.svg">Water-repellent hooded shell jacket');
INSERT INTO product VALUES ('OW-DG-01','OUTERWEAR','Down Gilet','<image src="/jpetstore/images/gilet.svg">Lightweight quilted down gilet');
INSERT INTO product VALUES ('OW-DJ-02','OUTERWEAR','Down Jacket','<image src="/jpetstore/images/downjacket.svg">Lacquered nylon down jacket with tonal quilting');
INSERT INTO product VALUES ('KN-CC-01','KNITWEAR','Cashmere Crewneck','<image src="/jpetstore/images/crewneck.svg">Pure cashmere crewneck sweater');
INSERT INTO product VALUES ('KN-WC-02','KNITWEAR','Wool Cardigan','<image src="/jpetstore/images/cardigan.svg">Virgin wool cardigan with tricolor trim');
INSERT INTO product VALUES ('KN-MT-01','KNITWEAR','Merino Turtleneck','<image src="/jpetstore/images/turtleneck.svg">Fine-gauge merino wool turtleneck');
INSERT INTO product VALUES ('KN-ZP-01','KNITWEAR','Padded Zip Cardigan','<image src="/jpetstore/images/zipcardigan.svg">Knit cardigan with padded down front');
INSERT INTO product VALUES ('KN-ZT-02','KNITWEAR','Tricolor Zip Sweater','<image src="/jpetstore/images/zipsweater.svg">Ribbed zip-up sweater with tricolor stripe');
INSERT INTO product VALUES ('KN-CV-01','KNITWEAR','Cable Knit Vest','<image src="/jpetstore/images/vest.svg">Chunky cable knit sleeveless vest');
INSERT INTO product VALUES ('TR-TP-01','TROUSERS','Track Pants','<image src="/jpetstore/images/trackpants.svg">Cotton fleece track pants with side band');
INSERT INTO product VALUES ('TR-CG-02','TROUSERS','Cargo Trousers','<image src="/jpetstore/images/cargo.svg">Stretch gabardine cargo trousers');
INSERT INTO product VALUES ('SH-PL-01','SHIRTS','Polo Shirt','<image src="/jpetstore/images/polo.svg">Cotton piquet polo with logo patch');
INSERT INTO product VALUES ('SH-OX-02','SHIRTS','Oxford Shirt','<image src="/jpetstore/images/oxford.svg">Cotton poplin button-down shirt');
INSERT INTO product VALUES ('AC-BN-01','ACCESSORY','Wool Beanie','<image src="/jpetstore/images/beanie.svg">Ribbed virgin wool beanie');
INSERT INTO product VALUES ('AC-SC-02','ACCESSORY','Cashmere Scarf','<image src="/jpetstore/images/scarf.svg">Pure cashmere scarf with fringed edges');

INSERT INTO supplier VALUES (1,'XYZ Apparel','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797');
INSERT INTO supplier VALUES (2,'ABC Apparel','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');

INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-1','OW-PK-01',1850.00,740.00,1,'P','Large');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-2','OW-PK-01',1850.00,740.00,1,'P','Small');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-3','OW-RJ-02',950.00,380.00,1,'P','Medium');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-4','OW-DG-01',790.00,316.00,1,'P','Black');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-5','OW-DG-01',790.00,316.00,1,'P','White');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-6','KN-CC-01',890.00,356.00,1,'P','Large');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-7','KN-CC-01',890.00,356.00,1,'P','Small');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-8','KN-WC-02',720.00,288.00,1,'P','Medium');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-9','KN-MT-01',590.00,236.00,1,'P','Black');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-10','KN-MT-01',590.00,236.00,1,'P','Ivory');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-11','TR-TP-01',390.00,156.00,1,'P','Medium');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-12','TR-TP-01',390.00,156.00,1,'P','Large');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-13','TR-CG-02',420.00,168.00,1,'P','Size 50');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-14','SH-PL-01',450.00,180.00,1,'P','Long Sleeve');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-15','SH-PL-01',350.00,140.00,1,'P','Short Sleeve');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-16','SH-OX-02',420.00,168.00,1,'P','Slim Fit');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-17','SH-OX-02',420.00,168.00,1,'P','Regular Fit');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-18','AC-BN-01',350.00,140.00,1,'P','Black');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-19','AC-SC-02',490.00,196.00,1,'P','Grey');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-20','OW-DJ-02',1450.00,580.00,1,'P','Black');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-21','OW-DJ-02',1450.00,580.00,1,'P','Navy');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-22','KN-ZT-02',950.00,380.00,1,'P','Small');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-23','KN-ZT-02',950.00,380.00,1,'P','Medium');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-24','KN-ZT-02',950.00,380.00,1,'P','Large');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-25','KN-ZT-02',950.00,380.00,1,'P','X-Large');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-26','KN-CV-01',550.00,220.00,1,'P','Large');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-27','KN-CV-01',550.00,220.00,1,'P','Small');
INSERT INTO  item (itemid, productid, listprice, unitcost, supplier, status, attr1) VALUES('EST-28','KN-ZP-01',1150.00,460.00,1,'P','Medium');

INSERT INTO inventory (itemid, qty ) VALUES ('EST-1',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-2',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-3',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-4',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-5',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-6',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-7',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-8',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-9',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-10',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-11',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-12',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-13',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-14',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-15',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-16',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-17',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-18',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-19',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-20',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-21',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-22',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-23',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-24',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-25',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-26',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-27',10000);
INSERT INTO inventory (itemid, qty ) VALUES ('EST-28',10000);

