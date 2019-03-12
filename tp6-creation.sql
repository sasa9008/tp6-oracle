DROP TABLE BEtudiant;
DROP TABLE BCoursSuivi;
DROP TABLE BCOURS;
DROP TABLE BPGMCOURS;
DROP TABLE BPROGRAMME;
CREATE TABLE BEtudiant (
EcodeP VARCHAR2(12) , 
ENom VARCHAR2(30) , 
EDateInscrip DATE, 
EAdresse VARCHAR2(20), 
ETel VARCHAR2(10), 
PgmNo VARCHAR2(3));

CREATE TABLE BCoursSuivi (
ECodeP VARCHAR2(12), 
CNo VARCHAR2(10) , 
CSSession VARCHAR2(5) , 
CSNote NUMBER(5,2));

CREATE TABLE BCours (
CNo VARCHAR2(10) , 
CNom VARCHAR2(20) , 
CNbHres NUMBER(3) , 
CNbCredit NUMBER(3) ,
CPrerequis VARCHAR2(10) );

CREATE TABLE BPgmCours (
PgmNo VARCHAR2(6), 
CNo VARCHAR2(10),   
PgmTypeCours VARCHAR2(10) );

CREATE TABLE BProgramme(
PgmNo VARCHAR2(3) , 
PgmNom VARCHAR2(20) , 
PgmType VARCHAR2(20), 
PgmNbCr NUMBER(2) );


INSERT INTO BPROGRAMME VALUES ('420','INFORMATIQUE','TECHNIQUE',36);
INSERT INTO BPROGRAMME VALUES ('180','SOINS INFIRMIERS','TECHNIQUE',42);
INSERT INTO BPROGRAMME VALUES ('310','TECHNIQUE POLICIERES','TECHNIQUE',40);
INSERT INTO BCOURS VALUES ('201-101-AA','MATHS APPLIQUEES',75,2,'');
INSERT INTO BCOURS VALUES ('420-111-AA','DECOUVERTE DE L''INFO',60,1,'') ;
INSERT INTO BCOURS VALUES ('420-121-AA','LOGIQUE DE PROG',45,2,'');
INSERT INTO BCOURS VALUES ('420-131-AA','SYSTEME D''EXP 1',90,2,'');
INSERT INTO BCOURS VALUES ('420-221-AA','SYSTEME D''EXP 2',60,2,'420-131-AA') ;
INSERT INTO BCOURS VALUES ('180-101-AA','DEV PERS ET COMM',45,3,'') ;
INSERT INTO BCOURS VALUES ('180-102-AA','INTRO PROF INF',4,1,'');
INSERT INTO BCOURS VALUES ('310-AJG-03','DROITS PRIVES',3,3,'');
INSERT INTO BCOURS VALUES ('310-AKL-03','COMMUNICATION',3,2,'') ;
INSERT INTO BPGMCOURS VALUES ('420','201-101-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('420','420-111-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('420','420-121-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('420','420-131-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('420','420-221-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('180','180-101-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('180','180-102-AA','CONC');
INSERT INTO BPGMCOURS VALUES ('310','310-AJG-03','CONC');
INSERT INTO BPGMCOURS VALUES ('310','310-AKL-03','CONC');
INSERT INTO BETUDIANT VALUES ('BOUA27526702','BOUCHARD ANNIE','16/08/1984','260 DESMEULES','4186221121','420');
INSERT INTO BETUDIANT VALUES ('ARSA19038202','ARSENEAULT ANDRE','16/08/2002','260 LAROUCHE','4186681112','420');
INSERT INTO BETUDIANT VALUES ('MORP04086410','MOREL PATRICE','24/08/1986','159 OEILLETS','4186681223','310');
INSERT INTO BETUDIANT VALUES ('NOLE15547610','NOLIN ESTELLE','16/08/2002','140 AUGER','4186629887','180');
INSERT INTO BETUDIANT VALUES ('BOUA20588403','BOUCHARD ANNIE','20/08/1984','260 TACHE','4186221122','420'); 
INSERT INTO BETUDIANT VALUES ('ARSM09538001','ARSENEAULT MOLIE','16/08/1982','260 LAROUCHE','4186681112','310');
INSERT INTO BCOURSSUIVI VALUES ('BOUA27526702','201-101-AA','A84',78.2);
INSERT INTO BCOURSSUIVI VALUES ('BOUA27526702','420-111-AA','A84',90.2);
INSERT INTO BCOURSSUIVI VALUES ('MORP04086410', '310-AJG-03','H86',55.2);
INSERT INTO BCOURSSUIVI VALUES ('NOLE15547610', '180-101-AA','A02',87.2);
INSERT INTO BCOURSSUIVI VALUES ('MORP04086410','420-111-AA','A02',57);