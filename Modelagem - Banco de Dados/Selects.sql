select * from bilheteria;

select idbilheteria, fk_idsala, filme, preco, data FROM bilheteria, filme, preco WHERE idpreco = fk_idpreco AND idfilme = fk_idfilme AND MONTH(data) = 1 AND YEAR(data) = 2015;