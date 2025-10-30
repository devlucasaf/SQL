/* 
Neste primeiro código, o professor ensinou como funciona a  Modelagem
Lógica e Física
Data: 30-10-25
Aula 18: Modelagem Lógica e Física
Aula 19: Modelagem Física
*/

/* 
Modelagem Básica - ENTIDADE=TABELA 
Campos = Atributos

CLIENTE

NOME - CARACTER(30)
CPF - NUMERICO(11)
TELEFONE - CARACTER(30)
EMAIL - CARACTER(30)
ENDERECO - CARACTER(100)
SEXO - CARACTER(1)

-- Processos de Modelagem

-- Fase 1 e Fase 2 - AD ADM de Dados
MODELAGEM CONCEITUAL - Rascunho
MODELAGEM LÓGICA - Qualquer programa de modelagem

-- Fase 03 - DBA / AD
MODELAGEM FÍSICA - SCRIPTS de Banco

*/

-- Criando o Banco de Dados

CREATE DATABASE PROJETO;

-- Conectando-se ao Banco de Dados

USE Projeto;

-- Criando a tabela clientes

CREATE TABLE CLIENTE (
	NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(30),
    CPF INT(11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(100)
);

-- Verificando as tabelas do banco

SHOW TABLES;

-- Descobrindo como é a estrutura de uma tabela

DESC CLIENTE;
