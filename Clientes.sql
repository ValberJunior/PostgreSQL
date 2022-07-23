-- Tabela de Clientes
CREATE TABLE Cliente(
id_cliente SERIAL PRIMARY KEY,
ds_cliente VARCHAR(255) NOT NULL CHECK( ds_cliente <> '' )
);

-- Adicionando Clientes
INSERT INTO Cliente (ds_cliente)
VALUES ('Maria da Silva'), ('João Pedro'), ('Eduardo Pereira')
;

-- Listar clientes
SELECT * FROM Cliente ;