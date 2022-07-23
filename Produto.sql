-- Tabela produto
CREATE TABLE Produto (
id_produto SERIAL PRIMARY KEY,
ds_produto VARCHAR(255) NOT NULL CHECK( ds_produto <> '' ),
qt_minima_reposicao INTEGER NOT NULL CHECK( qt_minima_reposicao > 0 )
);

-- Adicionando produtos na tabela
INSERT INTO Produto
(ds_produto, qt_minima_reposicao)
VALUES ('Margarina', 50), ('Tomate',10),
('Macarrão', 15), ('Sabonete', 5),
('Esponja', 3) ;

-- listando a tabela
SELECT * FROM Produto ;
