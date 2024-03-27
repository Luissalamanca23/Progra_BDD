--caso 3
set serveroutput on;   

VARIABLE b_rut number
exec :b_rut:=12260812;

VARIABLE b_porcentaje1 number
exec :b_porcentaje1:=8.5;

VARIABLE b_porcentaje2 number
exec :b_porcentaje2:=20;

VARIABLE b_rango1 number
exec :b_rango1 :=200000;
VARIABLE b_rango2 number
exec :b_rango2:=400000;

DECLARE
    v_nombrecompleto   VARCHAR2(57);
    v_rut              empleado.numrut_emp%TYPE;
    v_dv               empleado.dvrut_emp%TYPE;
    v_sueldo           empleado.sueldo_emp%TYPE;
    v_sueldoreajustado empleado.sueldo_emp%TYPE;
    v_reajuste         empleado.sueldo_emp%TYPE;
BEGIN

-- simulacion 1
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
        v_nombrecompleto,
        v_rut,
        v_dv,
        v_sueldo
    FROM
        empleado
    WHERE
        numrut_emp = :b_rut;

    v_reajuste := v_sueldo * ( :b_porcentaje1 / 100 );
    v_sueldoreajustado := v_sueldo + v_reajuste;
    dbms_output.put_line('NOMBRE DEL EMPLEADO: ' || v_nombrecompleto);
    dbms_output.put_line('RUN: '
                         || v_rut
                         || '-'
                         || v_dv);
    dbms_output.put_line('SIMULACION 1: Aumentar en '
                         || :b_porcentaje1
                         || '% el salario de todos los empleados');
    dbms_output.put_line('Sueldo actual: ' || v_sueldo);
    dbms_output.put_line('Sueldo reajustado: ' || v_sueldoreajustado);
    dbms_output.put_line('Reajuste: ' || v_reajuste);

--simulacion 2
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
        v_nombrecompleto,
        v_rut,
        v_dv,
        v_sueldo
    FROM
        empleado
    WHERE
            numrut_emp = :b_rut
        AND sueldo_emp BETWEEN :b_rango1 AND :b_rango2;

    v_reajuste := v_sueldo * ( :b_porcentaje2 / 100 );
    v_sueldoreajustado := v_sueldo + v_reajuste;
    dbms_output.put_line('NOMBRE DEL EMPLEADO: ' || v_nombrecompleto);
    dbms_output.put_line('RUN: '
                         || v_rut
                         || '-'
                         || v_dv);
    dbms_output.put_line('SIMULACION 2: Aumentar en '
                         || :b_porcentaje1
                         || '% el salario de todos los empleados que poseen sueldos entre'
                         || :b_rango1
                         || ' y '
                         || :b_rango2);

    dbms_output.put_line('Sueldo actual: ' || v_sueldo);
    dbms_output.put_line('Sueldo reajustado: ' || v_sueldoreajustado);
    dbms_output.put_line('Reajuste: ' || v_reajuste);
END;