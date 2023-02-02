ALTER table partido ADD(
    CONSTRAINT pa_fec_ck CHECK (TO_CHAR(Fecha, 'MMDD') NOT BETWEEN '0621' AND '0921')
);