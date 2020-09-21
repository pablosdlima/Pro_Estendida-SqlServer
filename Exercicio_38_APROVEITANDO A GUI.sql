-- Exercicio_38_APROVEITANDO A GUI

-- CRIAR UM DATABASE MYBASE

CREATE DATABASE MYBASE
GO
USE MYBASE
-- ADICIONAR DUAS PROPRIEDADES - DATA / DESCRI��O

EXEC SYS.sp_addextendedproperty
@NAME = N'DATA', @VALUE = N'21-09-2020'
GO

EXEC SYS.sp_addextendedproperty
@NAME = N'DESCRI��O', @VALUE = N'Essa aqui � uma descri��o do database Mybase'
GO
-- Criar uma tabela chamada projetos. - Duas colunas (nome e PK)

CREATE TABLE PROJETOS(
	ID INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(20) NOT NULL
)
GO
-- Add duas descri��es na tabela criada.

EXEC SYS.sp_addextendedproperty
@NAME = N'VALORES TABELA PROJETOS', @VALUE = N'21-09-2020',

@LEVEL0TYPE = N'SCHEMA', @LEVEL0NAME = N'dbo', 
@LEVEL1TYPE = N'TABLE', @LEVEL1NAME = N'PROJETOS' 
GO

