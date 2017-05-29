*AINDA NÃO ESTÁ FUNCIONANDO. ESTÁ DANDO ERRO AO IMPORTAR PARA O BANCO.

--
--tabela `biblioteca` -> varchar, int, decimal.
--INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('', 1, 1.1);
--

INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA OFICINA', 3, 10.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA PADARIA', 1, 2.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DO SUPER MERCADO', 5, 15.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA ESQUINA', 1, 90.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA PRACA', 2, 25.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DO SHOPPING', 7, 33.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DO METRO', 3, 45.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DO TERMINAL', 8, 17.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DO POSTO', 1, 20.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA SEM NOME', 10, 85.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA PRAIA', 9, 11.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA LAGOA', 5, 49.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DO MORRO', 4, 71.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA PONTE', 2, 6.00);
INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('BIBLIOTECA DA PIZZARIA', 13, 3.00);

--
--tabela `secao`
--INSERT INTO secao (nome) VALUES ('');
--

INSERT INTO secao (nome) VALUES ('ARTES');
INSERT INTO secao (nome) VALUES ('AMBIENTE');
INSERT INTO secao (nome) VALUES ('DIREITO');
INSERT INTO secao (nome) VALUES ('ECONOMIA');
INSERT INTO secao (nome) VALUES ('ENGENHARIA');
INSERT INTO secao (nome) VALUES ('ESPORTES');
INSERT INTO secao (nome) VALUES ('EUROPA');
INSERT INTO secao (nome) VALUES ('FILOSOFIA');
INSERT INTO secao (nome) VALUES ('GASTRONOMIA');
INSERT INTO secao (nome) VALUES ('LITERATURA');
INSERT INTO secao (nome) VALUES ('LUTAS');
INSERT INTO secao (nome) VALUES ('SAUDE');
INSERT INTO secao (nome) VALUES ('TECNOLOGIA');
INSERT INTO secao (nome) VALUES ('VIAGENS');
INSERT INTO secao (nome) VALUES ('OUTROS');

--
--tabela `autor` -> varchar, varchar.
--INSERT INTO autor (nome, email) VALUES ('', '');
--

INSERT INTO autor (nome, email) VALUES ('CLAIRE BENNET', 'CLAIRE@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('PETER PETRELLI', 'PETER@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('HIRO NAKAMURA', 'HIRO@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('MATT PARKMAN', 'MATT@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('NATHAN PETRELLI', 'NATHAN@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('NOAH BENNET', 'NOAH@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('MOHINDER SURESH', 'MOHINDER@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('NIKI SANDERS', 'NIKI@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('MICAH SANDERS', 'MICAH@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('ISAAC MENDEZ', 'ISAAC@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('SIMONE DEVEAUX', 'SIMONE@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('ANDO MASAHASHI', 'ANDO@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('SYLAR', 'SYLAR@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('ANGELA PETRELLI', 'ANGELA@EMAIL.COM');
INSERT INTO autor (nome, email) VALUES ('MAYA HERRERA', 'MAYA@EMAIL.COM');

--
--tabela `editora` -> varchar, varchar.
--INSERT INTO editora (nome, email) VALUES ('', '');
--

INSERT INTO editora (nome, email) VALUES ('EDITORA COMETA', 'COMETA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA SEM GRANA', 'GRANA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA IMPRIME DE NOVO', 'NOVO@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA FUNDO DE QUINTAL', 'QUINTAL@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA EDITADA', 'EDITADA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA PRETO E BRANCO', 'PRETOEBRANCO@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA PARAGUAIA', 'PARAGUAIA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA BARATINHA', 'BARATINHA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA PAGUE MAIS', 'MAIS@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA QUASE NOVA', 'QUASENOVA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA MEIA BOCA', 'BOCA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA TENTE A SORTE', 'SORTE@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA ESTAMOS JUNTOS', 'JUNTOS@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA VAZIA', 'VAZIA@EMAIL.COM');
INSERT INTO editora (nome, email) VALUES ('EDITORA VENCIDA', 'VENCIDA@EMAIL.COM');

--
--tabela `usuario` -> varchar, varchar, varchar, enum, datetime.
--INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('', '', '', 'ativo', '1/1/1');
--

INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('LOGAN', 'WOLVERINE@EMAIL.COM', '946541346', 'ativo', '01/12/1974');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('XAVIER', 'CHARLES@EMAIL.COM', '916581328', 'ativo', '03/09/1960');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('VAMPIRA', 'VAMP@EMAIL.COM', '984613169', 'inativo', '02/01/1978');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('TEMPESTADE', 'TEMPESTADE@EMAIL.COM', '934654416', 'inativo', '12/03/1981');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('MAGNETO', 'ERIK@EMAIL.COM', '935454812', 'ativo', '15/11/1965');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('MISTICA', 'RAVEN@EMAIL.COM', '998581231', 'inativo', '11/07/1982');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('CYCLOPE', 'SUMMERS@EMAIL.COM', '913215347', 'ativo', '8/09/1985');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('JEAN GRAY', 'JEAN@EMAIL.COM', '916532445', 'ativo', '9/08/1978');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('FERA', 'PH@EMAIL.COM', '965494916', 'ativo', '22/05/1990');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('COLOSSO', 'PETER@EMAIL.COM', '965461324', 'inativo', '27/10/1984');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('JUGGERNAUT', 'CAIN@EMAIL.COM', '964983232', 'ativo', '09/04/1989');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('FEITICEIRA', 'ESCARLATE@EMAIL.COM', '994916342', 'ativo', '05/06/1979');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('MERCURIO', 'PIETRO@EMAIL.COM', '979321324', 'inativo', '03/09/1976');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('HULK', 'BRUCE@EMAIL.COM', '954651321', 'ativo', '02/07/1987');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('HOMEM DE FERRO', 'TONY@EMAIL.COM', '987946541', 'ativo', '17/08/1987');

--
--tabela `livro` -> int, varchar, year, varchar.
--INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (1, '', '', '');
--

INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (9, 'APRENDA A LUTAR DORMINDO', '2005', 'ISBN 978–972–41–4427–6');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (6, 'POEIRA EM ALTO MAR', '1980', 'ISBN 99921-58-10-7');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (8, 'A BICICLETA DESGOVERNADA', '2001', 'ISBN 9971-5-0210-0');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (11, 'CANTE DE BOCA FECHADA', '2014', 'ISBN 972-662-905-4');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (1, 'COMO PASSAR EM BANCO DE DADOS', '1999', 'ISBN 85-359-0277-5');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (11, 'A MORDIDA FATAL DA MARIA BANGUELA', '1987', 'ISBN 0-684-84328-5');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (14, 'O LIVRO SOBRE TUDO', '1900', 'ISBN 0-8044-2957-X');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (7, 'COMPRE SEM TER DINHEIRO', '2007', 'ISBN 0-85131-041-9');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (3, 'COZINHE TUDO EM 3 MINUTOS', '2011', 'ISBN 0-943396-04-2');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'O SEGREDO DA COMPUTACAO', '1992', 'ISBN 0-9752298-0-X');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'CONTANDO ATÉ O INFINITO', '2017', 'ISBN 0-9254623-5-2');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (15, 'DIRIJA DE OLHOS FECHADOS', '1996', 'ISBN 0-9499465-3-X');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (5, 'SEJA PRESIDENTE POR UM DIA', '1984', 'ISBN 0-9465233-6-X');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (13, 'A VERDADEIRA FORCA DAS FORMIGAS', '1971', 'ISBN 85-389-04563-7');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (10, 'A CURA DO CANCER', '2010', 'ISBN 85-359-4227-8');

--
--tabela `palavra_chave` -> varchar.
--INSERT INTO palavra_chave (palavra) VALUES ('');
--

INSERT INTO palavra_chave (palavra) VALUES ('LUTAR');
INSERT INTO palavra_chave (palavra) VALUES ('MAR');
INSERT INTO palavra_chave (palavra) VALUES ('TUDO');
INSERT INTO palavra_chave (palavra) VALUES ('OLHOS');
INSERT INTO palavra_chave (palavra) VALUES ('COMPUTACAO');
INSERT INTO palavra_chave (palavra) VALUES ('DINHEIRO');
INSERT INTO palavra_chave (palavra) VALUES ('BICICLETA');
INSERT INTO palavra_chave (palavra) VALUES ('BOCA');
INSERT INTO palavra_chave (palavra) VALUES ('CURA');
INSERT INTO palavra_chave (palavra) VALUES ('COZINHE');
INSERT INTO palavra_chave (palavra) VALUES ('DIRIJA');
INSERT INTO palavra_chave (palavra) VALUES ('APRENDA');
INSERT INTO palavra_chave (palavra) VALUES ('PASSAR');
INSERT INTO palavra_chave (palavra) VALUES ('DADOS');
INSERT INTO palavra_chave (palavra) VALUES ('MINUTOS');

--
--tabela `autor_livro` -> int, int.
--INSERT INTO autor_livro (autor_id, livro_id) VALUES (1, 1);
--

INSERT INTO autor_livro (autor_id, livro_id) VALUES (9, 2);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (3, 7);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (1, 12);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (14, 13);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (5, 15);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (5, 14);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (7, 3);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (15, 1);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (12, 8);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (4, 11);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (10, 10);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (2, 6);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (6, 9);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (3, 4);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (8, 5);

--
--tabela `departamento` -> int, varchar.
--INSERT INTO departamento (biblioteca_id, nome) VALUES (1, '');
--

INSERT INTO departamento (biblioteca_id, nome) VALUES (9, 'DEPARTAMENTO DE DOACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (7, 'DEPARTAMENTO DE ATENDIMENTO GERAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO DE LIMPEZA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (5, 'DEPARTAMENTO DE ORGANIZACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (4, 'DEPARTAMENTO DE INFORMATICA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (11, 'DEPARTAMENTO DE RECURSOS HUMANOS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (2, 'DEPARTAMENTO DE CONTABILIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (14, 'DEPARTAMENTO DE COMPRAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (3, 'DEPARTAMENTO OPERACIONAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (13, 'DEPARTAMENTO JURÍDICO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (6, 'DEPARTAMENTO DE VENDAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (8, 'DEPARTAMENTO DE COMUNICACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (8, 'DEPARTAMENTO DE CONTROLE DE QUALIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (12, 'DEPARTAMENTO MARKETING');
INSERT INTO departamento (biblioteca_id, nome) VALUES (15, 'DEPARTAMENTO DE CONTROLE DE ESTOQUE');

--
--tabela `secao_biblioteca` -> int, int.
--INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (1, 1);
--

INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (9, 12);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (15, 1);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (13, 14);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (7, 5);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (8, 1);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (2, 9);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (12, 7);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (3, 6);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (10, 10);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (4, 15);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (14, 4);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (1, 13);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (11, 2);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (6, 11);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (3, 8);

--
--tabela `exemplar` -> int, int, datetime, enum.
--INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (1, 1, '1/1/1', 'devolvido');
--

INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (11, 9, '13/03/2017', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (15, 10, '02/01/2016', 'emprestado');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (9, 8, '21/12/2000', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (5, 13, '19/09/2005', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (12, 2, '05/05/2012', 'emprestado');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (3, 7, '09/07/2014', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (13, 4, '11/10/2015', 'emprestado');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (8, 6, '17/11/2006', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (14, 6, '01/04/2013', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (2, 3, '03/12/2016', 'emprestado');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (7, 14, '29/09/2014', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (10, 1, '25/03/2017', 'emprestado');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (4, 7, '18/01/2016', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (1, 12, '10/10/2015', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (6, 11, '07/11/2016', 'emprestado');

--
--tabela `funcionario` -> int, varchar, varchar, varchar, enum, datetime.
--INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (1, '', '', '', 'ativo', '1/1/1');
--

INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (8, 'CLARK KENT', 'CLARK@EMAIL.COM', '964689646', 'ativo', '11/02/2001');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (12, 'CHLOE SULLIVAN', 'CHLOE@EMAIL.COM', '915648899', 'ativo', '02/05/2012');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (3, 'LEX LUTHOR', 'LEX@EMAIL.COM', '922224548', 'inativo', '05/12/2013');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (6, 'LANA LANG', 'LANA@EMAIL.COM', '982646659', 'ativo', '09/03/1999');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (14, 'LOIS LANE', 'LOIS@EMAIL.COM', '945782662', 'ativo', '22/08/2016');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (2, 'LIONEL LUTHOR', 'LIONEL@EMAIL.COM', '934916546', 'ativo', '29/11/2005');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (15, 'OLIVER QUEEN', 'OLIVER@EMAIL.COM', '997984165', 'ativo', '30/07/2002');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (7, 'MARTHA KENT', 'MARTHA@EMAIL.COM', '934981381', 'ativo', '07/10/2013');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (5, 'JONATHAN KENT', 'JONATHAN@EMAIL.COM', '979146516', 'ativo', '13/02/1995');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (9, 'PETE ROSS', 'PETE@EMAIL.COM', '924168475', 'ativo', '19/11/2004');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (1, 'TESS MERCER', 'TESS@EMAIL.COM', '954521878', 'ativo', '09/05/2009');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (9, 'HENRY JIMMY OLSEN', 'HENRY@EMAIL.COM', '995846566', 'ativo', '25/12/2015');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (10, 'WHITNEY FORDMAN', 'WHITNEY@EMAIL.COM', '978465464', 'ativo', '26/06/2000');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (12, 'JASON TEAGUE', 'JASON@EMAIL.COM', '935468466', 'ativo', '29/07/2012');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (13, 'ZOD', 'ZOD@EMAIL.COM', '916548138', 'ativo', '01/01/2001');

--
--tabela `emprestimo` -> int, int, int, datetime, datetime.
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (1, 1, 1, '1/1/1', '1/1/1');
--

INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (2, 2, 9, '01/01/2017', '01/03/2017');

--
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (12, 8, 13, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (6, 10, 3, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (13, 7, 4, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (8, 5, 6, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (14, 1, 11, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (3, 4, 10, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (5, 7, 1, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (9, 15, 2, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (15, 1, 15, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (2, 12, 2, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (1, 8, 8, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (11, 11, 9, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (4, 9, 14, '1/1/1', '1/1/1', 1.1);
--INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo, data_devolucao) VALUES (10, 4, 1, '1/1/1', '1/1/1', 1.1);
--


--
--tabela 'multa' -> int, int, datetime, decimal.
--INSERT INTO multa (funcionario_id, emprestimo_id, data_recebimento, valor) VALUES (1, 1, '1/1/1', 1.1);
--


--
--tabela `palavra_chave_livro` -> int, int.
--INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (1, 1);
--



--
--tabela `reserva` -> int, int, datetime, enum.
--INSERT INTO reserva (exemplar_id, usuario_id, data, status) VALUES (1, 1, '1/1/1', 'ativa');
--



--
--tabela `usuario_biblioteca` -> int, int.
--INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (1, 1);
--
