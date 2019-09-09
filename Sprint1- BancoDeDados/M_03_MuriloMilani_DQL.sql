Use M_OpFlix

Select * from Usuarios

Select * from Categorias

Select NomeCategoria from Categorias

Select * from Lancamentos

Select * from Formatos

Select * from Favoritos

Select * From Veiculos

Select * From Transmissao

SELECT COUNT(IdUsuario)
FROM Usuarios;

CREATE PROCEDURE BuscaLinhas
@QuantidadesTuplas VARCHAR(200)
AS 
SELECT COUNT(*)
FROM Lancamentos
WHERE IdCategoria = 1 

EXECUTE BuscaLinhas '1';

DROP PROCEDURE BuscaLinhas;

Select IdCategoria, Titulo from Lancamentos order by IdCategoria asc;

CREATE PROCEDURE BuscaFilme
@QuantidadesTuplas VARCHAR(200)
AS 
SELECT COUNT(*)
FROM Categorias
WHERE NomeCategoria = 'a%' 


EXECUTE BuscaFilme 'C%';
DROP PROCEDURE BuscaFilme;

select DATEDIFF (DAY , GETDATE() , '15/08/2020')

/*
Select IdHabilidade from Lancamentos order by IdHabilidade asc;

Select * from TipoLancamentos

Select Lancamentos.* , TipoLancamentos.*
from Lancamentos
inner join TipoLancamentos
on Lancamentos.IdTipoHabilidade = TipoLancamentos.IdTipoHabilidade

Select Usuarios.* , Categorias.*
from Usuarios
inner join Categorias
on Usuarios.IdClasse = Categorias.IdClasse


Select Usuarios.* , Categorias.*
from Usuarios
full join Categorias
on Usuarios.IdClasse = Categorias.IdClasse


Select  ClasseHabilidade.*  , Categorias.NomeClasse ,Lancamentos.NomeHabilidade
from ClasseHabilidade
inner join Categorias
on ClasseHabilidade.IdClasse = Categorias.IdClasse
inner join Lancamentos
on ClasseHabilidade.IdHabilidade = Lancamentos.IdHabilidade


Select  ClasseHabilidade.*  , Categorias.NomeClasse ,Lancamentos.*
from ClasseHabilidade
inner join Categorias
on ClasseHabilidade.IdClasse = Categorias.IdClasse
inner join Lancamentos
on ClasseHabilidade.IdHabilidade = Lancamentos.IdHabilidade



Select Categorias.* , ClasseHabilidade.* ,Lancamentos.*
from Categorias
full join ClasseHabilidade
on Categorias.IdClasse = ClasseHabilidade.IdClasse
full join Lancamentos
on ClasseHabilidade.IdHabilidade = Lancamentos.IdHabilidade
*/
