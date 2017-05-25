-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 25-Maio-2017 às 13:30
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `celular` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor_livro`
--

CREATE TABLE `autor_livro` (
  `id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `emprestimo_dias` int(11) NOT NULL DEFAULT '15',
  `multa_diaria` decimal(2,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `biblioteca_id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id` int(11) NOT NULL,
  `exemplar_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data_emprestimo` datetime NOT NULL,
  `data_devolucao` datetime NOT NULL,
  `valor_multa` decimal(3,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exemplar`
--

CREATE TABLE `exemplar` (
  `id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  `secao_biblioteca_id` int(11) NOT NULL,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emprestado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `data_contratacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `editora_id` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_bin NOT NULL,
  `ano` year(4) NOT NULL,
  `isbn` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `multa`
--

CREATE TABLE `multa` (
  `id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL,
  `emprestimo_id` int(11) NOT NULL,
  `data_recebimento` datetime NOT NULL,
  `valor` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavra_chave`
--

CREATE TABLE `palavra_chave` (
  `id` int(11) NOT NULL,
  `palavra` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavra_chave_livro`
--

CREATE TABLE `palavra_chave_livro` (
  `id` int(11) NOT NULL,
  `palavra_chave_id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `exemplar_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao`
--

CREATE TABLE `secao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao_biblioteca`
--

CREATE TABLE `secao_biblioteca` (
  `id` int(11) NOT NULL,
  `secao_id` int(11) NOT NULL,
  `biblioteca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `data_nascimento` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_biblioteca`
--

CREATE TABLE `usuario_biblioteca` (
  `id` int(11) NOT NULL,
  `biblioteca_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autor_livro`
--
ALTER TABLE `autor_livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor_id` (`autor_id`),
  ADD KEY `livro_id` (`livro_id`);

--
-- Indexes for table `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biblioteca_id` (`biblioteca_id`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exemplar_id` (`exemplar_id`),
  ADD KEY `funcionario_id` (`funcionario_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `exemplar`
--
ALTER TABLE `exemplar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro_id` (`livro_id`),
  ADD KEY `secao_biblioteca_id` (`secao_biblioteca_id`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamento_id` (`departamento_id`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `editora_id` (`editora_id`);

--
-- Indexes for table `multa`
--
ALTER TABLE `multa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionario_id` (`funcionario_id`),
  ADD KEY `emprestimo_id` (`emprestimo_id`);

--
-- Indexes for table `palavra_chave`
--
ALTER TABLE `palavra_chave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palavra_chave_livro`
--
ALTER TABLE `palavra_chave_livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `palavra_chave_id` (`palavra_chave_id`),
  ADD KEY `livro_id` (`livro_id`);

--
-- Indexes for table `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exemplar_id` (`exemplar_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `secao`
--
ALTER TABLE `secao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secao_biblioteca`
--
ALTER TABLE `secao_biblioteca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secao_id` (`secao_id`),
  ADD KEY `biblioteca_id` (`biblioteca_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario_biblioteca`
--
ALTER TABLE `usuario_biblioteca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biblioteca_id` (`biblioteca_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `autor_livro`
--
ALTER TABLE `autor_livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exemplar`
--
ALTER TABLE `exemplar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `multa`
--
ALTER TABLE `multa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `palavra_chave`
--
ALTER TABLE `palavra_chave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `palavra_chave_livro`
--
ALTER TABLE `palavra_chave_livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `secao`
--
ALTER TABLE `secao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `secao_biblioteca`
--
ALTER TABLE `secao_biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario_biblioteca`
--
ALTER TABLE `usuario_biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `autor_livro`
--
ALTER TABLE `autor_livro`
  ADD CONSTRAINT `autor_livro_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `autor_livro_ibfk_2` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`);

--
-- Limitadores para a tabela `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`biblioteca_id`) REFERENCES `biblioteca` (`id`);

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`exemplar_id`) REFERENCES `exemplar` (`id`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `exemplar`
--
ALTER TABLE `exemplar`
  ADD CONSTRAINT `exemplar_ibfk_1` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`),
  ADD CONSTRAINT `exemplar_ibfk_2` FOREIGN KEY (`secao_biblioteca_id`) REFERENCES `secao_biblioteca` (`id`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`editora_id`) REFERENCES `editora` (`id`);

--
-- Limitadores para a tabela `multa`
--
ALTER TABLE `multa`
  ADD CONSTRAINT `multa_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`),
  ADD CONSTRAINT `multa_ibfk_2` FOREIGN KEY (`emprestimo_id`) REFERENCES `emprestimo` (`id`);

--
-- Limitadores para a tabela `palavra_chave_livro`
--
ALTER TABLE `palavra_chave_livro`
  ADD CONSTRAINT `palavra_chave_livro_ibfk_1` FOREIGN KEY (`palavra_chave_id`) REFERENCES `palavra_chave` (`id`),
  ADD CONSTRAINT `palavra_chave_livro_ibfk_2` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`exemplar_id`) REFERENCES `exemplar` (`id`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `secao_biblioteca`
--
ALTER TABLE `secao_biblioteca`
  ADD CONSTRAINT `secao_biblioteca_ibfk_1` FOREIGN KEY (`secao_id`) REFERENCES `secao` (`id`),
  ADD CONSTRAINT `secao_biblioteca_ibfk_2` FOREIGN KEY (`biblioteca_id`) REFERENCES `biblioteca` (`id`);

--
-- Limitadores para a tabela `usuario_biblioteca`
--
ALTER TABLE `usuario_biblioteca`
  ADD CONSTRAINT `usuario_biblioteca_ibfk_1` FOREIGN KEY (`biblioteca_id`) REFERENCES `biblioteca` (`id`),
  ADD CONSTRAINT `usuario_biblioteca_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
