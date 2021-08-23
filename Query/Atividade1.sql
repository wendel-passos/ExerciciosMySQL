
/*EXERCICIOS/*

	/*1- CRIE UMA LISTA COM O NOME DE TODAS AS GAFANHOTAS*/

		select nome, sexo from gafanhotos
		where sexo = 'F'
		order by nome;

	/*2- UMA LISTA COM OS DADOS DE TODOS AQUELES QUE NASCERAM ENTRE 2000-JAN-01 E 2015-DEZ-31*/

		select nome, nascimento from gafanhotos
		where nascimento >= '2000-01-01' and nascimento <= '2015-12-31'
		order by nascimento;

	/*3- UMA LISTA COM O NOME DE TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADORES*/

		select nome, profissao, sexo 
		from gafanhotos
		where profissao = 'programador'
		order by nome;
	
	/*4- Uma lista com os dados de todas as mulheres que nasceram no brasil e que têm seu nome iniciado com 'J'.*/
	
		select nome, nacionalidade from gafanhotos 
		where nome like 'j%' and nacionalidade= 'brasil' and sexo = 'F';


	/*5- Uma lista com o nome e nacionalidade de todos os homens que têm silva no nome, ñ nasceram no brasil e pesam menos de 100kg*/

		select nome, nacionalidade
		from gafanhotos
		where nome like '%silva%' and nacionalidade not like 'brasil' and peso < 100;

	/*6- Qual a maior altura entre os gafanhotos nascidos no Brasil*/ 

		select max(altura)
		from gafanhotos
		where nacionalidade ='brasil' and sexo = 'm';

	/*7- Média de peso dos gafanhotos cadastrados*/

		select avg(peso) 
		from gafanhotos;
	
	/*8- Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do BR entre 1990-01-01 e 2000-12-31*/

		select min(peso)
		from gafanhotos
		where sexo ='f' and nacionalidade not like 'brasil' 
		and nascimento >= '1990-01-01' and  nascimento <= '2000-12-31';

	/*9- Quantas gafanhotos mulheres tem mais de 1.90 de altura*/

		select count(altura)
		from gafanhotos
		where sexo= 'f' and altura >'1.90';

	
