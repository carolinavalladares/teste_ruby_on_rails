CREATE TABLE Fornecedor(id INT NOT NULL AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, descricao VARCHAR(150), cidade VARCHAR(50), endereco VARCHAR(150), bairro VARCHAR(50), numero INT, PRIMARY KEY(id))

CREATE TABLE Email(id INT NOT NULL AUTO_INCREMENT, email VARCHAR(50) NOT NULL, referencia VARCHAR(100), PRIMARY KEY(id), fornecedorId INT NOT NULL, FOREIGN KEY(fornecedorId) REFERENCES Fornecedor(id))

CREATE TABLE Telefone(id INT NOT NULL AUTO_INCREMENT, ddd VARCHAR(2) NOT NULL, numero VARCHAR(9) NOT NULL, referencia VARCHAR(100), PRIMARY KEY(id), fornecedorId INT NOT NULL, FOREIGN KEY(fornecedorId) REFERENCES Fornecedor(id))

CREATE TABLE Transportadora(id INT NOT NULL AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, PRIMARY KEY(id))

CREATE TABLE Pedido(id INT NOT NULL AUTO_INCREMENT, datahora DATETIME NOT NULL, notafiscal VARCHAR(12) NOT NULL, valorfrete FLOAT NOT NULL, desconto FLOAT NOT NULL, valortotal FLOAT NOT NULL, PRIMARY KEY(id), transportadoraId INT NOT NULL, FOREIGN KEY(transportadoraId) REFERENCES Transportadora(id))

CREATE TABLE Produto (id INT NOT NULL AUTO_INCREMENT, nome VARCHAR(80) NOT NULL, descricao VARCHAR(150), PRIMARY KEY(id), fornecedorId INT NOT NULL, FOREIGN KEY(fornecedorId) REFERENCES Fornecedor(id))

CREATE TABLE Item(id INT NOT NULL AUTO_INCREMENT, quantidade FLOAT NOT NULL, valor FLOAT NOT NULL, PRIMARY KEY(id), produtoId INT NOT NULL, FOREIGN KEY(produtoId) REFERENCES Produto(id), pedidoId INT NOT NULL,FOREIGN KEY(pedidoId) REFERENCES Pedido(id))