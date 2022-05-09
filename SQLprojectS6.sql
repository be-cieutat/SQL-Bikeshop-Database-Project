DROP DATABASE IF EXISTS Velomax;
CREATE DATABASE Velomax;
USE Velomax; 

DROP TABLE IF EXISTS Model;
CREATE TABLE IF NOT EXISTS Model(
idmodel INTEGER, modelname VARCHAR(30), size VARCHAR(30), price INTEGER, modeltype VARCHAR(30),
introdate DATE, discontinuedate DATE, 
PRIMARY KEY(idmodel)
);

DROP TABLE IF EXISTS Fidelity;
CREATE TABLE IF NOT EXISTS Fidelity(
idprogram INTEGER, label VARCHAR(30), cost INTEGER, duration INTEGER, discount INTEGER, PRIMARY KEY(idprogram)
);

DROP TABLE IF EXISTS Parts;
CREATE TABLE IF NOT EXISTS Parts(
modelname VARCHAR(30), size VARCHAR(30), frame VARCHAR(5), handlebar VARCHAR(5), 
brakes VARCHAR(5), sadle VARCHAR(5), frontderailleur VARCHAR(5), backderailleur VARCHAR(5), 
frontwheel VARCHAR(5), backwheel VARCHAR(5), reflector VARCHAR(5), crankset VARCHAR(5),
computer VARCHAR(5), net VARCHAR(5),
PRIMARY KEY(modelname,size)
);

DROP TABLE IF EXISTS Supplier;
CREATE TABLE IF NOT EXISTS Supplier(
idSupplier INTEGER, Suppliername VARCHAR(30)
);

DROP TABLE IF EXISTS Stock;
CREATE TABLE IF NOT EXISTS Stock(
iditem INTEGER, labelStock VARCHAR(30), amount INTEGER
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders(
idOrder INTEGER, labelOrder VARCHAR(30)
);

DROP TABLE IF EXISTS ClientFirms;
CREATE TABLE IF NOT EXISTS ClientFirms(
idclientfirm INTEGER
);

DROP TABLE IF EXISTS ClientInd;
CREATE TABLE IF NOT EXISTS ClientInd(
idclientind INTEGER
);

INSERT INTO Model VALUES (101, "Kilimandjaro", "Adultes",569, "VTT",null,null);
INSERT INTO Model VALUES (102, "NorthPole", "Adultes",329, "VTT",null,null);
INSERT INTO Model VALUES (103, "MontBlanc", "Jeunes",399, "VTT",null,null);
INSERT INTO Model VALUES (104, "Hooligan", "Jeunes",199, "VTT",null,null);
INSERT INTO Model VALUES (105, "Orléans", "Hommes",229, "Vélo de course",null,null);
INSERT INTO Model VALUES (106, "Orléans", "Dames",229, "Vélo de course",null,null);
INSERT INTO Model VALUES (107, "BlueJay", "Hommes",349, "Vélo de course",null,null);
INSERT INTO Model VALUES (108, "BlueJay", "Dames",349, "Vélo de course",null,null);
INSERT INTO Model VALUES (109, "Trail Explorer", "Filles",129, "Classique",null,null);
INSERT INTO Model VALUES (110, "Trail Explorer", "Garçons",129, "Classique",null,null);
INSERT INTO Model VALUES (111, "Night Hawk", "Jeunes",189, "Classique",null,null);
INSERT INTO Model VALUES (112, "Tierra Verde", "Hommes",199, "Classique",null,null);
INSERT INTO Model VALUES (113, "Tierra Verde", "Dames",199, "Classique",null,null);
INSERT INTO Model VALUES (114, "Mud Zinger I", "Jeunes",279, "BMX",null,null);
INSERT INTO Model VALUES (115, "Mud Zinger II", "Adultes",359, "BMX",null,null);

INSERT INTO Fidelity VALUES (1, "Fidélio",15,1,5);
INSERT INTO Fidelity VALUES (2, "Fidélio Or",25,2,8);
INSERT INTO Fidelity VALUES (3, "Fidélio Platine",60,2,10);
INSERT INTO Fidelity VALUES (4, "Fidélio Max",100,3,12);

INSERT INTO Parts VALUES ("Kilimandjaro", "Adultes","C32","G7","F3","S88","DV133","DR56","R45","R46",null,"P12","O2",null);
INSERT INTO Parts VALUES ("NorthPole", "Adultes","C34","G7","F3","S88","DV17","DR87","R48","R47",null,"P12",null,null);
INSERT INTO Parts VALUES ("MontBlanc", "Jeunes","C76","G7","F3","S88","DV17","DR87","R48","R47",null,"P12","O2",null);
INSERT INTO Parts VALUES ("Hooligan", "Jeunes","C76","G7","F3","S88","DV87","DR86","R12","R32",null,"P12",null,null);
INSERT INTO Parts VALUES ("Orléans", "Hommes","C43","G9","F9","S37","DV57","DR86","R19","R18","R02","P34",null,null);
INSERT INTO Parts VALUES ("Orléans", "Dames","C44f","G9","F9","S35","DV57","DR86","R19","R18","R02","P34",null,null);
INSERT INTO Parts VALUES ("BlueJay", "Hommes","C43","G9","F9","S37","DV57","DR87","R19","R18","R02","P34","04",null);
INSERT INTO Parts VALUES ("BlueJay", "Dames","C43f","G9","F9","S35","DV57","DR87","R19","R18","R02","P34","04",null);
INSERT INTO Parts VALUES ("Trail Explorer", "Filles","C01","G12",null,"S02",null,null,"R1","R2","R09","P1",null,"S01");
INSERT INTO Parts VALUES ("Trail Explorer", "Garçons","C02","G12",null,"S03",null,null,"R1","R2","R09","P1",null,"S05");
INSERT INTO Parts VALUES ("Night Hawk", "Jeunes","C15","G12","F9","S36","DV15","DR23","R11","R12","R10","P15",null,"S74");
INSERT INTO Parts VALUES ("Tierra Verde", "Hommes","C87","G12","F9","S36","DV41","DR76","R11","R12","R10","P15",null,"S74");
INSERT INTO Parts VALUES ("Tierra Verde", "Dames","C87f","G12","F9","S34","DV41","DR76","R11","R12","R10","P15",null,"S73");
INSERT INTO Parts VALUES ("Mud Zinger I", "Jeunes","C25","G7","F3","S87","DV132","DR52","R44","R47",null,"P12",null,null);
INSERT INTO Parts VALUES ("Mud Zinger II", "Adultes","C26","G7","F3","S87","DV133","DR52","R44","R47",null,"P12",null,null);
 
 