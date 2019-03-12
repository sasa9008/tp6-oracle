CREATE TABLE programme(
PgmNo 			CHAR(3) PRIMARY KEY,
PgmNom			CHAR(30) UNIQUE NOT NULL,
PgmType			CHAR(20),
PgmNbCredit		NUMBER(2) NOT NULL
);
CREATE TABLE etudiant(
ECodeP 			CHAR(12) PRIMARY KEY,
ENom			CHAR(30) NOT NULL,
EDateInscrip	DATE,
EAdresse		CHAR(20),
ETel			CHAR(10),
PgmNo			CHAR(3)	CONSTRAINT ePgmNo_pgmNo REFERENCES programme(PgmNo) ON DELETE CASCADE
);

CREATE TABLE cours(
CNo				CHAR(10) PRIMARY KEY,
CNom			CHAR(20) NOT NULL,
CNbHres			NUMBER(3) NOT NULL,
CNbCredit		NUMBER(3,2) NOT NULL,
CPrerequis		CHAR(10)
);
ALTER TABLE COURS
ADD CONSTRAINT FK1_COURS
FOREIGN KEY (CPREREQUIS) REFERENCES COURS (CNO);

CREATE TABLE coursSuivi(
ECodeP			CHAR(12) CONSTRAINT csCodeP_eCodeP REFERENCES etudiant(ECodeP) ON DELETE CASCADE,
CNo				CHAR(10) CONSTRAINT csNo_cNo REFERENCES cours(CNo) ON DELETE CASCADE,
CSSession		CHAR(5),
CSNote			NUMBER(5,2),
CONSTRAINT pkCs PRIMARY KEY (ECodeP,CNo,CSSession)
);

CREATE TABLE PgmCours(
PgmNo			CHAR(3) CONSTRAINT pcPgmNo_PgmNo REFERENCES programme(PgmNo) ON DELETE CASCADE,
CNo				CHAR(10) CONSTRAINT pcCNo_CNo REFERENCES cours(CNo) ON DELETE CASCADE,
PgmTypeCours	CHAR(10),
CONSTRAINT pkPC PRIMARY KEY (PgmNo, CNo)
);

INSERT INTO programme
SELECT *
FROM Bprogramme;

INSERT INTO cours
SELECT *
FROM Bcours;

INSERT INTO pgmCours
SELECT * 
FROM bPgmCours;

INSERT INTO etudiant
SELECT * 
FROM betudiant;

INSERT INTO coursSuivi
SELECT * 
FROM bCoursSuivi;

SELECT * 
FROM programme;

SELECT p.PgmNo, p.PgmNom, c.CNo,c.CNom
FROM programme p, cours c, pgmCours pc
WHERE p.PgmNo = pc.PgmNo 
AND c.CNo = pc.CNo
ORDER BY p.PgmNo, c.CNo;



