CREATE TABLE escribe(
    NumReg  INTEGER,
    DNI_Per CHAR(9),
    CONSTRAINT es_numdni_pk PRIMARY KEY (NumReg, DNI_Per),
    CONSTRAINT es_dni_fk FOREIGN KEY (DNI_Per) REFERENCES Periodista(DNI),
    CONSTRAINT es_num_fk FOREIGN KEY (NumReg) REFERENCES Revista(NumReg)
);