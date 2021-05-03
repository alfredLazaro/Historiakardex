create DataBase Umss
use Umss

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Estudiante'))
BEGIN;
    DROP TABLE [Estudiante];
END;
GO

CREATE TABLE [Estudiante] (
    [codSis] INTEGER NOT NULL IDENTITY(200022009, 2),
    [nomEst] VARCHAR(255) NULL,
    [contraEst] VARCHAR(255) NULL,
    [apPat] VARCHAR(255) NULL,
    [apMat] VARCHAR(255) NULL,
    [sexo] VARCHAR(255) NULL,
    [telf] INTEGER NULL,
    [direc] VARCHAR(255) NULL,
    [estadoEst] VARCHAR(255) NULL,
    [ciEst] INTEGER NULL,
    PRIMARY KEY ([codSis])
);
GO

INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Priscilla','insertar123','Olsen','Pennington','F',70840879,'7323 Ipsum Rd.','activo',84775200),('Taylor','trabajo345','Morrow','Swanson','F',75095556,'2770 Eget, St.','inactivo',84775201),('Zorita','contrasena123','Wolf','Manning','F',67864138,'672-3108 Hendrerit Avenue','inactivo',84775202),('Hanae','contrasena123','Pratt','Lawrence','F',78757059,'1271 Lobortis Street','inactivo',84775203),('Shana','cometa123','Simmons','Fuentes','F',71362648,'569-4261 Nulla. St.','activo',84775204),('Sasha','insertar123','Kent','Gilbert','F',70554591,'444-586 Nunc Road','inactivo',84775205),('Eliana','contrasena123','Matthews','Larsen','F',73676009,'P.O. Box 391, 9486 Justo. Street','inactivo',84775206),('Kiona','trabajo345','Steele','Morse','F',65952174,'Ap #188-3619 Ac Ave','inactivo',84775207),('Gay','trabajo345','Christian','Mosley','F',66337616,'P.O. Box 746, 8059 Purus Rd.','activo',84775208),('Hanna','dialogo321','Davenport','Leblanc','F',74793295,'7131 Mi Road','activo',84775209);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Hiroko','trabajo345','Leblanc','Shannon','F',72170622,'Ap #852-5934 Donec Rd.','inactivo',84775210),('Nola','dialogo321','Donovan','Frank','F',77750217,'Ap #461-1179 Vitae St.','activo',84775211),('Winter','cometa123','Curtis','Petty','F',78671841,'748-7324 Orci, Avenue','activo',84775212),('Callie','cometa123','Hudson','Harper','F',71764382,'487-8451 Duis Road','activo',84775213),('Maryam','cometa123','Wyatt','Mcclain','F',63319851,'Ap #561-8088 Metus. Av.','activo',84775214),('Martena','insertar123','Robbins','Newton','F',65239381,'8132 Semper Rd.','activo',84775215),('Kirestin','dialogo321','Nunez','Walters','F',71007466,'336-8703 Vitae, Rd.','inactivo',84775216),('Isadora','dialogo321','Stevens','Morrison','F',68059942,'3335 Odio. Avenue','activo',84775217),('Britanni','insertar123','Walters','Cline','F',64809254,'Ap #399-3483 Turpis Ave','activo',84775218),('Doris','contrasena123','Paul','Cohen','F',66928187,'268-5067 Sed, St.','inactivo',84775219);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Fay','cometa123','Haney','Cleveland','F',72001685,'Ap #528-7323 Vitae Rd.','activo',84775220),('Laurel','insertar123','Lang','Wooten','F',66240936,'659-5592 Ut Av.','inactivo',84775221),('Nita','cometa123','Waters','Cote','F',76055244,'8462 Pellentesque Rd.','inactivo',84775222),('Harriet','dialogo321','Mckenzie','Osborn','F',68136472,'393-2568 Nulla. Rd.','inactivo',84775223),('Gillian','cometa123','Browning','Simpson','F',64549821,'921-1721 Turpis Street','inactivo',84775224),('Libby','insertar123','Parsons','Mathis','F',67402225,'373-1942 Nam Rd.','activo',84775225),('Heather','insertar123','Freeman','Greene','F',61544062,'P.O. Box 217, 7287 Pede. St.','activo',84775226),('Aurelia','cometa123','Mack','Rosales','F',74590068,'Ap #455-4219 Etiam Avenue','activo',84775227),('Medge','contrasena123','Dudley','Rogers','F',61998964,'P.O. Box 838, 2590 Nec St.','activo',84775228),('Jael','insertar123','Guerrero','Short','F',71006031,'7080 Justo St.','inactivo',84775229);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Rama','contrasena123','Washington','Wise','F',70859046,'Ap #918-6113 Nullam St.','inactivo',84775230),('Sasha','dialogo321','Stuart','Stuart','F',72072481,'842-9683 Lectus Rd.','inactivo',84775231),('Linda','trabajo345','Colon','Lambert','F',65214474,'Ap #891-1673 Egestas. Av.','inactivo',84775232),('Isabella','insertar123','Schneider','Stafford','F',68057478,'508-1047 Nulla. St.','inactivo',84775233),('Mariko','cometa123','Zimmerman','Norman','F',60678220,'Ap #421-228 Nullam Road','inactivo',84775234),('Germane','dialogo321','Franklin','House','F',63780264,'994-5090 Laoreet St.','inactivo',84775235),('Alisa','dialogo321','Calderon','Russell','F',77578294,'Ap #970-3533 Nam Street','activo',84775236),('Nayda','dialogo321','Mccarty','Lewis','F',62554412,'452-9251 Magna. Rd.','activo',84775237),('Tallulah','trabajo345','Hahn','Avery','F',68582387,'5547 Laoreet, St.','inactivo',84775238),('Heather','trabajo345','Calderon','Tanner','F',75749810,'1309 Molestie Street','activo',84775239);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Tanisha','contrasena123','Fleming','Holcomb','F',68694943,'P.O. Box 948, 789 Consequat Road','inactivo',84775240),('Hannah','dialogo321','Garrison','Wolf','F',76115620,'544-4017 Commodo St.','activo',84775241),('Tatyana','insertar123','Bennett','Beasley','F',61426375,'973-5679 Nullam Av.','inactivo',84775242),('Taylor','insertar123','Mccoy','Rivera','F',76094108,'125-6928 Donec St.','inactivo',84775243),('Blythe','insertar123','Hendricks','Conrad','F',66888933,'P.O. Box 101, 407 Cursus Street','inactivo',84775244),('Sheila','insertar123','Oneil','Henderson','F',73929916,'P.O. Box 103, 7694 Quisque Street','activo',84775245),('Kelsey','trabajo345','Chambers','Moreno','F',79112241,'Ap #598-4843 Vitae Road','activo',84775246),('Roary','cometa123','Fuller','Woodward','F',67862125,'981-5709 Porta Rd.','inactivo',84775247),('Myra','insertar123','Jarvis','Drake','F',67204534,'1140 Ipsum Road','inactivo',84775248),('Caryn','contrasena123','Blackwell','Moreno','F',64547173,'Ap #951-4763 Nibh Avenue','inactivo',84775249);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Rhea','insertar123','Hampton','Oliver','F',74430231,'652-1413 Elementum, Av.','inactivo',84775250),('Olivia','contrasena123','Hampton','Hendrix','F',69432285,'667-6015 Mollis St.','activo',84775251),('Mariko','dialogo321','Gallegos','Gaines','F',63004497,'576-166 Ipsum Av.','inactivo',84775252),('Brianna','trabajo345','Hodges','Goodwin','F',71754375,'Ap #240-7602 Amet Avenue','inactivo',84775253),('Rowan','contrasena123','Pierce','Greer','F',62675376,'P.O. Box 296, 8222 Placerat, Av.','activo',84775254),('Gillian','trabajo345','Hewitt','Phillips','F',68691853,'P.O. Box 847, 5365 Inceptos Rd.','activo',84775255),('Irma','insertar123','Santiago','Stokes','F',69072017,'Ap #892-6913 Cras Av.','inactivo',84775256),('Meghan','contrasena123','Craft','Bell','F',79344495,'2260 Quis St.','inactivo',84775257),('Germane','insertar123','Quinn','Turner','F',65574434,'P.O. Box 143, 2416 A, Avenue','inactivo',84775258),('Whoopi','cometa123','Cox','Stout','F',75303341,'Ap #403-985 Curae; Avenue','activo',84775259);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Kyra','contrasena123','Harrison','Sheppard','F',75348366,'P.O. Box 456, 5082 Ut Av.','activo',84775260),('Justina','insertar123','Blackburn','Kirkland','F',69813205,'Ap #509-1272 Proin Road','activo',84775261),('Carla','cometa123','Simon','Heath','F',67977070,'P.O. Box 549, 5606 Lacinia Av.','inactivo',84775262),('Kerry','contrasena123','Silva','Mcdonald','F',67330682,'143-804 Duis Street','inactivo',84775263),('Charde','contrasena123','Oneal','Roman','F',67421089,'P.O. Box 284, 942 Vulputate Ave','inactivo',84775264),('Chanda','contrasena123','Flores','Burton','F',68189548,'Ap #917-3072 Consectetuer Av.','activo',84775265),('Phyllis','insertar123','Shepherd','Mayo','F',62392118,'3398 Eget, Avenue','inactivo',84775266),('Kimberley','dialogo321','Richmond','Manning','F',63068695,'Ap #559-7486 Fermentum Rd.','activo',84775267),('Germane','contrasena123','Herring','Barton','F',74967451,'154-5201 Hendrerit Rd.','activo',84775268),('Brynne','insertar123','Malone','Heath','F',61834825,'734-433 Praesent Rd.','inactivo',84775269);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Rina','contrasena123','Mendoza','Valencia','F',73362962,'Ap #513-2197 Cursus Av.','inactivo',84775270),('Suki','contrasena123','Lott','Schmidt','F',67170084,'3819 Imperdiet Ave','activo',84775271),('Hedda','trabajo345','Key','Sawyer','F',61546149,'Ap #290-4470 Sem Ave','activo',84775272),('Idola','dialogo321','Anderson','Williams','F',77117460,'Ap #429-3773 Duis Av.','activo',84775273),('Chiquita','cometa123','Richardson','Copeland','F',70260349,'P.O. Box 291, 8994 Suspendisse Rd.','activo',84775274),('Ora','dialogo321','Fletcher','Bowen','F',78285398,'376-8330 Lorem, Road','inactivo',84775275),('Indira','dialogo321','Booker','Tucker','F',69073515,'1914 Ut Road','inactivo',84775276),('Rhea','insertar123','Hyde','Yang','F',66940213,'8663 At Rd.','inactivo',84775277),('Jaden','insertar123','Santiago','Cook','F',68196435,'Ap #676-7424 Molestie Rd.','activo',84775278),('Celeste','cometa123','Johns','Maldonado','F',70163593,'719-723 Nam Ave','inactivo',84775279);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Zorita','cometa123','Stein','Anderson','F',74364244,'867-4734 Eu Rd.','activo',84775280),('Remedios','insertar123','Bright','Robles','F',63555154,'P.O. Box 352, 9412 Elit. Street','activo',84775281),('Anjolie','dialogo321','Briggs','Holmes','F',69878145,'138-1232 Eget Avenue','inactivo',84775282),('Suki','trabajo345','Gregory','Waller','F',68374726,'Ap #599-5783 Cras Ave','activo',84775283),('Jaime','dialogo321','Melton','Sweet','F',66391586,'5492 Lectus. Avenue','activo',84775284),('Lacey','insertar123','Orr','Bass','F',66873600,'399-1283 A, Street','inactivo',84775285),('Libby','cometa123','Browning','Cobb','F',69936182,'P.O. Box 701, 4896 Sagittis Street','activo',84775286),('Angelica','contrasena123','Schmidt','Baldwin','F',66915346,'Ap #465-6532 Vitae, St.','inactivo',84775287),('Abra','contrasena123','Sears','Gay','F',67502422,'P.O. Box 403, 3142 Fusce Ave','activo',84775288),('Raven','insertar123','Holder','Armstrong','F',79657499,'P.O. Box 502, 6971 Magna, Rd.','activo',84775289);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Blair','trabajo345','Bass','Dotson','F',62217355,'P.O. Box 868, 8095 Duis Avenue','activo',84775290),('Erica','cometa123','Tate','Rasmussen','F',79567134,'6721 Pharetra. St.','inactivo',84775291),('Sonya','contrasena123','Stephens','Olson','F',61467553,'P.O. Box 826, 8565 Et, Ave','activo',84775292),('Jordan','insertar123','Santiago','Ross','F',79281654,'P.O. Box 596, 3526 Natoque Road','inactivo',84775293),('Rebekah','cometa123','Peck','Buckley','F',70431545,'P.O. Box 730, 4773 Ipsum. Av.','inactivo',84775294),('Jemima','insertar123','Hewitt','Bishop','F',77081304,'4359 Nunc Road','inactivo',84775295),('Melinda','insertar123','Thornton','Green','F',77755487,'Ap #209-2884 Mauris St.','activo',84775296),('Irma','dialogo321','Cannon','Mccoy','F',64261635,'P.O. Box 921, 4275 Consequat, Av.','inactivo',84775297),('Winter','dialogo321','Butler','Horn','F',79690726,'9728 Vestibulum Avenue','inactivo',84775298),('Frances','cometa123','Travis','Becker','F',74290829,'P.O. Box 669, 3798 Ullamcorper St.','inactivo',84775299);


INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Gray','dialogo321','Hayden','Spencer','H',79242417,'Ap #759-1533 Aliquet Ave','inactivo',84775200),('Hammett','dialogo321','Holcomb','Fernandez','H',71178003,'P.O. Box 384, 7620 A, Street','inactivo',84775201),('Callum','trabajo345','Sullivan','Sparks','H',71721685,'511-3216 Dui. Rd.','activo',84775202),('Malik','cometa123','Weeks','Atkinson','H',78586737,'9367 Lorem, St.','activo',84775203),('Aidan','insertar123','Cabrera','Roberson','H',74539466,'389-8501 In Street','inactivo',84775204),('Ahmed','trabajo345','Stout','Juarez','H',63295227,'5631 Euismod Av.','activo',84775205),('Paul','dialogo321','Solomon','Riddle','H',72369578,'P.O. Box 188, 7467 Vivamus Avenue','inactivo',84775206),('Dalton','cometa123','Morrison','Blackwell','H',79926963,'184-8008 Id Avenue','inactivo',84775207),('Plato','contrasena123','Hardy','Lee','H',69503754,'5767 Elit. Av.','activo',84775208),('Warren','contrasena123','Bray','Higgins','H',77621878,'107-1094 Ornare St.','inactivo',84775209);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Steel','trabajo345','Farley','Mendoza','H',65720063,'7649 Aliquam Ave','inactivo',84775210),('Fuller','dialogo321','Pollard','Serrano','H',62322081,'Ap #461-7362 Hendrerit Avenue','activo',84775211),('Acton','trabajo345','Underwood','Sanford','H',76642317,'111-3193 Arcu Rd.','inactivo',84775212),('Hilel','trabajo345','Talley','Ochoa','H',73582557,'Ap #563-7685 Amet Ave','activo',84775213),('Hayden','insertar123','Ortega','Cameron','H',73525049,'396-8502 In St.','activo',84775214),('Honorato','dialogo321','Raymond','Mcmillan','H',72453212,'P.O. Box 334, 7035 Risus Rd.','inactivo',84775215),('Keith','dialogo321','Holder','Brooks','H',77710427,'P.O. Box 992, 5663 Amet St.','activo',84775216),('Stewart','contrasena123','Reilly','Hensley','H',79293760,'P.O. Box 314, 787 Ut, St.','inactivo',84775217),('Zachary','trabajo345','Flowers','Hyde','H',68721967,'8687 Facilisis St.','inactivo',84775218),('Zeus','insertar123','William','Conner','H',60447028,'616-1825 Interdum Road','inactivo',84775219);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Otto','cometa123','Kane','Clarke','H',72104464,'P.O. Box 472, 8905 Est Rd.','inactivo',84775220),('Raphael','contrasena123','Winters','William','H',76339928,'Ap #183-4832 Curae; Rd.','inactivo',84775221),('Driscoll','insertar123','Wyatt','Melendez','H',65528314,'Ap #189-1718 Donec Road','inactivo',84775222),('Avram','dialogo321','Fowler','Carney','H',76986714,'P.O. Box 596, 7065 Nulla St.','inactivo',84775223),('Hashim','cometa123','Herrera','Fuller','H',67069418,'521-1411 Rutrum Road','activo',84775224),('Finn','trabajo345','Howe','Snider','H',77971046,'611-566 Turpis Ave','inactivo',84775225),('Dustin','cometa123','Mcclain','Atkins','H',69478612,'556-9567 Pharetra St.','activo',84775226),('Phillip','insertar123','Cummings','Hart','H',67585733,'769-9655 Felis. Rd.','activo',84775227),('Colin','cometa123','Bridges','Lopez','H',74834697,'643-7048 Libero. St.','activo',84775228),('Dorian','cometa123','Daniel','Benton','H',74957009,'P.O. Box 534, 9285 Vestibulum Av.','inactivo',84775229);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Garrett','dialogo321','Buchanan','Juarez','H',65483293,'Ap #512-3535 Accumsan Rd.','activo',84775230),('Jack','dialogo321','Fulton','Compton','H',71050532,'8946 Fringilla St.','activo',84775231),('Forrest','trabajo345','Cash','Figueroa','H',73467749,'P.O. Box 151, 5732 Ante Avenue','inactivo',84775232),('Hilel','trabajo345','Andrews','Dickson','H',76895842,'Ap #146-4349 Sem St.','activo',84775233),('Murphy','dialogo321','Nieves','Schroeder','H',61213397,'3953 Amet Street','activo',84775234),('Sylvester','contrasena123','Guy','Larson','H',79175235,'P.O. Box 454, 9915 Arcu. Av.','activo',84775235),('Basil','dialogo321','Cline','Fitzpatrick','H',77009851,'103 Ac St.','inactivo',84775236),('Benedict','trabajo345','Nunez','Luna','H',74369474,'4194 Sagittis. Street','inactivo',84775237),('Herman','dialogo321','Ashley','Galloway','H',61729228,'116-2544 Nec, Ave','inactivo',84775238),('Gil','cometa123','Robinson','Rosales','H',71184569,'123-9338 Integer St.','inactivo',84775239);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Brent','insertar123','Carey','Richardson','H',68339488,'P.O. Box 310, 9036 Tristique St.','inactivo',84775240),('Leroy','cometa123','Cox','Salinas','H',60889532,'Ap #789-5875 A Avenue','activo',84775241),('Colt','insertar123','Lindsay','Barnett','H',67871715,'Ap #655-5149 Ultricies Road','inactivo',84775242),('Lee','cometa123','Goff','Mcdaniel','H',75418122,'2771 Dui. Rd.','inactivo',84775243),('Colt','insertar123','Miranda','Montgomery','H',65954154,'P.O. Box 289, 3659 Magna. Avenue','activo',84775244),('Dane','dialogo321','Castaneda','Hendrix','H',79063416,'Ap #689-7173 In St.','activo',84775245),('Norman','contrasena123','Goff','Mercado','H',68958459,'Ap #934-8030 Mi St.','activo',84775246),('James','dialogo321','English','Marks','H',67634318,'5526 Egestas Rd.','inactivo',84775247),('Zeph','contrasena123','Horne','Waller','H',68576361,'879-7321 Donec St.','inactivo',84775248),('Malachi','trabajo345','Everett','Stewart','H',64546596,'P.O. Box 898, 6185 Ligula. Rd.','activo',84775249);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Herman','insertar123','Gates','Wilkerson','H',73038476,'P.O. Box 238, 6168 Dui Av.','activo',84775250),('Raymond','insertar123','Clay','Snow','H',79609733,'4856 Urna. Road','activo',84775251),('Brent','insertar123','Gilbert','Hobbs','H',76865286,'Ap #861-6057 Risus. Av.','activo',84775252),('Steven','contrasena123','Mack','Hogan','H',67067887,'2929 Odio. Road','inactivo',84775253),('Cedric','insertar123','Mccray','Brooks','H',71351918,'Ap #247-1282 Tempor Av.','activo',84775254),('Jermaine','dialogo321','Emerson','Stuart','H',75630530,'Ap #204-2248 Turpis Ave','activo',84775255),('Holmes','trabajo345','Sweet','Mays','H',66992608,'P.O. Box 284, 3574 Semper, St.','activo',84775256),('Nigel','cometa123','Mccarthy','Chang','H',70554331,'5562 Nisi. Av.','inactivo',84775257),('Matthew','contrasena123','Jenkins','Lloyd','H',66150008,'957-4500 Posuere Avenue','inactivo',84775258),('Daniel','trabajo345','Holcomb','Hartman','H',74356362,'6175 Id Avenue','inactivo',84775259);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Emmanuel','insertar123','Molina','Britt','H',79912306,'680-8527 Etiam Road','activo',84775260),('Hiram','cometa123','Dean','Mueller','H',71098429,'261-4842 Sagittis Road','inactivo',84775261),('Chester','contrasena123','Roberts','Yates','H',75561545,'P.O. Box 678, 5434 Vulputate St.','inactivo',84775262),('Zeus','cometa123','Crane','Chavez','H',63296316,'4370 Metus Avenue','inactivo',84775263),('Arden','insertar123','Delacruz','Heath','H',65226216,'7551 Senectus Rd.','inactivo',84775264),('Solomon','contrasena123','Barker','Pace','H',65001646,'8860 Purus. Rd.','inactivo',84775265),('Mark','cometa123','Shepherd','Michael','H',72948203,'P.O. Box 539, 4126 Et Rd.','inactivo',84775266),('Theodore','cometa123','Stark','Shaffer','H',71600060,'3014 Nunc Av.','inactivo',84775267),('Warren','contrasena123','Hawkins','Hickman','H',69847270,'P.O. Box 363, 8364 Nulla Ave','inactivo',84775268),('Reece','trabajo345','Sharpe','Watkins','H',69515034,'4419 Nisl Av.','activo',84775269);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Paki','cometa123','Suarez','Houston','H',69567453,'195-5078 In St.','inactivo',84775270),('Clark','trabajo345','Boyer','Wade','H',60069444,'3605 Rutrum Avenue','inactivo',84775271),('Dane','cometa123','Vazquez','Washington','H',63455820,'P.O. Box 760, 182 Quisque Street','activo',84775272),('Herrod','cometa123','Branch','Murray','H',66119846,'483-3838 Arcu. St.','activo',84775273),('Nasim','insertar123','Russo','Wallace','H',75386046,'4771 Sem St.','inactivo',84775274),('Clark','insertar123','Estrada','Hensley','H',66751936,'214-9808 Velit Road','activo',84775275),('Ronan','contrasena123','Frederick','Rich','H',71321579,'P.O. Box 856, 9271 Facilisi. Ave','inactivo',84775276),('Tyrone','dialogo321','Pena','Osborn','H',63093820,'Ap #252-1803 Nulla Ave','inactivo',84775277),('Geoffrey','contrasena123','Gibson','Grimes','H',62461581,'P.O. Box 882, 2773 In St.','inactivo',84775278),('Troy','insertar123','Stuart','Molina','H',74935618,'290-546 Tellus. Road','activo',84775279);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Baxter','cometa123','Bird','Fitzpatrick','H',71925162,'693-3775 Proin Rd.','inactivo',84775280),('Mark','trabajo345','Leonard','Gordon','H',74206674,'7649 In Rd.','inactivo',84775281),('Declan','insertar123','Tucker','Hicks','H',62321028,'655-8745 Non Rd.','activo',84775282),('Zephania','dialogo321','Klein','Odonnell','H',68994859,'4184 Pede, Av.','inactivo',84775283),('Louis','cometa123','Tyson','Clements','H',75844104,'P.O. Box 516, 3227 Rutrum Rd.','activo',84775284),('Duncan','cometa123','Sweet','Ellison','H',74680270,'P.O. Box 858, 9352 Maecenas St.','inactivo',84775285),('Cameron','contrasena123','Hoover','Joyce','H',61710935,'P.O. Box 606, 5529 Vestibulum Avenue','activo',84775286),('Kieran','trabajo345','Kerr','Gomez','H',68817116,'P.O. Box 775, 5324 Sagittis Rd.','activo',84775287),('Elijah','cometa123','Robertson','Rowe','H',62215330,'P.O. Box 258, 8280 Vitae Rd.','activo',84775288),('Callum','cometa123','Snider','Perry','H',61011687,'P.O. Box 294, 7993 Egestas. Rd.','activo',84775289);
INSERT INTO Estudiante([nomEst],[contraEst],[apPat],[apMat],[sexo],[telf],[direc],[estadoEst],[ciEst]) VALUES('Mufutau','insertar123','Beach','Townsend','H',72608535,'P.O. Box 269, 3044 Et Rd.','activo',84775290),('Jacob','contrasena123','West','Alston','H',76415097,'9186 Sed Rd.','activo',84775291),('Talon','insertar123','Carney','Frank','H',66679360,'P.O. Box 385, 4954 Sed, Street','activo',84775292),('Lester','insertar123','Herman','Frye','H',63746129,'Ap #289-5913 Dictum. Rd.','activo',84775293),('Jelani','contrasena123','Vargas','Floyd','H',70446953,'4499 Sollicitudin Street','activo',84775294),('Wang','contrasena123','Sampson','Harding','H',61037584,'Ap #990-4804 In Street','activo',84775295),('Dieter','dialogo321','Banks','Bentley','H',68806268,'3499 Nulla Rd.','inactivo',84775296),('Trevor','trabajo345','Estrada','Hughes','H',73350041,'Ap #548-7464 Mi, Av.','activo',84775297),('Kareem','cometa123','Sullivan','Burks','H',79886014,'P.O. Box 885, 6690 Nulla St.','activo',84775298),('Fletcher','dialogo321','Walker','Cain','H',64797493,'713-9845 Iaculis, Ave','activo',84775299);


select * from Estudiante
--tabla administrador
IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Administrador'))
BEGIN;
    DROP TABLE [Administrador];
END;
GO

CREATE TABLE [Administrador] (
    [codAd] INTEGER NOT NULL IDENTITY(1000000, 1),
    [nomAdmin] VARCHAR(255) NULL,
    [contraAdmin] VARCHAR(255) NULL,
    [apPatAd] VARCHAR(255) NULL,
    [apMatAd] VARCHAR(255) NULL,
    [fechN] VARCHAR(255),
    [ciAd] INTEGER NULL,
    PRIMARY KEY ([codAd])
);
GO

INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Meghan','lagarto','Gill','Rich','05-06-68',89990000),('Adele','comadreja','Moore','Nash','19-05-84',89990003),('Xanthus','almanaque','Cortez','Nguyen','30-01-67',89990006),('Clinton','cienpies','Gamble','Gaines','11-12-77',89990009),('Yael','CONTRASENA','Flowers','Russo','31-08-84',89990012),('Kiayada','comadreja','Hernandez','Baxter','02-01-74',89990015),('Ezekiel','CONTRASENA','Sanchez','Bowers','29-03-67',89990018),('Blake','lagarto','Rodgers','Cohen','06-04-80',89990021),('Bert','comadreja','Sexton','Buchanan','29-12-80',89990024),('Channing','comadreja','Pope','Tucker','04-06-84',89990027);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Hollee','CONTRASENA','Riley','Richard','01-09-73',89990030),('Ria','CONTRASENA','Monroe','Rice','06-03-68',89990033),('Linda','almanaque','Harding','Mckenzie','21-07-79',89990036),('Maia','CONTRASENA','Bishop','Acosta','06-12-73',89990039),('Rylee','CONTRASENA','Hensley','Glass','11-01-67',89990042),('Nero','cienpies','Rosales','Sargent','27-08-72',89990045),('Clementine','cienpies','Alford','Donaldson','31-10-83',89990048),('Olympia','almanaque','House','Hunter','31-01-70',89990051),('Leroy','comadreja','Stephens','Valencia','13-05-76',89990054),('Ivy','lagarto','Nieves','Hays','16-07-81',89990057);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Xyla','cienpies','Harrison','Love','24-05-80',89990060),('Gillian','lagarto','Skinner','Hopper','16-10-83',89990063),('Aquila','CONTRASENA','York','Strickland','08-03-80',89990066),('Fallon','CONTRASENA','Roy','Mack','20-11-78',89990069),('Lisandra','cienpies','Cantrell','Higgins','15-05-71',89990072),('Jennifer','lagarto','Blevins','Wooten','27-08-81',89990075),('Uriah','almanaque','Mccarty','Fleming','05-07-83',89990078),('Unity','lagarto','Flowers','Guy','05-07-77',89990081),('Nomlanga','almanaque','Valentine','Macdonald','17-01-72',89990084),('Merrill','cienpies','Lopez','Dickson','16-09-76',89990087);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Aquila','comadreja','Lang','Ray','18-05-80',89990090),('Sopoline','comadreja','Joyce','Velasquez','25-01-76',89990093),('Elizabeth','lagarto','Harvey','Owen','20-10-76',89990096),('Breanna','CONTRASENA','Doyle','Delgado','02-06-77',89990099),('Abraham','cienpies','Haley','Kim','15-05-77',89990102),('Dante','comadreja','Ayala','Cleveland','14-11-77',89990105),('Alea','cienpies','Pope','Oneal','02-08-78',89990108),('Julian','lagarto','Wall','Holman','19-04-81',89990111),('Maya','lagarto','Pickett','Morrow','03-03-67',89990114),('Devin','lagarto','Wallace','Kelley','30-07-82',89990117);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Jena','cienpies','Marsh','Daniels','14-05-68',89990120),('Zelda','almanaque','Byers','Watts','04-07-74',89990123),('Nora','lagarto','Mueller','Miller','06-12-77',89990126),('Rhonda','lagarto','Terrell','Brady','18-02-76',89990129),('Valentine','CONTRASENA','Christian','Long','09-04-82',89990132),('Elvis','cienpies','Levine','Davidson','30-05-72',89990135),('Ria','cienpies','Lott','Ballard','11-11-80',89990138),('Veronica','lagarto','Turner','Stanley','03-09-68',89990141),('Nolan','CONTRASENA','Kane','Russo','28-10-71',89990144),('Anika','almanaque','Blankenship','Hodges','30-07-76',89990147);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Hu','comadreja','Castro','Russell','24-04-79',89990150),('Jackson','almanaque','Hodges','Wolfe','01-04-82',89990153),('Ashely','almanaque','Erickson','Alston','25-10-84',89990156),('Jonah','almanaque','Bradshaw','Ellison','01-06-77',89990159),('Camden','almanaque','Knapp','Ferrell','13-07-74',89990162),('Echo','lagarto','Barker','Black','06-12-80',89990165),('Aspen','lagarto','Figueroa','Dillon','03-06-72',89990168),('Kennan','comadreja','Fernandez','King','21-08-72',89990171),('Eric','lagarto','Shepard','Olson','23-11-75',89990174),('Linda','CONTRASENA','Rodriquez','Potts','26-12-67',89990177);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Helen','lagarto','Glover','Baxter','10-08-74',89990180),('Sylvester','almanaque','Burt','Hooper','03-07-79',89990183),('Dennis','almanaque','Gallagher','Hale','18-12-81',89990186),('Basil','lagarto','Hogan','Elliott','23-05-70',89990189),('Lee','CONTRASENA','Garza','Benjamin','21-04-75',89990192),('Armando','lagarto','Murray','Decker','16-01-70',89990195),('Quintessa','comadreja','Macdonald','Sharpe','30-08-81',89990198),('Noah','comadreja','Franklin','Bowen','23-04-71',89990201),('Price','CONTRASENA','Edwards','Conway','28-10-79',89990204),('Otto','lagarto','Mack','Strong','05-03-80',89990207);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Georgia','comadreja','Stokes','Hopkins','08-11-73',89990210),('Tatyana','lagarto','Patterson','Pacheco','01-08-67',89990213),('Yvonne','cienpies','Perez','Arnold','11-05-81',89990216),('Berk','cienpies','Benson','Atkins','10-07-77',89990219),('Dana','CONTRASENA','Perkins','Maynard','09-09-73',89990222),('Aileen','cienpies','Stanley','Suarez','23-05-75',89990225),('Adrian','lagarto','Mclaughlin','Potter','30-01-72',89990228),('Kristen','almanaque','Griffith','Vang','04-06-77',89990231),('Joshua','comadreja','Humphrey','Ray','07-02-68',89990234),('Brenden','cienpies','Leon','Clarke','22-05-80',89990237);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Rina','lagarto','Kane','Johns','11-10-68',89990240),('Maris','lagarto','Mann','Henderson','18-03-75',89990243),('Desirae','almanaque','Britt','Montgomery','01-02-69',89990246),('Ferris','almanaque','Jordan','Santos','17-08-74',89990249),('Hedy','lagarto','Hurley','Langley','14-01-75',89990252),('Ima','cienpies','Bowman','Savage','13-05-75',89990255),('Magee','comadreja','Ballard','Wiley','22-12-76',89990258),('Brenden','comadreja','Cotton','Casey','16-06-71',89990261),('Keegan','comadreja','Ellis','Farrell','20-07-83',89990264),('Edward','lagarto','Garcia','Perez','23-04-84',89990267);
INSERT INTO Administrador([nomAdmin],[contraAdmin],[apPatAd],[apMatAd],[fechN],[ciAd]) VALUES('Cameran','lagarto','Klein','Black','20-01-69',89990270),('Carson','almanaque','Gould','Summers','01-08-80',89990273),('Blossom','comadreja','Tyler','Fry','11-08-76',89990276),('Ethan','CONTRASENA','Fuller','Copeland','24-10-84',89990279),('Zenia','lagarto','Jennings','Salinas','12-04-84',89990282),('Igor','cienpies','Banks','Campbell','20-09-83',89990285),('Talon','almanaque','Nolan','Thornton','21-02-67',89990288),('Aurora','lagarto','Ayala','Banks','31-03-73',89990291),('Herman','lagarto','Ferrell','Dillard','13-07-70',89990294),('Lyle','cienpies','Blair','Bray','03-02-83',89990297);

---tabla de inscripciones

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Inscripciones'))
BEGIN;
    DROP TABLE [Inscripciones];
END;
GO

CREATE TABLE [Inscripciones] (
    [codSis] INTEGER NOT NULL,
    [gestionInscrip] VARCHAR(255) NULL,
    [pago] INTEGER NULL,
	constraint FK_INSCRIPCIONES_CODSIS foreign key(codSis) references estudiante (codSis)  
);
GO

INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II19',0),('II19',0),('I20',0),('II19',0),('I20',0),('I20',0),('I20',0),('II19',0),('II19',0),('II20',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II20',0),('II19',0),('II20',0),('II20',0),('II19',0),('I20',0),('II20',0),('II19',0),('II19',0),('II19',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('I20',0),('I20',0),('II20',0),('II19',0),('I20',0),('II19',0),('II20',0),('II20',0),('II20',0),('II19',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II20',0),('II19',0),('II20',0),('II20',0),('II19',0),('II20',0),('I20',0),('II20',0),('I20',0),('I20',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('I20',0),('I20',0),('II20',0),('I20',0),('II19',0),('II20',0),('II20',0),('II19',0),('II20',0),('II20',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II19',0),('II20',0),('I20',0),('II19',0),('II20',0),('II20',0),('II20',0),('I20',0),('I20',0),('II20',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II19',0),('II20',0),('II20',0),('II20',0),('I20',0),('II20',0),('II20',0),('I20',0),('II19',0),('II19',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II19',0),('I20',0),('I20',0),('II20',0),('II20',0),('II19',0),('I20',0),('II19',0),('I20',0),('II20',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('I20',0),('I20',0),('II19',0),('I20',0),('II20',0),('II20',0),('II19',0),('I20',0),('I20',0),('II19',0);
INSERT INTO Inscripciones([gestionInscrip],[pago]) VALUES('II20',0),('I20',0),('I20',0),('II19',0),('II20',0),('II19',0),('II20',0),('II20',0),('II20',0),('II20',0);

--tabla materia
CREATE TABLE Materia(
 codMat integer not null primary key,
 nombMat char (100)
)

INSERT INTO Materia(codMat,nombMat) values (0,'introduccion a la programacion'),(1,'algebra I'),(2,'algebra II'),(3,'calculo I'),(4,'calculo II'),(5,'ingles I'),(6,'ingles II')
INSERT INTO Materia(codMat,nombMat) values (7,'elementos de la programacion'),(8,'programacion funcional'),(9,'programacion'),(10,'logica')

--tabla nota

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Nota'))
BEGIN;
    DROP TABLE [Nota];
END;
GO

CREATE TABLE [Nota] (
    [codSis] INTEGER NOT NULL IDENTITY(200022009, 2),
    [codMat] INTEGER NULL,
    [calif] INTEGER NULL,
    [gestion] VARCHAR(255) NULL,

	constraint FK_NOTA_CODSIS foreign key(codSis) references estudiante (codSis),
	constraint FK_NOTA_CODMAT foreign key(codMat) references Materia (codMat)
);
GO

INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(0,33,'II20'),(4,56,'I20'),(7,28,'II19'),(3,62,'II19'),(9,73,'I20'),(5,60,'II19'),(10,79,'II20'),(7,77,'I20'),(4,77,'II19'),(9,95,'II20');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(4,77,'I20'),(0,16,'II20'),(10,74,'II19'),(6,3,'II20'),(0,39,'II20'),(10,26,'II19'),(0,55,'II19'),(7,35,'I20'),(3,28,'II20'),(5,52,'I20');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(4,43,'II20'),(9,56,'II19'),(2,50,'II19'),(2,65,'II20'),(1,45,'II20'),(10,51,'II19'),(10,83,'II20'),(6,60,'I20'),(0,27,'II19'),(1,35,'II19');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(6,25,'II20'),(0,48,'II19'),(9,1,'II19'),(8,23,'II20'),(0,35,'II20'),(0,34,'I20'),(0,30,'II19'),(3,8,'II19'),(9,51,'II19'),(10,7,'I20');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(5,76,'II20'),(2,79,'II20'),(1,35,'I20'),(8,72,'II20'),(5,34,'II19'),(6,18,'I20'),(6,44,'I20'),(7,49,'II19'),(9,23,'II20'),(7,31,'I20');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(1,73,'II19'),(8,40,'II20'),(3,71,'I20'),(10,58,'II20'),(9,7,'I20'),(10,100,'II20'),(10,48,'II19'),(3,74,'II20'),(6,36,'II20'),(9,29,'I20');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(8,33,'I20'),(7,75,'I20'),(0,86,'II20'),(7,90,'II19'),(8,57,'II19'),(4,55,'II19'),(10,73,'II19'),(10,40,'I20'),(5,39,'I20'),(4,47,'I20');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(10,18,'II20'),(8,73,'II19'),(2,37,'I20'),(8,88,'I20'),(8,41,'II19'),(9,27,'II19'),(6,58,'II20'),(6,39,'II20'),(10,20,'II19'),(5,8,'II19');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(5,60,'II19'),(9,49,'I20'),(10,17,'II20'),(5,24,'I20'),(10,57,'II20'),(10,46,'II19'),(3,44,'II19'),(8,5,'II19'),(0,83,'II19'),(7,4,'II19');
INSERT INTO Nota([codMat],[calif],[gestion]) VALUES(0,66,'I20'),(3,61,'I20'),(2,42,'II19'),(3,97,'II20'),(2,40,'I20'),(5,77,'I20'),(3,50,'II19'),(7,90,'II20'),(3,41,'II19'),(1,64,'II19');

--creando tabla formulario 
--esta tabla aun no se usa para este user History
CREATE TABLE Formulario(
 [codSis] integer not null,
 [motivo] char (700),
 [fechRegist] date,
 [carrera] char (100),
 [esAceptada] char (50),

 constraint FK_Formulario_CODSIS foreign key(codSis) references estudiante (codSis)
)
select * from formulario
select codSis from Formulario

select motivo,nomEst,apPat,apMat,fechRegist,nomCarrera 
from Formulario as f,Estudiante as e,carrera c
where f.codSis=e.codSis and c.codSis=f.codSis and carrera=( 
	select carrera 
	from formulario 
	where
    codSis=200022009)




IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('carrera'))
BEGIN;
    DROP TABLE [carrera];
END;
GO

CREATE TABLE [carrera] (

    [codSis] INTEGER NULL,
    [nomCarrera] VARCHAR(255) NULL,

	constraint FK_CARRERA_CODSIS foreign key(codSis) references estudiante (codSis),
);
GO


INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022009,'200022009'),(200022011,'Tecnico Universitario Superior en Mecanica Automotriz'),(200022013,'Tecnico Superior Forestal'),(200022015,'Ingenieria Civil'),(200022017,'Ingenieria Quimica'),(200022019,'Ingenieria Mecanica'),(200022021,'Licenciatura en Sociologia'),(200022023,'Licenciatura en Ingenieria Agroindustrial'),(200022025,'Licenciatura en Psicologia'),(200022027,'Licenciatura en Ingenieria Agronomica Fitotecnista');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022029,'Licenciatura en Ingenieria Agronomica Fitotecnista'),(200022031,'Programa de Licenciatura Especial en Educacion Intercultural Bilingue'),(200022033,'Tecnico Universitario Superior en Construcciones'),(200022035,'Ingenieria Matematica'),(200022037,'Ingenieria Electrica'),(200022039,'Licenciatura en Ingenieria Agronomica Zootecnista'),(200022041,'Licenciatura en Sociologia'),(200022043,'Licenciatura en Diseno Grafico y Comunicacion Visual'),(200022045,'Tecnico Universitario Superior en Construcciones'),(200022047,'Licenciatura en Comunicacion Social');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022049,'Ingenieria Electrica'),(200022051,'Licenciatura en Ingenieria Agronomica'),(200022053,'Licenciatura en Quimica'),(200022055,'Licenciatura en Ciencias Juridicas'),(200022057,'Licenciatura en Trabajo Social'),(200022059,'Ingenieria de Sistemas'),(200022061,'Tecnico Universitario Superior en Construcciones'),(200022063,'Licenciatura en Ingenieria Ambiental'),(200022065,'Licenciatura en Didactica de la Fisica'),(200022067,'Licenciatura en Contaduria Publica');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022069,'Licenciatura en Ingenieria Forestal'),(200022071,'Ingenieria Electronica'),(200022073,'Licenciatura en Ingenieria Financiera'),(200022075,'Ingenieria Electromecanica'),(200022077,'Ingenieria Electromecanica'),(200022079,'Ingenieria de Alimentos'),(200022081,'Tecnico Superior Forestal'),(200022083,'Licenciatura en Administracion de Empresas'),(200022085,'Licenciatura en Ingenieria Agricola'),(200022087,'Licenciatura en Ciencias Juridicas');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022089,'Licenciatura en Bioquimica y Farmacia'),(200022091,'Ingenieria de Alimentos'),(200022093,'Licenciatura en Turismo'),(200022095,''),(200022097,'Licenciatura en Ingenieria Financiera'),(200022099,'Ingenieria Mecanica'),(200022101,'Licenciatura en Contaduria Publica'),(200022103,'Tecnico Universitario Superior en Quimica Industrial'),(200022105,'Licenciatura en Comunicacion Social'),(200022107,'Licenciatura en Matematicas');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022109,'Licenciatura en Ingenieria Agronomica Zootecnista'),(200022111,'Licenciatura en Linguistica Aplicada a la Ensenanza de Lenguas'),(200022113,'Licenciatura en Ciencias de la Educacion'),(200022115,'Licenciatura en Enfermeria.'),(200022117,'Programa de Licenciatura en Ciencias de la Actividad Fisica y Deportes'),(200022119,'Ingenieria de Alimentos'),(200022121,'Licenciatura en Quimica'),(200022123,'Ingenieria Electrica'),(200022125,'Licenciatura en Arquitectura'),(200022127,'Licenciatura en Enfermeria.');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022129,'Ingenieria Mecanica'),(200022131,'Licenciatura en Ingenieria Comercial'),(200022133,'Ingenieria Industrial'),(200022135,'Licenciatura en Ciencias Politicas'),(200022137,'Licenciatura en Bioquimica y Farmacia'),(200022139,'Ingenieria Matematica'),(200022141,'Ingenieria Electromecanica'),(200022143,'Tecnico Universitario Superior en Mecanica Automotriz'),(200022145,''),(200022147,'Licenciatura en Medicina');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022149,'Tecnico Superior Forestal'),(200022151,'Ingenieria de Alimentos'),(200022153,'Tecnico Universitario Superior en Quimica Industrial'),(200022155,'Licenciatura en Biologia'),(200022157,'Licenciatura en Ciencias de la Educacion'),(200022159,'Licenciatura en Trabajo Social'),(200022161,'Licenciatura en Turismo'),(200022163,'Licenciatura en Ingenieria Ambiental'),(200022165,'Licenciatura en Psicologia'),(200022167,'Licenciatura en Ciencias Juridicas');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022169,'Tecnico Universitario Superior en Agroindustrial.'),(200022171,'Recursos Renovables'),(200022173,'Licenciatura en Diseno de Interiores y del Mobiliario'),(200022175,'Tecnico Universitario Superior en Mecanica Industrial'),(200022177,'Licenciatura en Didactica de la Fisica'),(200022179,'Licenciatura en Administracion de Empresas'),(200022181,''),(200022183,'Licenciatura en Trabajo Social'),(200022185,'Tecnico Universitario Superior en Quimica Industrial'),(200022187,'Tecnico Universitario Superior en Mecanica Automotriz');
INSERT INTO carrera([codSis],[nomCarrera]) VALUES(200022189,'Licenciatura en Odontologia'),(200022191,'Tecnico Universitario Superior en Agroindustrial.'),(200022193,''),(200022195,'Licenciatura en Contaduria Publica'),(200022197,'Licenciatura en Linguistica Aplicada a la Ensenanza de Lenguas'),(200022199,'Licenciatura en Quimica'),(200022201,'Licenciatura en Contaduria Publica'),(200022203,'Ingenieria Electromecanica'),(200022205,'Licenciatura en Ciencias de la Educacion'),(200022207,'Tecnico Universitario Medio en Enfermeria');

select * from carrera

select * from carrera where nomCarrera='Licenciatura en Didáctica de la Física'
--eliminar tablas para reazerlas

drop table Nota
drop table Estudiante
drop table Materia
drop table Inscripciones
drop table administrador
drop table Formulario
drop table carrera

---
select * from inscripciones

