--Caso 1
SET SERVEROUTPUT ON;
VARIABLE b_rut NUMBER;
EXEC :b_rut :=18560875;
VARIABLE b_porcentaje NUMBER;
EXEC :b_porcentaje :=40;

DECLARE
    v_nomc   VARCHAR2(57);
    v_numr   empleado.numrut_emp%TYPE;
    v_dv     empleado.dvrut_emp%TYPE;
    v_sueldo empleado.sueldo_emp%TYPE;
    v_bon    empleado.sueldo_emp%TYPE;
BEGIN
    SELECT
        nombre_emp
        || ' '
        || appaterno_emp
        || ' '
        || apmaterno_emp,
        numrut_emp,
        dvrut_emp,
        sueldo_emp
    INTO
        v_nomc,
        v_numr,
        v_dv,
        v_sueldo
    FROM
        empleado
    WHERE
            sueldo_emp <= 500000
        AND id_categoria_emp NOT IN ( 3 )
        AND numrut_emp = :b_rut;

    v_bon := v_sueldo * ( :b_porcentaje / 100 );
    dbms_output.put_line('DATOS CALCULO BONIFICACION EXTRA DEL : '
                         || :b_porcentaje
                         || '% DEL SUELDO');
    dbms_output.put_line('El nombre del empleado es : ' || upper(v_nomc));
    dbms_output.put_line('Cédula del empleado es : '
                         || to_char(v_numr, '99G999G999')
                         || '-'
                         || v_dv);

    dbms_output.put_line('Sueldo : '
                         || trim(to_char(v_sueldo, 'L99G999G999')));
    dbms_output.put_line('Bono : '
                         || trim(to_char(v_bon, 'L99G999G999')));
END;