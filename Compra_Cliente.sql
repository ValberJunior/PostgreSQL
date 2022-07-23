-- Tabela Compra Cliente
CREATE TABLE Compra_Cliente(
id_cliente INTEGER ,
id_produto INTEGER ,
qt_produto INTEGER NOT NULL,
FOREIGN KEY (id_cliente)
REFERENCES Cliente(id_cliente),
FOREIGN KEY (id_produto)
REFERENCES Produto(id_produto)
);

-- inserir dados na Compra do Cliente
INSERT INTO Compra_Cliente (id_cliente, id_produto, qt_produto)
VALUES (1,1,5), (1,3,7),(1,5,2),(3,1,7),(3,1,2),(3,4,5),(3,5,9);

-- Listar compras
SELECT * FROM Compra_Cliente ;
