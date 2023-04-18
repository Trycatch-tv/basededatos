CREATE Table personas(
    idpersona serial not null primary key,
    paterno varchar,
    materno varchar,
    nombres varchar,
    direccion varchar,
    celular varchar,
    correo varchar
);

CREATE Table estudiantes(
    idestudiante serial not null PRIMARY key,
    idpersona integer,
    Foreign Key (idpersona) REFERENCES personas(idpersona)
);

CREATE Table profesores(
    idprofesor serial not null PRIMARY key,
    idpersona integer,
    Foreign Key (idpersona) REFERENCES personas(idpersona)
);

CREATE Table cursos(
    idcurso serial not null PRIMARY key
);

CREATE Table asignacionesestudiantes(
    idasignacionestudiante serial not null PRIMARY key,
    idcurso integer,
    idestudiante integer,    
    Foreign Key (idcurso) REFERENCES cursos (idcurso),
    Foreign Key (idestudiante) REFERENCES estudiantes(idestudiante)
);

CREATE Table asignacionesprofesores(
    idasignacionprofesor serial not null PRIMARY key,
    idcurso integer,
    idprofesor integer,    
    Foreign Key (idcurso) REFERENCES cursos (idcurso),
    Foreign Key (idprofesor) REFERENCES profesores(idprofesor)
);
