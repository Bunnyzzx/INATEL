USE ATIVIDADE;
DROP TABLE Comida;
CREATE TABLE Comida(
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50),
Tipo VARCHAR(50),
Preco DOUBLE
);

INSERT INTO Comida (Nome, Tipo, Preco)
VALUES ('Pizza','Italiana', 50);
INSERT INTO Comida (Nome, Tipo, Preco)
VALUES ('Hamburguer','Fast-food', 30);
INSERT INTO Comida (Nome, Tipo, Preco)
VALUES ('Sushi','Japonesa', 60);

UPDATE Comida
SET Nome = 'Macarrao', Preco = 28
WHERE ID = 1;

DELETE FROM Comida
WHERE ID = 2 AND Preco = 30;

SELECT SUM(Preco)
FROM Comida;

SELECT * FROM Comida;
SELECT Nome FROM Comida;
