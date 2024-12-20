DROP SCHEMA IF EXISTS EC2_SI1N;
CREATE SCHEMA EC2_SI1N;

USE EC2_SI1N;

CREATE TABLE IF NOT EXISTS PASSAGEIROS(
  PASS_CPF INT PRIMARY KEY,
  PASS_NOME VARCHAR(45) NOT NULL,
  PASS_TELEFONE VARCHAR(13) NOT NULL,
  PASS_ENDERECO VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS VOOS(
  VOO_COD INT PRIMARY KEY,
  VOO_ORIGEM VARCHAR(45) NOT NULL,
  VOO_DESTINO VARCHAR(45) NOT NULL,
  VOO_HORARIO TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS AEROPORTOS(
  AEROPORTO_COD INT PRIMARY KEY,
  AEROPORTO_NOME VARCHAR(45) NOT NULL,
  AEROPORTO_LOCAL VARCHAR(45) NOT NULL,
  AEROPORTO_PAIS VARCHAR(45) NOT NULL,
  AEROPORTO_LONGITUDE DECIMAL(9,6) NOT NULL,
  AEROPORTO_LATITUDE DECIMAL(9,6) NOT NULL
);

CREATE TABLE IF NOT EXISTS AERONAVES(
  AERONAVE_PREFIXO INT PRIMARY KEY,
  AERONAVE_MODELO VARCHAR(45) NOT NULL,
  AERONAVE_ANOFABR DATE NOT NULL,
  AERONAVE_CAPACIDADE INT NOT NULL,
  AERONAVE_FABRICANTE VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS(
  FUNC_ID INT PRIMARY KEY,
  FUNC_FUNCAO VARCHAR(45) NOT NULL,
  FUNC_NOME VARCHAR(45) NOT NULL,
  FUNC_DATANASC DATE NOT NULL,
  FUNC_TELEFONE VARCHAR(13) NOT NULL
);

CREATE TABLE IF NOT EXISTS RESERVAS(
  RESERVA_VOO_COD INT,
  RESERVA_DATA DATE NOT NULL,
  PRIMARY KEY (RESERVA_VOO_COD),
  CONSTRAINT FK_RESERVA_VOOS FOREIGN KEY (RESERVA_VOO_COD) REFERENCES VOOS(VOO_COD)
);

CREATE TABLE IF NOT EXISTS VOOS_PASSAGEIROS(
  VOO_COD INT,
  PASS_CPF INT,
  NUM_ASSENTO VARCHAR(3),
  DATA_RESERVA DATE NOT NULL,
  PRIMARY KEY (VOO_COD, PASS_CPF),
  CONSTRAINT FK_VOOS_PASSAGEIROS_VOOS FOREIGN KEY (VOO_COD) REFERENCES VOOS(VOO_COD),
  CONSTRAINT FK_VOOS_PASSAGEIROS_PASSAGEIROS FOREIGN KEY (PASS_CPF) REFERENCES PASSAGEIROS(PASS_CPF)
);

ALTER TABLE PASSAGEIROS 
  ADD PASS_EMAIL VARCHAR(45),
  DROP COLUMN PASS_ENDERECO,
  CHANGE PASS_NOME PASS_NOME_COMPLETO VARCHAR(45) NOT NULL;

ALTER TABLE VOOS 
  ADD VOO_DATA DATE NOT NULL,
  DROP COLUMN VOO_HORARIO,
  MODIFY VOO_ORIGEM VARCHAR(45) NOT NULL,
  CHANGE VOO_DESTINO VOO_DESTINO_NOVO VARCHAR(45) NOT NULL;

ALTER TABLE AEROPORTOS 
  ADD AEROPORTO_CONTINENTE VARCHAR(20),
  DROP COLUMN AEROPORTO_LOCAL,
  MODIFY AEROPORTO_NOME VARCHAR(45) NOT NULL,
  CHANGE AEROPORTO_PAIS AEROPORTO_PAIS_NOVO VARCHAR(45) NOT NULL;

ALTER TABLE AERONAVES 
  ADD AERONAVE_ANOS_SERVICO INT,
  DROP COLUMN AERONAVE_CAPACIDADE,
  MODIFY AERONAVE_MODELO VARCHAR(45) NOT NULL,
  CHANGE AERONAVE_FABRICANTE AERONAVE_FABRICANTE_NOVO VARCHAR(45) NOT NULL;

ALTER TABLE FUNCIONARIOS 
  ADD FUNC_EMAIL VARCHAR(45),
  DROP COLUMN FUNC_TELEFONE,
  MODIFY FUNC_NOME VARCHAR(45) NOT NULL,
  CHANGE FUNC_FUNCAO FUNC_CARGO VARCHAR(45) NOT NULL;

ALTER TABLE VOOS_PASSAGEIROS 
  ADD NUM_ASSENTO VARCHAR(3),
  DROP COLUMN PASS_CPF,
  MODIFY VOO_COD INT NOT NULL,
  CHANGE VOO_COD VOOS_COD INT NOT NULL,
  ADD DATA_RESERVA DATE NOT NULL;


DROP TABLE IF EXISTS RESERVAS;
