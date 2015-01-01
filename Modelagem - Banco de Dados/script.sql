#Gênero
INSERT INTO genero (genero) VALUES ("Ação");
INSERT INTO genero (genero) VALUES ("Animação");
INSERT INTO genero (genero) VALUES ("Aventura");
INSERT INTO genero (genero) VALUES ("Comédia");
INSERT INTO genero (genero) VALUES ("Comédia Romântica");
INSERT INTO genero (genero) VALUES ("Drama");
INSERT INTO genero (genero) VALUES ("Fantasia");
INSERT INTO genero (genero) VALUES ("Ficção Científica");
INSERT INTO genero (genero) VALUES ("Guerra");
INSERT INTO genero (genero) VALUES ("Musical");
INSERT INTO genero (genero) VALUES ("Terror");
INSERT INTO genero (genero) VALUES ("Suspense");

#Preço
INSERT INTO preco (idpreco, preco, descricao) VALUES (5, 5, "meia-normal");
INSERT INTO preco (idpreco, preco, descricao) VALUES (10, 10, "normal");
INSERT INTO preco (idpreco, preco, descricao) VALUES (15, 15, "meia-3D");
INSERT INTO preco (idpreco, preco, descricao) VALUES (30, 30, "3D");

#Estado
INSERT INTO estado (estado) VALUES ("Acre");
INSERT INTO estado (estado) VALUES ("Alagoas");
INSERT INTO estado (estado) VALUES ("Amapá");
INSERT INTO estado (estado) VALUES ("Amazonas");
INSERT INTO estado (estado) VALUES ("Bahia");
INSERT INTO estado (estado) VALUES ("Ceará");
INSERT INTO estado (estado) VALUES ("Distrito Federal");
INSERT INTO estado (estado) VALUES ("Espírito Santo");
INSERT INTO estado (estado) VALUES ("Goiás");
INSERT INTO estado (estado) VALUES ("Maranhão");
INSERT INTO estado (estado) VALUES ("Mato Grosso");
INSERT INTO estado (estado) VALUES ("Mato Grosso do Sul");
INSERT INTO estado (estado) VALUES ("Minas Gerais");
INSERT INTO estado (estado) VALUES ("Pará");
INSERT INTO estado (estado) VALUES ("Paraíba");
INSERT INTO estado (estado) VALUES ("Paraná");
INSERT INTO estado (estado) VALUES ("Pernambuco");
INSERT INTO estado (estado) VALUES ("Piauí");
INSERT INTO estado (estado) VALUES ("Rio de Janeiro");
INSERT INTO estado (estado) VALUES ("Rio Grande do Norte");
INSERT INTO estado (estado) VALUES ("Rio Grande do Sul");
INSERT INTO estado (estado) VALUES ("Rondônia");
INSERT INTO estado (estado) VALUES ("Roraima");
INSERT INTO estado (estado) VALUES ("Santa Catarina");
INSERT INTO estado (estado) VALUES ("São Paulo");
INSERT INTO estado (estado) VALUES ("Sergipe");
INSERT INTO estado (estado) VALUES ("Tocantins");

#Cidades
#Maranhão
INSERT INTO cidade (fk_idestado, cidade) VALUES (10, "São Luís");
INSERT INTO cidade (fk_idestado, cidade) VALUES (10, "Zé Doca");
INSERT INTO cidade (fk_idestado, cidade) VALUES (10, "Bacabal");
INSERT INTO cidade (fk_idestado, cidade) VALUES (10, "Imperatriz");
#São Paulo
INSERT INTO cidade (fk_idestado, cidade) VALUES (25, "São Paulo");
INSERT INTO cidade (fk_idestado, cidade) VALUES (25, "Alto Alegre");
INSERT INTO cidade (fk_idestado, cidade) VALUES (25, "Adamantina");
INSERT INTO cidade (fk_idestado, cidade) VALUES (25, "Araçatuba");
#Acre
INSERT INTO cidade (fk_idestado, cidade) VALUES (1, "Rio Branco");
INSERT INTO cidade (fk_idestado, cidade) VALUES (1, "Xapuri");
INSERT INTO cidade (fk_idestado, cidade) VALUES (1, "Porto Walter");
INSERT INTO cidade (fk_idestado, cidade) VALUES (1, "Cruzeiro do Sul");

#Filmes
INSERT INTO filme (fk_idgenero, filme, cartaz) VALUES (1, "Duro de Matar", true);
INSERT INTO filme (fk_idgenero, filme, cartaz) VALUES (8, "Interstellar", true);
INSERT INTO filme (fk_idgenero, filme, cartaz) VALUES (8, "The Matrix", true);

#Filial
INSERT INTO filial (idfilial, fk_idestado) VALUES (125, 10);
INSERT INTO filial (idfilial, fk_idestado) VALUES (788, 25);
INSERT INTO filial (idfilial, fk_idestado) VALUES (345, 1);

#Sala
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (1, 125);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (2, 125);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (3, 125);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (4, 125);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (5, 788);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (6, 788);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (7, 788);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (8, 788);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (9, 345);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (10, 345);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (11, 345);
INSERT INTO sala (fk_idcidade, fk_idfilial) VALUES (12, 345);

#Mês
INSERT INTO mes (idmes, mes) VALUES (0, "Janeiro");
INSERT INTO mes (idmes, mes) VALUES (1, "Fevereiro");
INSERT INTO mes (idmes, mes) VALUES (2, "Março");
INSERT INTO mes (idmes, mes) VALUES (3, "Abril");
INSERT INTO mes (idmes, mes) VALUES (4, "Maio");
INSERT INTO mes (idmes, mes) VALUES (5, "Junho");
INSERT INTO mes (idmes, mes) VALUES (6, "Julho");
INSERT INTO mes (idmes, mes) VALUES (7, "Agosto");
INSERT INTO mes (idmes, mes) VALUES (8, "Setembro");
INSERT INTO mes (idmes, mes) VALUES (9, "Outubro");
INSERT INTO mes (idmes, mes) VALUES (10, "Novembro");
INSERT INTO mes (idmes, mes) VALUES (11, "Dezembro");

#Bilheteria
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (1, 1, 5, 0);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (2, 2, 5, 0);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (3, 3, 15, 2);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (4, 1, 5, 7);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (5, 1, 5, 7);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (6, 3, 5, 7);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (7, 2, 5, 0);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (8, 1, 30, 2);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (9, 3, 30, 2);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (10, 1, 30, 2);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (11, 1, 30, 2);
INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, fk_idmes) VALUES (12, 2, 30, 2);