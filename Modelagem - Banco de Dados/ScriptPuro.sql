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

#Filmes
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (1, "Duro de Matar", "Filme de ação num prédio",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (8, "Interstellar", "Filme de ficção cient´ífica do Nolan",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (8, "The Matrix", "Ficção científica verde",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (3, "A Viagem", "Várias histórias pimposas",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (4, "21 Jump Street", "HFS",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (4, "22 Jump Street", "WHYPHY",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (9, "O Resgate do Soldado Ryan", "Missão para resgatar Ryan",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (9, "The Red Thin Line", "Atrás das linhas do Inimigo",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (4, "Trovão tropical", "Trovão Tropical",true);
INSERT INTO filme (fk_idgenero, filme, sinopse, cartaz) VALUES (1, "Bastardos Inglórios", "Tarantino na Alemanha",true);

#Filial
INSERT INTO filial (estado, descricao) VALUES ("Maranhão", "Filial no Maranhão");
INSERT INTO filial (estado, descricao) VALUES ("São Paulo", "Filial em São Paulo");
INSERT INTO filial (estado, descricao) VALUES ("Sergipe", "Filial em Sergipe");

#Sala
INSERT INTO sala (fk_idfilial, cidade) VALUES (1, "São Luís");
INSERT INTO sala (fk_idfilial, cidade) VALUES (1, "Imperatriz");
INSERT INTO sala (fk_idfilial, cidade) VALUES (1, "Zé Doca");
INSERT INTO sala (fk_idfilial, cidade) VALUES (1, "São Domingos");
INSERT INTO sala (fk_idfilial, cidade) VALUES (2, "São Paulo");
INSERT INTO sala (fk_idfilial, cidade) VALUES (2, "Ribeirão Preto");
INSERT INTO sala (fk_idfilial, cidade) VALUES (2, "Santos");
INSERT INTO sala (fk_idfilial, cidade) VALUES (2, "Prateleira");
INSERT INTO sala (fk_idfilial, cidade) VALUES (3, "Sergipana");
INSERT INTO sala (fk_idfilial, cidade) VALUES (3, "Casados");
INSERT INTO sala (fk_idfilial, cidade) VALUES (3, "Piepebas");
INSERT INTO sala (fk_idfilial, cidade) VALUES (3, "Afonso Lopes");

#Bilheteria
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (1, 1, 5, NOW());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (2, 2, 5, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (3, 3, 15, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (4, 1, 5, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (5, 1, 5, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (6, 3, 5, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (7, 2, 5, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (8, 1, 30, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (9, 3, 30, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (10, 1, 30, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (11, 1, 30, now());
#INSERT INTO bilheteria (fk_idsala, fk_idfilme, fk_idpreco, data) VALUES (12, 2, 30, now());

SELECT cidade, idsala FROM sala WHERE fk_idfilial = 1;

select * from bilheteria;

select fk_idfilme, fk_idpreco from bilheteria;

SELECT filme, SUM(preco) FROM bilheteria, preco, filme WHERE fk_idpreco = idpreco AND fk_idfilme = idfilme GROUP BY filme ORDER BY sum(preco) DESC LIMIT 10;