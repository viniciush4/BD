-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Maio-2017 às 00:29
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `celular` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autorlivro`
--

CREATE TABLE `autorlivro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor_id` int(11) DEFAULT NULL,
  `livro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `emprestimo_dias` int(11) DEFAULT NULL,
  `multa_diaria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biblioteca_id` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exemplar_id` int(11) DEFAULT NULL,
  `funcionario_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exemplar`
--

CREATE TABLE `exemplar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `livro_id` int(11) DEFAULT NULL,
  `secao_biblioteca_id` int(11) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `emprestado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_id` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `data_contratacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `editora_id` int(11) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `isbn` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavrachave`
--

CREATE TABLE `palavrachave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palavra` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `palavrachavelivro`
--

CREATE TABLE `palavrachavelivro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `palavra_chave_id` int(11) DEFAULT NULL,
  `livro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exemplar_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secao`
--

CREATE TABLE `secao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secaobiblioteca`
--

CREATE TABLE `secaobiblioteca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `secao_id` int(11) DEFAULT NULL,
  `biblioteca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariobiblioteca`
--

CREATE TABLE `usuariobiblioteca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biblioteca_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autorlivro`
--
ALTER TABLE `autorlivro`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palavrachave`
--
ALTER TABLE `palavrachave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `palavrachavelivro`
--
ALTER TABLE `palavrachavelivro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livro_id` (`livro_id`),
  ADD KEY `palavra_chave_id` (`palavra_chave_id`);

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
-- Indexes for table `secaobiblioteca`
--
ALTER TABLE `secaobiblioteca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secao_id` (`secao_id`),
  ADD KEY `biblioteca_id` (`biblioteca_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuariobiblioteca`
--
ALTER TABLE `usuariobiblioteca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biblioteca_id` (`biblioteca_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `autorlivro`
--
ALTER TABLE `autorlivro`
  ADD CONSTRAINT `autorlivro_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `autorlivro_ibfk_2` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`);

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
  ADD CONSTRAINT `exemplar_ibfk_2` FOREIGN KEY (`secao_biblioteca_id`) REFERENCES `secaobiblioteca` (`id`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`);

--
-- Limitadores para a tabela `palavrachavelivro`
--
ALTER TABLE `palavrachavelivro`
  ADD CONSTRAINT `palavrachavelivro_ibfk_1` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`),
  ADD CONSTRAINT `palavrachavelivro_ibfk_2` FOREIGN KEY (`palavra_chave_id`) REFERENCES `palavrachave` (`id`);

--
-- Limitadores para a tabela `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`exemplar_id`) REFERENCES `exemplar` (`id`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `secaobiblioteca`
--
ALTER TABLE `secaobiblioteca`
  ADD CONSTRAINT `secaobiblioteca_ibfk_1` FOREIGN KEY (`secao_id`) REFERENCES `secao` (`id`),
  ADD CONSTRAINT `secaobiblioteca_ibfk_2` FOREIGN KEY (`biblioteca_id`) REFERENCES `biblioteca` (`id`);

--
-- Limitadores para a tabela `usuariobiblioteca`
--
ALTER TABLE `usuariobiblioteca`
  ADD CONSTRAINT `usuariobiblioteca_ibfk_1` FOREIGN KEY (`biblioteca_id`) REFERENCES `biblioteca` (`id`),
  ADD CONSTRAINT `usuariobiblioteca_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
