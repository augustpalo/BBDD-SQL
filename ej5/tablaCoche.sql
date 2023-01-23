CREATE TABLE Coche(
    Matricula   VARCHAR2(7),
    Marca       VARCHAR2(20) NOT NULL,
    Modelo      VARCHAR2(20) NOT NULL,
    Color       VARCHAR2(10),
    PrecioHora  NUMBER,
    CONSTRAINT co_mat_pk PRIMARY KEY (Matricula)
);