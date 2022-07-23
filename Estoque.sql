-- Tabela Estoque
CREATE TABLE Estoque (
id_produto INTEGER PRIMARY KEY,
qt_produto INTEGER,
FOREIGN KEY (id_produto)
REFERENCES Produto(id_produto)
ON DELETE CASCADE
ON UPDATE CASCADE
) ;

-- Adicionando os produtos em Estoque
INSERT INTO Estoque (id_produto, qt_produto)
VALUES (1,127),(2,2),(3,15),(4,7),(5,7) 
;

-- Listando o Estoque
SELECT * FROM Estoque ;