DROP SCHEMA reis;
CREATE SCHEMA reis;

CREATE TABLE reis.carrer (
	idCarrer int(11) NOT NULL AUTO_INCREMENT,
	nombre varchar(2000)  NOT NULL,
	PRIMARY KEY (idCarrer)
);

CREATE TABLE reis.tram (
	idTram INT NOT NULL AUTO_INCREMENT,
	nomTram VARCHAR(45) NOT NULL,
	sMin int(11)  NOT NULL,
	sMax int(11)  NOT NULL,
	PMin int(11)  NOT NULL,
	PMax int(11)  NOT NULL,
    idCarrer INT NOT NULL,
	PRIMARY KEY (idTram),
	INDEX carrer_trams_fk_idx (idCarrer ASC),
	CONSTRAINT carrer_trams_fk 
	FOREIGN KEY (idCarrer) 
	REFERENCES reis.carrer (idCarrer)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION);

CREATE TABLE reis.preu (
	idTamanyPaquet int(11) NOT NULL AUTO_INCREMENT,
	tamanyPaquet varchar(50) NOT NULL,
	preu INT(11) NOT NULL ,
	PRIMARY KEY (idTamanyPaquet)
);

CREATE TABLE reis.paquet (
	idPaquet INT NOT NULL AUTO_INCREMENT,
	portal INT(3) NULL,
	nom VARCHAR(500) NULL,
	telefon INT(6) NULL,
	observacions VARCHAR(2000) NULL,
	idTram INT(11) NOT NULL,
	idTamanyPaquet INT(11) NOT NULL,
	PRIMARY KEY (idPaquet),
	INDEX tram_paquet_fk_idx (idTram ASC),
	INDEX preu_paquet_fk_idx (idTamanyPaquet ASC),
	CONSTRAINT tram_paquet_fk
	  FOREIGN KEY (idTram)
	  REFERENCES reis.tram (idTram)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION,
	CONSTRAINT preu_paquet_fk
	  FOREIGN KEY (idTamanyPaquet)
	  REFERENCES reis.preu (idTamanyPaquet)
	  ON DELETE NO ACTION
	  ON UPDATE NO ACTION
);

INSERT INTO reis.carrer (idCarrer,nombre) VALUES (1,'Alfons I');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (2,'Àngel Guimerà');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (3,'Anselm Clavé');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (4,'Antoni Gaudí');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (5,'Ausies Marc');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (6,'Bagà');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (7,'Beatriu Queralt');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (8,'Bons Aires');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (9,'Cadí');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (10,'Camí Fondo');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (11,'Carreró de la Riera');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (12,'Carreró de Virgili');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (13,'Carreró Jaume Balmes');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (14,'Castell');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (15,'Castellet');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (16,'Castillejos');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (17,'Celler');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (18,'Comte Sicart');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (19,'Creus');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (20,'de Reus');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (21,'Diana');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (22,'Doctor Gibert');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (23,'Equador');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (24,'Era del Delme');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (25,'Eres Altes');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (26,'Escorxador');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (27,'Estadi');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (28,'Estrella');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (29,'Feredat');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (30,'Ferrers');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (31,'Fra Joan Ferrando Salvadó');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (32,'Francesc Macià');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (33,'Francesc Martí Padró');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (34,'Galceran de Pinós');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (35,'Generalitat');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (36,'Heura');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (37,'Hort');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (38,'Hort del Colomí');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (39,'Hort del Pep');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (40,'Hort Torrell');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (41,'Horta de Novella');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (42,'Hospital');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (43,'Jacint Verdaguer');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (44,'Jaume Balmes');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (45,'Joan Fuster');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (46,'Joan Salvador i Voltes');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (47,'Joanot Martorell');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (48,'Josep Carner');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (49,'Josep M. De Segarra');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (50,'Josep M. Folch i Torres');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (51,'Josep Viçenc Foix');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (52,'La Font');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (53,'Llevant');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (54,'Major');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (55,'Maragall');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (56,'Mas Calvó');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (57,'Mas d\'''en Gras');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (58,'Migdia');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (59,'Miramar');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (60,'Mola');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (61,'Monterols');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (62,'Montseny');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (63,'Mossen Lluis Batlle');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (64,'Mossen Salvador Babot');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (65,'Nou');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (66,'Occident');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (67,'Oest');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (68,'Olivar');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (69,'Onze de Setembre');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (70,'Parc de la Formiga');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (71,'Parc de la Riera');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (72,'Passatge del Pí');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (73,'Patró');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (74,'Pere de Cardona');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (75,'Pere Molas');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (76,'Pirineus');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (77,'Plaça Alexandre Fleming');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (78,'Plaça de la Constitució');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (79,'Plaça de l\'''Abat Aureli');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (80,'Plaça de les Creus');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (81,'Plaça del Pí');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (82,'Plaça dels Grallers');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (83,'Plaça d\'''Estudis');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (84,'Plaça Església');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (85,'Plaça Eugeni d\'''Ors');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (86,'Plaça Joan Kies Hellmon');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (87,'Plaça Joan Miró');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (88,'Plaça Maria Aurelia Capmany');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (89,'Plaça Martí Pol');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (90,'Plaça Paisos Catalans');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (91,'Plaça Ramon Muntaner');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (92,'Plaça Sant Esteve');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (93,'Plaça Voltes');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (94,'Ponent');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (95,'Pou');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (96,'Racó');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (97,'Rambla Catalunya');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (98,'Ramon d\'''Olzina');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (99,'Ramon Llull');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (100,'Raval de la Mar');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (101,'Requet de Fèlix');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (102,'Riera');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (103,'Riudoms');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (104,'Robert Aguiló');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (105,'Salauris');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (106,'Salvador Espriu');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (107,'Sant Antoni');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (108,'Sant Bernat Calvó');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (109,'Sant Jordi');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (110,'Sant Josep');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (111,'Sant Pere');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (112,'Santa Bàrbara');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (113,'Santiago Russinyol');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (114,'Segre');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (115,'Sir Esteve Morell Scott');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (116,'Tarragona');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (117,'Tenor Josep Foraster');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (118,'Tirant Lo Blanc');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (119,'Valenti Almirall');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (120,'Vent');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (121,'Verge de la Pineda');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (122,'Verge de Montserrat');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (123,'Verge Fuentsanta');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (124,'Via Màxima');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (125,'Vic');
INSERT INTO reis.carrer (idCarrer,nombre) VALUES (126,'Ciutat de Melbourne');

INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (1, 'Castell', 1, 99, 2, 100, 84);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (2, 'Castell', 1, 19, 2, 16, 65);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (3, 'Castell', 1, 17, 2, 16, 121);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (4, 'Castell', 1, 13, 2, 24, 103);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (5, 'Castell', 1, 29, 2, 30, 61);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (6, 'Castell', 1, 23, 2, 18, 19);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (7, 'Castell', 1, 19, 2, 24, 108);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (8, 'Castell', 1, 9, 2, 50, 54);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (9, 'Castell', 1, 7, 2, 18, 73);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (10, 'Castell', 1, 99, 2, 100, 12);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (11, 'Castell', 1, 19, 2, 30, 95);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (12, 'Castell', 1, 39, 2, 18, 110);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (13, 'Castell', 1, 49, 2, 50, 93);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (14, 'Castell', 1, 29, 2, 32, 18);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (15, 'Castell', 1, 15, 2, 14, 101);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (16, 'Castell', 31, 63, 34, 80, 18);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (17, 'Castell', 1, 99, 2, 100, 37);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (18, 'Castell', 1, 99, 2, 100, 16);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (19, 'Castell', 1, 99, 2, 100, 80);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (20, 'Castell', 1, 27, 2, 28, 42);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (21, 'Castell', 25, 47, 20, 36, 19);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (22, 'Castell', 1, 99, 2, 100, 96);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (23, 'Castell', 1, 15, 2, 6, 74);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (24, 'Castell', 1, 99, 2, 100, 17);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (25, 'Castell', 1, 19, 2, 20, 14);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (26, 'Castell', 47, 57, 60, 66, 122);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (27, 'Castell', 1, 99, 2, 100, 1);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (28, 'Castell', 0, 0, 48, 50, 122);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (29, 'Castell', 1, 99, 2, 100, 7);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (30, 'Castell', 1, 5, 2, 4, 20);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (31, 'Castell', 31, 55, 32, 50, 109);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (32, 'Castell', 0, 0, 6, 8, 20);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (33, 'Castell', 0, 0, 56, 80, 35);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (34, 'Castell', 1, 99, 2, 100, 10);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (35, 'Castell', 35, 39, 0, 0, 61);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (36, 'Castell', 0, 0, 28, 30, 109);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (37, 'Castell', 31, 33, 32, 36, 61);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (38, 'Castell', 35, 43, 26, 46, 122);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (39, 'Castell', 1, 99, 2, 100, 46);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (40, 'Castell', 1, 23, 2, 24, 107);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (41, 'Castell', 1, 7, 2, 18, 52);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (42, 'Castell', 1, 9, 2, 8, 55);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (43, 'Castell', 1, 15, 2, 10, 44);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (44, 'Castell', 1, 49, 2, 50, 13);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (45, 'Castell', 1, 99, 2, 100, 67);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (46, 'Castell', 1, 99, 2, 64, 94);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (47, 'Castell', 1, 51, 20, 4, 52);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (48, 'Castell', 1, 9, 2, 12, 122);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (49, 'Castell', 1, 13, 2, 100, 56);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (50, 'Castell', 1, 99, 2, 136, 4);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (51, 'Castell', 15, 125, 14, 100, 56);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (52, 'Castell', 1, 99, 2, 100, 29);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (53, 'Castell', 1, 99, 2, 100, 27);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (54, 'Castell', 29, 99, 22, 100, 113);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (55, 'Castell', 1, 99, 2, 100, 64);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (56, 'Castell', 1, 99, 2, 100, 31);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (57, 'Castell', 1, 99, 2, 100, 87);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (58, 'Castell', 1, 99, 2, 100, 118);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (59, 'Castell', 17, 99, 40, 100, 40);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (60, 'Illes', 1, 99, 2, 100, 78);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (61, 'Illes', 1, 23, 2, 48, 34);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (62, 'Illes', 1, 99, 2, 100, 15);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (63, 'Illes', 0, 0, 34, 40, 41);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (64, 'Illes', 0, 0, 502, 64, 34);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (65, 'Illes', 1, 99, 2, 100, 72);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (66, 'Illes', 1, 99, 14, 100, 81);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (67, 'Illes', 0, 0, 66, 20, 104);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (68, 'Illes', 27, 33, 2, 88, 34);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (69, 'Illes', 1, 99, 0, 100, 86);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (70, 'Illes', 47, 89, 2, 0, 98);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (71, 'Illes', 1, 1, 2, 2, 90);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (72, 'Illes', 1, 99, 2, 100, 24);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (73, 'Illes', 1, 99, 2, 100, 85);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (74, 'Illes', 1, 31, 2, 30, 124);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (75, 'Illes', 1, 27, 2, 28, 51);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (76, 'Illes', 1, 99, 2, 100, 47);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (77, 'Illes', 29, 99, 30, 100, 51);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (78, 'Illes', 1, 99, 2, 100, 99);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (79, 'Illes', 1, 99, 2, 100, 50);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (80, 'Illes', 0, 0, 2, 100, 75);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (81, 'Illes', 1, 99, 2, 100, 88);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (82, 'Illes', 33, 99, 32, 100, 124);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (83, 'Illes', 1, 99, 2, 100, 91);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (84, 'Illes', 1, 99, 2, 100, 5);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (85, 'Illes', 1, 99, 2, 100, 48);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (86, 'Illes', 1, 99, 0, 0, 75);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (87, 'Illes', 1, 99, 2, 100, 49);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (88, 'Illes', 1, 99, 2, 100, 100);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (89, 'Illes', 1, 3, 4, 4, 90);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (90, 'Illes', 1, 21, 2, 20, 102);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (91, 'Illes', 1, 99, 2, 100, 36);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (92, 'Illes', 31, 45, 40, 100, 98);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (93, 'Illes', 1, 99, 2, 100, 71);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (94, 'Illes', 1, 99, 2, 100, 53);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (95, 'Illes', 1, 19, 2, 18, 28);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (96, 'Illes', 1, 99, 1, 100, 59);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (97, 'Illes', 1, 99, 2, 100, 25);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (98, 'Illes', 1, 99, 2, 100, 89);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (99, 'Illes', 1, 99, 2, 100, 21);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (100, 'Illes', 1, 99, 2, 100, 58);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (101, 'Illes', 1, 99, 2, 100, 23);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (102, 'Illes', 1, 99, 2, 100, 68);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (103, 'Illes', 21, 99, 20, 100, 28);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (104, 'Illes', 1, 99, 2, 100, 126);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (105, 'Illes', 1, 99, 2, 100, 63);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (106, 'Illes', 1, 99, 2, 100, 57);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (107, 'Illes', 1, 99, 2, 100, 66);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (108, 'Illes', 1, 99, 2, 100, 76);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (109, 'Illes', 1, 11, 2, 14, 98);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (110, 'Illes', 31, 151, 58, 150, 52);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (111, 'Illes', 13, 29, 16, 38, 98);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (112, 'Illes', 1, 99, 2, 100, 32);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (113, 'Illes', 1, 99, 2, 100, 45);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (114, 'Illes', 1, 23, 2, 100, 43);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (115, 'Illes', 1, 99, 2, 100, 2);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (116, 'Illes', 1, 99, 2, 100, 77);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (117, 'Illes', 1, 99, 2, 100, 123);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (118, 'Illes', 25, 99, 12, 100, 43);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (119, 'Illes', 1, 99, 2, 100, 120);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (120, 'Illes', 1, 99, 2, 100, 119);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (121, 'Illes', 1, 21, 2, 24, 35);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (122, 'Illes', 1, 99, 2, 100, 82);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (123, 'Illes', 19, 27, 16, 20, 113);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (124, 'Illes', 1, 99, 2, 100, 69);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (125, 'Casc antic', 1, 99, 2, 100, 117);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (126, 'Casc antic', 1, 99, 2, 100, 3);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (127, 'Casc antic', 1, 99, 2, 100, 22);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (128, 'Casc antic', 17, 31, 16, 26, 101);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (129, 'Casc antic', 13, 99, 10, 100, 116);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (130, 'Casc antic', 33, 5, 28, 30, 101);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (131, 'Casc antic', 1, 99, 2, 100, 114);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (132, 'Casc antic', 37, 39, 32, 40, 101);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (133, 'Casc antic', 1, 99, 2, 100, 33);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (134, 'Casc antic', 1, 21, 2, 20, 39);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (135, 'Casc antic', 1, 19, 2, 22, 38);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (136, 'Casc antic', 1, 9, 2, 10, 115);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (137, 'Casc antic', 15, 57, 22, 58, 125);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (138, 'Casc antic', 1, 23, 2, 28, 41);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (139, 'Casc antic', 1, 31, 2, 12, 104);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (140, 'Casc antic', 11, 17, 12, 48, 115);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (141, 'Casc antic', 53, 99, 52, 100, 101);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (142, 'Casc antic', 1, 13, 2, 20, 125);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (143, 'Casc antic', 41, 51, 42, 50, 101);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (144, 'Casc antic', 1, 99, 2, 100, 6);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (145, 'Casc antic', 3, 99, 4, 100, 62);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (146, 'Casc antic', 9, 99, 6, 100, 105);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (147, 'Casc antic', 1, 0, 2, 0, 62);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (148, 'Casc antic', 5, 99, 0, 0, 97);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (149, 'Casc antic', 1, 7, 2, 4, 105);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (150, 'Casc antic', 1, 99, 2, 100, 9);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (151, 'Casc antic', 1, 3, 0, 0, 97);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (152, 'Casc antic', 1, 11, 2, 8, 116);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (153, 'Casc antic', 41, 101, 20, 100, 110);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (154, 'Casc antic', 0, 0, 2, 100, 97);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (155, 'Casc antic', 1, 99, 2, 100, 92);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (156, 'Casc antic', 25, 101, 28, 100, 111);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (157, 'Casc antic', 1, 99, 2, 100, 26);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (158, 'Casc antic', 69, 199, 70, 200, 107);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (159, 'Casc antic', 59, 155, 48, 156, 121);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (160, 'Casc antic', 1, 99, 2, 100, 83);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (161, 'Casc antic', 1, 99, 2, 100, 60);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (162, 'Casc antic', 19, 57, 16, 46, 121);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (163, 'Casc antic', 1, 23, 2, 26, 111);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (164, 'Casc antic', 1, 99, 2, 100, 112);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (165, 'Casc antic', 1, 99, 2, 100, 30);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (166, 'Casc antic', 25, 67, 26, 68, 107);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (167, 'Casc antic', 1, 99, 2, 100, 79);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (168, 'Casc antic', 1, 99, 2, 100, 8);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (169, 'Casc antic', 1, 99, 2, 100, 11);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (170, 'Casc antic', 23, 63, 22, 78, 102);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (171, 'Casc antic', 5, 33, 10, 24, 122);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (172, 'Casc antic', 1, 17, 2, 14, 113);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (173, 'Casc antic', 1, 27, 2, 26, 109);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (174, 'Casc antic', 1, 99, 2, 100, 70);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (175, 'Casc antic', 65, 149, 80, 150, 102);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (176, 'Casc antic', 23, 29, 26, 54, 35);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (177, 'Casc antic', 1, 15, 2, 38, 40);
INSERT INTO reis.tram (idtram,nomTram,sMin,sMax,pMin,pMax,idCarrer) VALUES (178, 'Casc antic', 1, 99, 2, 100, 106);


INSERT INTO reis.preu (tamanyPaquet, preu) VALUES ('Petit', '3');
INSERT INTO reis.preu (tamanyPaquet, preu) VALUES ('Mitja', '6');
INSERT INTO reis.preu (tamanyPaquet, preu) VALUES ('Gran', '9');
INSERT INTO reis.preu (idTamanyPaquet, tamanyPaquet, preu) VALUES ('4', 'Extra', '12');
INSERT INTO reis.preu (idTamanyPaquet, tamanyPaquet, preu) VALUES ('5', 'Creu Roja', '0');
INSERT INTO reis.preu (idTamanyPaquet, tamanyPaquet, preu) VALUES ('6', 'ASS', '1');
