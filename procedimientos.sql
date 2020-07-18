/*ESTUDIANTE*/
CREATE PROCEDURE CEST
@idE_c int,
@nomE_c varchar(50),
@telE_c varchar(10),
@cursoE int
AS
INSERT INTO estudiante VALUES (@idE_c,@nomE_c,@telE_c,@cursoE);

CREATE PROCEDURE REST
@idE_c int
AS SELECT * FROM estudiante where idE=@idE_c;

CREATE PROCEDURE UEST
@idE1_c int,
@idE2_c int,
@nomE_c varchar(50),
@telE_c varchar(10),
@cursoE int
as UPDATE estudiante SET idE=@idE2_c, nomE=@nomE_c, telE=@telE_c, cursoE=@cursoE WHERE idE=@idE1_c;

CREATE PROCEDURE DEST
@idE_c int
AS DELETE FROM estudiante WHERE idE=@idE_c;
/*PROFESOR*/
CREATE PROCEDURE CPRO
@idP_c int,
@nomP_c varchar(50),
@telP_c varchar(10)
AS INSERT INTO profesor VALUES (@idP_c,@nomP_c,@telP_c);

CREATE PROCEDURE RPRO
@idP_c int
AS SELECT * FROM profesor where idP=@idP_c;

CREATE PROCEDURE UPRO
@idP1_c int,
@idP2_c int,
@nomP_c varchar(50),
@telP_c varchar(10)
as UPDATE profesor SET idP=@idP2_c, nomP=@nomP_c, telP=@telP_c WHERE idP=@idP1_c;

CREATE PROCEDURE DPRO
@idP_c int
AS DELETE FROM profesor WHERE idP=@idP_c;
/*CURSO*/
CREATE PROCEDURE CCUR
@nomC_c varchar(50),
@encargado_c int
AS INSERT INTO curso VALUES (@nomC_c,@encargado_c);

CREATE PROCEDURE RCUR
@idC_c int
AS SELECT * FROM curso where idC=@idC_c;

CREATE PROCEDURE UCUR
@idC_c int,
@nomC_c varchar(50),
@encargado_c varchar(10)
as UPDATE curso SET idC=@idC2_c, nomC=@nomC_c, encargado=@encargado_c WHERE idC=@idC_c;

CREATE PROCEDURE DCUR
@idC_c int
AS DELETE FROM curso WHERE idC=@idC_c;