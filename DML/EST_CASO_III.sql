INSERT INTO TipoTelefone (IdTelefone, NomeTelefone) VALUES (1, 'Celular');
INSERT INTO TipoTelefone (IdTelefone, NomeTelefone) VALUES (2, 'Fixo');
INSERT INTO TipoTelefone (IdTelefone, NomeTelefone) VALUES (3, 'Comercial');
INSERT INTO TipoTelefone (IdTelefone, NomeTelefone) VALUES (4, 'Residencial');
INSERT INTO TipoTelefone (IdTelefone, NomeTelefone) VALUES (5, 'PABX');

INSERT INTO Telefones (NumeroTelefone, TipoTelefone) VALUES (123456789, 1);
INSERT INTO Telefones (NumeroTelefone, TipoTelefone) VALUES (987654321, 2);
INSERT INTO Telefones (NumeroTelefone, TipoTelefone) VALUES (111223344, 3);
INSERT INTO Telefones (NumeroTelefone, TipoTelefone) VALUES (555666777, 4);
INSERT INTO Telefones (NumeroTelefone, TipoTelefone) VALUES (444333222, 5);

INSERT INTO TipoEndereco (IdTipo) VALUES (1);
INSERT INTO TipoEndereco (IdTipo) VALUES (2);
INSERT INTO TipoEndereco (IdTipo) VALUES (3);
INSERT INTO TipoEndereco (IdTipo) VALUES (4);
INSERT INTO TipoEndereco (IdTipo) VALUES (5);

INSERT INTO Endereco (IdEndereco, RuaEndereco, BairroEndereco, NumeroEndereco, CidadeEndereco, EstadoEndereco, TipoEndereco, PaisEndereco) 
VALUES (1, 'Rua das Flores', 'Centro', 100, 'Rio de Janeiro', 'RJ', 1, 'Brasil');
INSERT INTO Endereco (IdEndereco, RuaEndereco, BairroEndereco, NumeroEndereco, CidadeEndereco, EstadoEndereco, TipoEndereco, PaisEndereco) 
VALUES (2, 'Rua dos Três Irmãos', 'Bairro A', 200, 'São Paulo', 'SP', 2, 'Brasil');
INSERT INTO Endereco (IdEndereco, RuaEndereco, BairroEndereco, NumeroEndereco, CidadeEndereco, EstadoEndereco, TipoEndereco, PaisEndereco) 
VALUES (3, 'Avenida Paulista', 'Bairro B', 500, 'São Paulo', 'SP', 3, 'Brasil');
INSERT INTO Endereco (IdEndereco, RuaEndereco, BairroEndereco, NumeroEndereco, CidadeEndereco, EstadoEndereco, TipoEndereco, PaisEndereco) 
VALUES (4, 'Rua das Palmeiras', 'Bairro C', 600, 'Belo Horizonte', 'MG', 4, 'Brasil');
INSERT INTO Endereco (IdEndereco, RuaEndereco, BairroEndereco, NumeroEndereco, CidadeEndereco, EstadoEndereco, TipoEndereco, PaisEndereco) 
VALUES (5, 'Rua do Sol', 'Bairro D', 800, 'Salvador', 'BA', 5, 'Brasil');

INSERT INTO Fornecedores (CnpjFornecedor, RazaoSocialFornecedor, TelefoneFornecedor, EnderecoFornecedor, ContatoFornecedor) 
VALUES (123456780, 'Fornecedor A', 123456789, 1, 'contato@fornecedora.com');
INSERT INTO Fornecedores (CnpjFornecedor, RazaoSocialFornecedor, TelefoneFornecedor, EnderecoFornecedor, ContatoFornecedor) 
VALUES (987654320, 'Fornecedor B', 987654321, 2, 'contato@fornecedorb.com');
INSERT INTO Fornecedores (CnpjFornecedor, RazaoSocialFornecedor, TelefoneFornecedor, EnderecoFornecedor, ContatoFornecedor) 
VALUES (112233440, 'Fornecedor C', 111223344, 3, 'fornecedorC@mail.com');
INSERT INTO Fornecedores (CnpjFornecedor, RazaoSocialFornecedor, TelefoneFornecedor, EnderecoFornecedor, ContatoFornecedor) 
VALUES (223344550, 'Fornecedor D', 555666777, 4, 'fornecedorD@mail.com');
INSERT INTO Fornecedores (CnpjFornecedor, RazaoSocialFornecedor, TelefoneFornecedor, EnderecoFornecedor, ContatoFornecedor) 
VALUES (334455660, 'Fornecedor E', 444333222, 5, 'fornecedorE@mail.com');

INSERT INTO TipoComponente (IdComponente, NomeComponente) VALUES (1, 'Componente A');
INSERT INTO TipoComponente (IdComponente, NomeComponente) VALUES (2, 'Componente B');
INSERT INTO TipoComponente (IdComponente, NomeComponente) VALUES (3, 'Componente C');
INSERT INTO TipoComponente (IdComponente, NomeComponente) VALUES (4, 'Componente D');
INSERT INTO TipoComponente (IdComponente, NomeComponente) VALUES (5, 'Componente E');

UPDATE TipoTelefone SET NomeTelefone = 'Celular' WHERE IdTelefone = 1;
UPDATE TipoTelefone SET NomeTelefone = 'Fixo' WHERE IdTelefone = 2;
UPDATE Telefones SET TipoTelefone = 1 WHERE NumeroTelefone = 123456789;
UPDATE Telefones SET TipoTelefone = 2 WHERE NumeroTelefone = 987654321;
UPDATE TipoEndereco SET IdTipo = 2 WHERE IdTipo = 1;
UPDATE TipoEndereco SET IdTipo = 3 WHERE IdTipo = 2;
UPDATE Endereco SET RuaEndereco = 'Avenida Brasil' WHERE IdEndereco = 2;
UPDATE Endereco SET CidadeEndereco = 'São Paulo' WHERE IdEndereco = 3;
UPDATE Fornecedores SET RazaoSocialFornecedor = 'Fornecedor A' WHERE CnpjFornecedor = 12345678000199;
UPDATE Fornecedores SET ContatoFornecedor = 'contato@fornecedorb.com' WHERE CnpjFornecedor = 98765432000188;
UPDATE TipoComponente SET NomeComponente = 'Componente A' WHERE IdComponente = 2;
UPDATE TipoComponente SET NomeComponente = 'Componente B' WHERE IdComponente = 3;

DELETE FROM TipoTelefone WHERE IdTelefone = 1;
DELETE FROM Telefones WHERE NumeroTelefone = 123456789;
DELETE FROM TipoEndereco WHERE IdTipo = 1;
DELETE FROM Endereco WHERE IdEndereco = 1;
DELETE FROM Fornecedores WHERE CnpjFornecedor = 12345678000199;
DELETE FROM TipoComponente WHERE IdComponente = 1;