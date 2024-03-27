--CASO4

VAR b_propiedad_a VARCHAR2(30);

VAR b_propiedad_b VARCHAR2(30);

VAR b_propiedad_c VARCHAR2(30);

VAR b_propiedad_d VARCHAR2(30);

VAR b_propiedad_e VARCHAR2(30);

VAR b_propiedad_f VARCHAR2(30);

VAR b_propiedad_g VARCHAR2(30);

VAR b_propiedad_h VARCHAR2(30);



EXEC :b_propiedad_a :='A' ;

EXEC :b_propiedad_b :='B' ;

EXEC :b_propiedad_c :='C' ;

EXEC :b_propiedad_d :='D' ;

EXEC :b_propiedad_e :='E' ;

EXEC :b_propiedad_f :='F' ;

EXEC :b_propiedad_g :='G' ;

EXEC :b_propiedad_h :='H' ;


SET SERVEROUTPUT ON;

DECLARE
    v_propiedad         VARCHAR2(30);
    v_total_propiedades NUMBER;
    v_valor_total       NUMBER;
BEGIN
    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_a
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_b
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_c
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_d
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_e
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_f
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_g
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

    SELECT
        tp.desc_tipo_propiedad,
        COUNT(p.id_tipo_propiedad),
        SUM(p.valor_arriendo)
    INTO
        v_propiedad,
        v_total_propiedades,
        v_valor_total
    FROM
             propiedad p
        INNER JOIN tipo_propiedad tp ON p.id_tipo_propiedad = tp.id_tipo_propiedad
    WHERE
        p.id_tipo_propiedad = :b_propiedad_h
    GROUP BY
        tp.desc_tipo_propiedad;

    dbms_output.put_line('RESUMEN DE: '
                         || v_propiedad
                         || chr(10)
                         || 'TOTAL DE PROPIEDADES: '
                         || v_total_propiedades
                         || chr(10)
                         || 'VALOR TOTAL ARRIENDO: '
                         || to_char(v_valor_total, 'L999G999G999'));

END;