-- CASO 2
VAR b_rut NUMBER
EXEC :b_rut := &RUT;

VAR b_monto NUMBER
EXEC :b_monto := 800000;

DECLARE
    v_nombrecompleto VARCHAR2(57);
    v_rut            cliente.numrut_cli%TYPE;
    v_dv             cliente.dvrut_cli%TYPE;
    v_estcivil       estado_civil.desc_estcivil%TYPE;
    v_renta          cliente.renta_cli%TYPE;
BEGIN
    SELECT
        nombre_cli
        || ' '
        || appaterno_cli
        || ' '
        || apmaterno_cli,
        numrut_cli,
        dvrut_cli,
        renta_cli,
        ce.desc_estcivil
    INTO
        v_nombrecompleto,
        v_rut,
        v_dv,
        v_renta,
        v_estcivil
    FROM
             cliente c
        INNER JOIN estado_civil ce ON c.id_estcivil = ce.id_estcivil
    WHERE
            numrut_cli = :b_rut
        AND ( ( ce.id_estcivil IN ( 3, 4 )
                AND renta_cli >= :b_monto )
              OR ce.id_estcivil = 1 );

    dbms_output.put_line('DATOS DEL CLIENTE');
    dbms_output.put_line('-----------------');
    dbms_output.put_line('Nombre: ' || v_nombrecompleto);
    dbms_output.put_line('RUN: '
                         || to_char(v_rut, '99G999G999')
                         || '-'
                         || v_dv);

    dbms_output.put_line('Estado civil: ' || v_estcivil);
    dbms_output.put_line('Renta: ' || v_renta);
END;