Use M_OpFlix

Insert Into Categorias (NomeCategoria)
	Values			('A��o')
					,('Aventura')
					,('Com�dia')
					,('Fic��o Cient�fica')
					,('Guerra')
					,('Policial');

					

Insert Into Permissoes(NomePermissao)
	Values		('Cliente')
				,('Administrador')

				


Insert into Formatos(NomeFormato)
	Values	('Filme')
			,('S�rie')

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values ('Rei le�o','2','1','Mufasa (voz de James Earl Jones), o Rei Le�o, e a rainha Sarabi (voz de Madge Sinclair) apresentam ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O rec�m-nascido recebe a b�n��o do s�bio babu�no Rafiki (voz de Robert Guillaume), mas ao crescer � envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiav�lico irm�o de Mufasa, que planeja livrar-se do sobrinho e herdar o trono' ,'89', '08-07-1994')
		
Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values		
		('VINGADORES: ULTIMATO',1,1,'Ap�s Thanos eliminar metade das criaturas vivas, os Vingadores precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espa�o sem �gua nem comida, Steve Rogers (Chris Evans) e Natasha Romanov (Scarlett Johansson) precisam liderar a resist�ncia contra o tit� louco.' ,181, '25-04-2019')
		,('VINGADORES: GUERRA INFINITA' , 1, 1, 'Thanos (Josh Brolin) enfim chega � Terra, disposto a reunir as Joias do Infinito. Para enfrent�-lo, os Vingadores precisam unir for�as com os Guardi�es da Gal�xia, ao mesmo tempo em que lidam com desaven�as entre alguns de seus integrantes.' ,156 , '26/04/2018')
		,('JOHN WICK: UM NOVO DIA PARA MATAR' , 6,1, 'Ap�s recuperar seu carro, John Wick (Keanu Reeves) acredita que enfim poder� se aposentar. Entretanto, a reapari��o de Santino D''Antonio (Riccardo Scarmacio) atrapalha seus planos. Dono de uma promiss�ria em nome de Wick, por ele usada para deixar o posto de assassino profissional da Alta C�pula, Santino cobra a d�vida existente e insiste para que ele mate sua pr�pria irm�, Gianna (Claudia Gerini)',122, '10-02-2017')
		,('Rick and Morty' , 3, 1, 'Uma s�rie animada que acompanha as aventuras e os descobrimentos de um super cientista e seu neto n�o muito brilhante.', 22, '02-12-2013')
		,('M�quina Mort�fera',6,1,'O cinquenten�rio Sargento Murtaugh (Damon Wayans, Sr.), da divis�o de homic�dios da pol�cia de Los Angeles, recebe um novo parceiro, o sargento Riggs (Clayne Crawford), da divis�o de narc�ticos da pol�cia do Texas, que come�ou a vida nas For�as Especiais do ex�rcito americano. Riggs � um jovem inconsequente, vol�til e ligeiramente suicida que se mudou para Los Angeles para recome�ar a vida depois da morte de sua mulher e filho num acidente de carro, e n�o vai fazer bem ao cora��o fr�gil do quase aposentado Murtaugh.', 42, '21-09-2016')
		,('How I Met Your Mother' ,3, 1 , 'Em 2030, o arquiteto Ted Mosby (Josh Radnor) conta a hist�ria sobre como conheceu a m�e dos seus filhos. Ele volta no tempo para 2005, relembrando suas aventuras amorosas em Nova York e a busca pela mulher dos seus sonhos. Ao longo do anos, Ted aproveita para falar a jornada dos seus amigos: o advogado Marshall Eriksen (Jason Segel), a professora Lily Aldrin (Alyson Hannigan), a jornalista Robin Scherbatsky (Cobie Smulders) e o mulherengo convicto Barney Stinson (Neil Patrick Harris).' ,22,'19-09-2005' )


Insert into Usuarios(NomeUsuario,Email,Senha,CPF,IdPermissao)
	Values
		('Erik' , 'erik@email.com' , '123456',33280306469,2)
		,('Cassiana' , 'Cassiana@email.com' , '123456',85728091555,2) 
		,('Helena' , 'Helena@email.com' , '123456',68453044597,1)
		,('Roberto' , 'Rob@email.com' , '3110',68114610980,1)
