CREATE DATABASE colegio;
/*
use colegio;

CREATE TABLE profesor(
	idP int PRIMARY KEY,
	nomP varchar(50) not null,
	telP varchar(10) not null,
	CONSTRAINT TID CHECK (idP>=1000000000),
	CONSTRAINT TEL CHECK (LEN(telP)>=7)
);

CREATE TABLE curso(
	idC int IDENTITY PRIMARY KEY ,
	nomC varchar(20) not null,
	encargado int not null,
	CONSTRAINT FK FOREIGN KEY (encargado) REFERENCES profesor(idP)
);

CREATE TABLE estudiante(
	idE int PRIMARY KEY,
	nomE varchar(50) not null,
	telE varchar(10) not null,
	cursoE int not null,
	CONSTRAINT FK2 FOREIGN KEY (cursoE) REFERENCES curso(idC),
	CONSTRAINT TID2 CHECK (idE>=1000000000),
	CONSTRAINT TEL2 CHECK (LEN(telE)>=7)
);

INSERT INTO profesor VALUES (1000000100, 'Norberto', '2356464');
SELECT * from profesor where idP=1000000100;
UPDATE profesor set idP=1000000100, nomP='Norberto', telP='2356464' where idP=1000000100;
DROP table profesor;
DELETE from profesor where idP=1000000100;
*/