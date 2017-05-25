-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 25-Maio-2017 às 13:41
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: biblioteca
--
CREATE DATABASE IF NOT EXISTS biblioteca DEFAULT CHARACTER SET utf8 COLLATE=utf8_bin;
USE biblioteca;

--
-- Estrutura da tabela biblioteca
--

CREATE TABLE IF NOT EXISTS biblioteca (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  emprestimo_dias int(11) NOT NULL DEFAULT 15,
  multa_diaria decimal(2,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela secao
--

CREATE TABLE IF NOT EXISTS secao (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


--
-- Estrutura da tabela autor
--

CREATE TABLE IF NOT EXISTS autor (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  email varchar(50) COLLATE utf8_bin DEFAULT NULL,
  celular int(13) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela editora
--

CREATE TABLE IF NOT EXISTS editora (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  email varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela usuario
--

CREATE TABLE IF NOT EXISTS usuario (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  email varchar(50) COLLATE utf8_bin DEFAULT NULL,
  celular int(11) DEFAULT NULL,
  status tinyint(1) NOT NULL DEFAULT 1,
  data_nascimento datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela livro
--

CREATE TABLE IF NOT EXISTS livro (
  id int(11) NOT NULL AUTO_INCREMENT,
  editora_id int(11) NOT NULL,
  titulo varchar(50) COLLATE utf8_bin NOT NULL,
  ano year(4) NOT NULL,
  isbn int(13) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (editora_id) REFERENCES editora (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela palavra_chave
--

CREATE TABLE IF NOT EXISTS palavra_chave (
  id int(11) NOT NULL AUTO_INCREMENT,
  palavra varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela autor_livro
--

CREATE TABLE IF NOT EXISTS autor_livro (
  id int(11) NOT NULL AUTO_INCREMENT,
  autor_id int(11) NOT NULL,
  livro_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (autor_id) REFERENCES autor (id),
  FOREIGN KEY (livro_id) REFERENCES livro (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela departamento
--

CREATE TABLE IF NOT EXISTS departamento (
  id int(11) NOT NULL AUTO_INCREMENT,
  biblioteca_id int(11) NOT NULL,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (biblioteca_id) REFERENCES biblioteca (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela secao_biblioteca
--

CREATE TABLE IF NOT EXISTS secao_biblioteca (
  id int(11) NOT NULL AUTO_INCREMENT,
  secao_id int(11) NOT NULL,
  biblioteca_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (secao_id) REFERENCES secao (id),
  FOREIGN KEY (biblioteca_id) REFERENCES biblioteca (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela exemplar
--

CREATE TABLE IF NOT EXISTS exemplar (
  id int(11) NOT NULL AUTO_INCREMENT,
  livro_id int(11) NOT NULL,
  secao_biblioteca_id int(11) NOT NULL,
  data_cadastro datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  emprestado tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  FOREIGN KEY (livro_id) REFERENCES livro (id),
  FOREIGN KEY (secao_biblioteca_id) REFERENCES secao_biblioteca (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela funcionario
--

CREATE TABLE IF NOT EXISTS funcionario (
  id int(11) NOT NULL AUTO_INCREMENT,
  departamento_id int(11) NOT NULL,
  nome varchar(50) COLLATE utf8_bin NOT NULL,
  email varchar(50) COLLATE utf8_bin DEFAULT NULL,
  celular int(11) DEFAULT NULL,
  status tinyint(1) NOT NULL DEFAULT 1,
  data_contratacao datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (departamento_id) REFERENCES departamento (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela emprestimo
--

CREATE TABLE IF NOT EXISTS emprestimo (
  id int(11) NOT NULL AUTO_INCREMENT,
  exemplar_id int(11) NOT NULL,
  funcionario_id int(11) NOT NULL,
  usuario_id int(11) NOT NULL,
  data_emprestimo datetime NOT NULL,
  data_devolucao datetime NOT NULL,
  valor_multa decimal(3,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (id),
  FOREIGN KEY (exemplar_id) REFERENCES exemplar (id),
  FOREIGN KEY (funcionario_id) REFERENCES funcionario (id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela multa
--

CREATE TABLE IF NOT EXISTS multa (
  id int(11) NOT NULL AUTO_INCREMENT,
  funcionario_id int(11) NOT NULL,
  emprestimo_id int(11) NOT NULL,
  data_recebimento datetime NOT NULL,
  valor decimal(3,2) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (funcionario_id) REFERENCES funcionario (id),
  FOREIGN KEY (emprestimo_id) REFERENCES emprestimo (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela palavra_chave_livro
--

CREATE TABLE IF NOT EXISTS palavra_chave_livro (
  id int(11) NOT NULL AUTO_INCREMENT,
  palavra_chave_id int(11) NOT NULL,
  livro_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (palavra_chave_id) REFERENCES palavra_chave (id),
  FOREIGN KEY (livro_id) REFERENCES livro (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela reserva
--

CREATE TABLE IF NOT EXISTS reserva (
  id int(11) NOT NULL AUTO_INCREMENT,
  exemplar_id int(11) NOT NULL,
  usuario_id int(11) NOT NULL,
  data datetime NOT NULL,
  status tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id),
  FOREIGN KEY (exemplar_id) REFERENCES exemplar (id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Estrutura da tabela usuario_biblioteca
--

CREATE TABLE IF NOT EXISTS usuario_biblioteca (
  id int(11) NOT NULL AUTO_INCREMENT,
  biblioteca_id int(11) NOT NULL,
  usuario_id int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (biblioteca_id) REFERENCES biblioteca (id),
  FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

