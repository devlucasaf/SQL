DO $$
BEGIN
    -- Visualização inicial
    RAISE NOTICE 'Estado inicial da tabela CLIENTE:';
    PERFORM nome, email FROM cliente;

    -- Atualização geral (sem WHERE)
    UPDATE cliente
    SET email = 'LILIAN@HOTMAIL.COM';

    -- Consultas específicas
    RAISE NOTICE 'Registro da LILIAN:';
    PERFORM * FROM cliente WHERE nome = 'LILIAN';

    RAISE NOTICE 'Registro do JOAO (antes da atualização):';
    PERFORM * FROM cliente WHERE nome = 'JOAO';

    -- Atualização do JOAO
    UPDATE cliente
    SET email = 'JOAO@IG.COM.BR'
    WHERE nome = 'JOAO';

    RAISE NOTICE 'Tabela após atualizar JOAO:';
    PERFORM nome, email FROM cliente;

    -- Atualização do JORGE
    UPDATE cliente
    SET email = 'JORGE@IG.COM.BR'
    WHERE nome = 'JORGE';

    -- Atualização da CELTA
    UPDATE cliente
    SET email = 'CELTA@HOTMAIL.COM.BR'
    WHERE nome = 'CELTA';

    -- Atualização da ANA
    UPDATE cliente
    SET email = 'ANA@HOTMAIL.COM.BR'
    WHERE nome = 'ANA';

    -- Atualização da CARLA
    UPDATE cliente
    SET email = 'CARLA@IG.COM.BR'
    WHERE nome = 'CARLA';

    -- Visualização final
    RAISE NOTICE 'Estado final da tabela CLIENTE:';
    PERFORM nome, email FROM cliente;
END;
$$ LANGUAGE plpgsql;
