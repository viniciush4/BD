--
-- tabela `biblioteca` -> varchar, int, decimal.
-- INSERT INTO biblioteca (nome, emprestimo_dias, multa_diaria) VALUES ('', 1, 1.1);
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
-- tabela `secao` -> varchar.
-- INSERT INTO secao (nome) VALUES ('');
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
-- tabela `autor` -> varchar, varchar.
-- INSERT INTO autor (nome, email) VALUES ('', '');
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
-- tabela `editora` -> varchar, varchar.
-- INSERT INTO editora (nome, email) VALUES ('', '');
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
-- tabela `usuario` -> varchar, varchar, varchar, enum, datetime.
-- INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('', '', '', 'ativo', '1-1-1');
--

INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('LOGAN', 'WOLVERINE@EMAIL.COM', '946541346', 'ativo', '1974-12-01');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('XAVIER', 'CHARLES@EMAIL.COM', '916581328', 'ativo', '1960-09-03');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('VAMPIRA', 'VAMP@EMAIL.COM', '984613169', 'ativo', '1978-01-02');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('TEMPESTADE', 'TEMPESTADE@EMAIL.COM', '934654416', 'ativo', '1981-03-12');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('MAGNETO', 'ERIK@EMAIL.COM', '935454812', 'ativo', '1965-11-15');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('MISTICA', 'RAVEN@EMAIL.COM', '998581231', 'ativo', '1982-07-11');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('CYCLOPE', 'SUMMERS@EMAIL.COM', '913215347', 'ativo', '1985-09-08');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('JEAN GRAY', 'JEAN@EMAIL.COM', '916532445', 'ativo', '1978-08-09');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('FERA', 'PH@EMAIL.COM', '965494916', 'ativo', '1990-05-22');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('COLOSSO', 'PETER@EMAIL.COM', '965461324', 'ativo', '1984-10-27');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('JUGGERNAUT', 'CAIN@EMAIL.COM', '964983232', 'ativo', '1989-04-09');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('FEITICEIRA', 'ESCARLATE@EMAIL.COM', '994916342', 'ativo', '1979-06-05');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('MERCURIO', 'PIETRO@EMAIL.COM', '979321324', 'ativo', '1976-09-03');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('HULK', 'BRUCE@EMAIL.COM', '954651321', 'ativo', '1987-07-02');
INSERT INTO usuario (nome, email, celular, status, data_nascimento) VALUES ('HOMEM DE FERRO', 'TONY@EMAIL.COM', '987946541', 'ativo', '1987-08-17');

--
-- tabela `livro` -> int, varchar, year, varchar.
-- INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (1, '', '', '');
--

INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (9, 'APRENDA A LUTAR DORMINDO', '2005', '9789724144276');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (6, 'POEIRA EM ALTO MAR', '1980', '9992158157123');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (8, 'A BICICLETA DESGOVERNADA', '2001', '9971502100987');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (11, 'CANTE DE BOCA FECHADA', '2014', '9726629054157');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (1, 'COMO PASSAR EM BANCO DE DADOS', '1999', '8535902775875');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (11, 'A MORDIDA FATAL DA MARIA BANGUELA', '1987', '0684843285134');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (14, 'O LIVRO SOBRE TUDO', '2000', '080442957X587');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (7, 'COMPRE SEM TER DINHEIRO', '2007', '0851310419645');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (3, 'COZINHE TUDO EM 3 MINUTOS', '2011', '0943396042458');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'O SEGREDO DA COMPUTACAO', '1992', '097522980X358');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'CONTANDO ATE O INFINITO', '2017', '0925462352134');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (15, 'DIRIJA DE OLHOS FECHADOS', '1996', '094994653X425');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (5, 'SEJA PRESIDENTE POR UM DIA', '1984', '094652336X875');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (13, 'A VERDADEIRA FORCA DAS FORMIGAS', '1971', '8538904563725');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (10, 'A CURA DO CANCER', '2010', '8535942278269');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (7, 'O ESTRANGEIRO', '1942', '2131146446546');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (1, 'EM BUSCA DO TEMPO PERDIDO', '1927', '3498724616321');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (4, 'O PROCESSO', '1925', '5464864233146');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (11, 'A CONDICAO HUMANA', '1933', '1456498891164');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (10, 'VIAGEM AO FIM DA NOITE', '1932', '4887465465413');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (8, 'AS VINHAS DA IRA', '1939', '5897892465413');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (12, 'POR QUEM OS SINOS DOBRAM', '1940', '7456464231346');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (3, 'O BOSQUE DAS ILUSOES PERDIDAS', '1999', '8464211846413');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (15, 'A ESPUMA DOS DIAS', '1981', '9746464564831');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'ESPERANDO GODOT', '1974', '5487976541265');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (8, 'O SER E O NADA', '1958', '9787856465431');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (14, 'O LOTUS AZUL', '1978', '2144987643131');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (12, 'DIARIO DE ANNE FRANK', '1993', '2545640213864');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (4, 'TRISTES TROPICOS', '2002', '7978446546212');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (6, 'ADMIRAVEL MUNDO NOVO', '2007', '7978984654321');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (5, 'MIL NOVECENTOS E OITENTA E QUATRO', '1983', '4979871321231');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (3, 'A CANTORA LIRICA CARECA', '1967', '4788789235456');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (14, 'LOLITA', '2000', '1324564878946');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (10, 'O DESERTO DOS TARTAROS', '1977', '2345646517987');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (11, 'OS MOEDEIROS FALSOS', '1995', '1211564654897');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (7, 'CEM ANOS DE SOLIDAO', '2013', '7978956413213');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (6, 'O SOM E A FURIA', '2010', '3213454879874');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (15, 'ZAZIE NO METRO', '2005', '3265456784662');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (13, 'A MONTANHA MAGICA', '2011', '3464687415646');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (8, 'O CAO DOS BASKERVILLES', '1955', '7878946541321');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (9, 'A BRINCADEIRA', '1946', '8545216468486');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (5, 'O DESPREZO', '1987', '1313031654544');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (1, 'NADJA', '1983', '3467978416545');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'SEIS PERSONAGENS A PROCURA DE UM AMOR', '2016', '1231646748674');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (7, 'A GUERRA DOS MUNDOS', '2003', '9898454875524');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (10, 'CAPITAL DA DOR', '2001', '5456465432135');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (3, 'MARTIN EDEN', '1999', '3546489713214');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (15, 'O GRAU ZERO DA ESCRITA', '1991', '9787313453432');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (8, 'A COSTA DAS SIRTES', '1986', '5465876876123');
INSERT INTO livro (editora_id, titulo, ano, isbn) VALUES (2, 'CRONICAS MARCIANAS', '1982', '1312345348786');

--
-- tabela `palavra_chave` -> varchar.
-- INSERT INTO palavra_chave (palavra) VALUES ('');
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
-- tabela `autor_livro` -> int, int.
-- INSERT INTO autor_livro (autor_id, livro_id) VALUES (1, 1);
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
INSERT INTO autor_livro (autor_id, livro_id) VALUES (2, 16);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (13, 17);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (5, 18);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (1, 19);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (5, 20);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (7, 21);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (12, 22);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (15, 23);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (8, 24);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (4, 25);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (14, 26);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (2, 27);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (6, 28);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (10, 29);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (8, 30);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (11, 31);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (14, 32);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (1, 33);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (5, 34);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (7, 35);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (6, 36);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (13, 37);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (9, 38);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (15, 39);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (1, 40);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (12, 41);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (3, 42);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (6, 43);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (10, 44);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (15, 45);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (2, 46);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (4, 47);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (7, 48);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (3, 49);
INSERT INTO autor_livro (autor_id, livro_id) VALUES (12, 50);


--
-- tabela `departamento` -> int, varchar.
-- INSERT INTO departamento (biblioteca_id, nome) VALUES (1, '');
--

INSERT INTO departamento (biblioteca_id, nome) VALUES (9, 'DEPARTAMENTO DE DOACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (2, 'DEPARTAMENTO DE DOACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (6, 'DEPARTAMENTO DE DOACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (7, 'DEPARTAMENTO DE ATENDIMENTO GERAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (11, 'DEPARTAMENTO DE ATENDIMENTO GERAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO DE ATENDIMENTO GERAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (2, 'DEPARTAMENTO DE LIMPEZA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO DE LIMPEZA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (5, 'DEPARTAMENTO DE LIMPEZA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (8, 'DEPARTAMENTO DE ORGANIZACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (15, 'DEPARTAMENTO DE ORGANIZACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (10, 'DEPARTAMENTO DE ORGANIZACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO DE INFORMATICA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (6, 'DEPARTAMENTO DE INFORMATICA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (13, 'DEPARTAMENTO DE INFORMATICA');
INSERT INTO departamento (biblioteca_id, nome) VALUES (2, 'DEPARTAMENTO DE RECURSOS HUMANOS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (11, 'DEPARTAMENTO DE RECURSOS HUMANOS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (9, 'DEPARTAMENTO DE RECURSOS HUMANOS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (8, 'DEPARTAMENTO DE CONTABILIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (4, 'DEPARTAMENTO DE CONTABILIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (15, 'DEPARTAMENTO DE CONTABILIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (5, 'DEPARTAMENTO DE COMPRAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (9, 'DEPARTAMENTO DE COMPRAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (10, 'DEPARTAMENTO DE COMPRAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (3, 'DEPARTAMENTO OPERACIONAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (15, 'DEPARTAMENTO OPERACIONAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (2, 'DEPARTAMENTO OPERACIONAL');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO JURIDICO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (6, 'DEPARTAMENTO JURIDICO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (13, 'DEPARTAMENTO JURIDICO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (2, 'DEPARTAMENTO DE VENDAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (7, 'DEPARTAMENTO DE VENDAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (12, 'DEPARTAMENTO DE VENDAS');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO DE COMUNICACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (8, 'DEPARTAMENTO DE COMUNICACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (14, 'DEPARTAMENTO DE COMUNICACAO');
INSERT INTO departamento (biblioteca_id, nome) VALUES (3, 'DEPARTAMENTO DE CONTROLE DE QUALIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (6, 'DEPARTAMENTO DE CONTROLE DE QUALIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (15, 'DEPARTAMENTO DE CONTROLE DE QUALIDADE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (1, 'DEPARTAMENTO MARKETING');
INSERT INTO departamento (biblioteca_id, nome) VALUES (3, 'DEPARTAMENTO MARKETING');
INSERT INTO departamento (biblioteca_id, nome) VALUES (12, 'DEPARTAMENTO MARKETING');
INSERT INTO departamento (biblioteca_id, nome) VALUES (7, 'DEPARTAMENTO DE CONTROLE DE ESTOQUE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (10, 'DEPARTAMENTO DE CONTROLE DE ESTOQUE');
INSERT INTO departamento (biblioteca_id, nome) VALUES (9, 'DEPARTAMENTO DE CONTROLE DE ESTOQUE');

--
-- tabela `secao_biblioteca` -> int, int.
-- INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (1, 1);
--

INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (1, 12);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (1, 1);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (1, 14);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (2, 5);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (2, 1);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (2, 9);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (3, 7);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (3, 6);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (3, 10);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (4, 15);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (4, 4);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (4, 13);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (5, 2);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (5, 11);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (5, 8);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (6, 8);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (6, 8);
INSERT INTO secao_biblioteca (secao_id, biblioteca_id) VALUES (6, 8);

--
-- tabela `exemplar` -> int, int, datetime, enum.
-- INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (1, 1, '1-1-1', 'devolvido');
--

INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (11, 9, '2017-03-13', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (15, 10, '2016-01-02', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (9, 8, '2000-12-21', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (5, 13, '2005-09-19', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (12, 2, '2012-05-05', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (3, 7, '2014-07-09', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (13, 4, '2015-10-11', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (8, 6, '2006-11-17', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (14, 6, '2013-04-01', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (2, 3, '2016-12-03', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (7, 14, '2014-09-29', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (10, 1, '2017-03-25', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (4, 7, '2016-01-18', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (1, 12, '2015-10-10', 'devolvido');
INSERT INTO exemplar (livro_id, secao_biblioteca_id, data_cadastro, status) VALUES (6, 11, '2016-11-07', 'devolvido');

--
-- tabela `funcionario` -> int, varchar, varchar, varchar, enum, datetime.
-- INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (1, '', '', '', 'ativo', '1-1-1');
--

INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (8, 'CLARK KENT', 'CLARK@EMAIL.COM', '964689646', 'ativo', '2001-02-11');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (12, 'CHLOE SULLIVAN', 'CHLOE@EMAIL.COM', '915648899', 'ativo', '2012-05-02');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (3, 'LEX LUTHOR', 'LEX@EMAIL.COM', '922224548', 'ativo', '2013-12-05');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (6, 'LANA LANG', 'LANA@EMAIL.COM', '982646659', 'ativo', '1999-03-09');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (14, 'LOIS LANE', 'LOIS@EMAIL.COM', '945782662', 'ativo', '2016-08-22');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (2, 'LIONEL LUTHOR', 'LIONEL@EMAIL.COM', '934916546', 'ativo', '2005-11-29');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (15, 'OLIVER QUEEN', 'OLIVER@EMAIL.COM', '997984165', 'ativo', '2002-07-30');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (7, 'MARTHA KENT', 'MARTHA@EMAIL.COM', '934981381', 'ativo', '2013-10-07');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (5, 'JONATHAN KENT', 'JONATHAN@EMAIL.COM', '979146516', 'ativo', '1995-02-13');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (9, 'PETE ROSS', 'PETE@EMAIL.COM', '924168475', 'ativo', '2004-11-19');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (1, 'TESS MERCER', 'TESS@EMAIL.COM', '954521878', 'ativo', '2009-05-09');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (9, 'HENRY JIMMY OLSEN', 'HENRY@EMAIL.COM', '995846566', 'ativo', '2015-12-25');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (10, 'WHITNEY FORDMAN', 'WHITNEY@EMAIL.COM', '978465464', 'ativo', '2000-06-26');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (12, 'JASON TEAGUE', 'JASON@EMAIL.COM', '935468466', 'ativo', '2012-07-29');
INSERT INTO funcionario (departamento_id, nome, email, celular, status, data_contratacao) VALUES (13, 'ZOD', 'ZOD@EMAIL.COM', '916548138', 'ativo', '2001-01-01');

--
-- tabela `emprestimo` -> int, int, int, datetime, datetime.
-- INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo) VALUES (1, 1, 1, '1-1-1');
--

INSERT INTO emprestimo (exemplar_id, funcionario_id, usuario_id, data_emprestimo) VALUES (2, 2, 9, '2017-01-01');

--
-- tabela 'multa' -> int, int, datetime, decimal.
-- INSERT INTO multa (funcionario_id, emprestimo_id, data_recebimento, valor) VALUES (1, 1, '1-1-1', 1.1);
--

INSERT INTO multa (funcionario_id, emprestimo_id, data_recebimento, valor) VALUES (1, 1, '2017-01-01', 1.10);

--
-- tabela `palavra_chave_livro` -> int, int.
-- INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (1, 1);
--

INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (1, 1);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (2, 2);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (3, 7);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (4, 12);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (5, 10);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (6, 8);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (7, 3);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (8, 4);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (9, 15);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (10, 9);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (11, 12);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (12, 1);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (13, 5);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (14, 5);
INSERT INTO palavra_chave_livro (palavra_chave_id, livro_id) VALUES (15, 9);

--
-- tabela `reserva` -> int, int, datetime, enum.
-- INSERT INTO reserva (exemplar_id, usuario_id, data, status) VALUES (1, 1, '1-1-1', 'ativa');
--

INSERT INTO reserva (exemplar_id, usuario_id, data, status) VALUES (1, 1, '2017-01-07', 'ativa');

--
-- tabela `usuario_biblioteca` -> int, int.
-- INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (1, 1);
--

INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (5, 1);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (8, 1);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (1, 1);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (5, 2);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (14, 2);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (1, 2);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (13, 3);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (6, 3);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (12, 3);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (2, 4);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (7, 4);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (9, 4);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (7, 5);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (15, 5);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (3, 5);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (4, 6);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (7, 6);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (10, 6);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (3, 7);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (2, 7);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (8, 7);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (12, 8);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (14, 8);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (4, 8);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (5, 9);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (1, 9);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (2, 9);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (15, 10);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (10, 10);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (2, 10);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (7, 11);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (4, 11);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (13, 11);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (14, 12);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (5, 12);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (7, 12);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (15, 13);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (1, 13);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (10, 13);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (9, 14);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (6, 14);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (11, 14);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (14, 15);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (4, 15);
INSERT INTO usuario_biblioteca (biblioteca_id, usuario_id) VALUES (2, 15);


