Use M_OpFlix

Insert Into Categorias (NomeCategoria)

Use M_OpFlix

	Values			('A��o')
					,('Aventura')
					,('Com�dia')
					,('Fic��o Cient�fica')
					,('Guerra')
					,('Policial');

Insert into Categorias (NomeCategoria)
	Values	('Terror')
			,('Document�rio')
			,('Drama')
					

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

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values		('My Hero Academia Dois Her�is' , 1,1, 'Anime Night apresenta: Deku e All Might recebem um convite para a I-Expo, a principal exposi��o mundial de habilidades de Quirk e inova��es tecnol�gicas dos her�is! Em meio � empolga��o, patrocinadores e profissionais de todos os cantos, Deku conhece Melissa, uma garota que � Quirkless assim como ele j� foi . De repente, o sistema de seguran�a mais avan�ado da I-Expo � hackeada por vil�es, e um plano sinistro � iniciado. � uma s�ria amea�a � sociedade dos her�is, e um homem det�m a chave para tudo isso - o s�mbolo da paz, All Might' ,96, '05-07-2018')


	Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values ('Homem-Aranha Longe de Casa' , 1,1, 'Peter Parker (Tom Holland) est� em uma viagem de duas semanas pela Europa, ao lado de seus amigos de col�gio, quando � surpreendido pela visita de Nick Fury (Samuel L. Jackson). Convocado para mais uma miss�o her�ica, ele precisa enfrentar v�rios vil�es que surgem em cidades-s�mbolo do continente, como Londres, Paris e Veneza, e tamb�m a apari��o do enigm�tico Mysterio (Jake Gyllenhaal). ',130, '04-07-2019')
			,('Annabelle 3 De Volta Para Casa',9,1, 'Quando Ed (Patrick Wilson) e Lorraine Warren (Vera Farmiga) deixam sua casa durante um fim de semana para investigar mais um caso paranormal, a filha do casal, a pequena Judy Warren (McKenna Grace), � deixada aos cuidados de sua bab� (Madison Iseman). Mas as duas entram em perigo quando uma amiga delas invade a Sala dos Artefatos dos Warren e abre a cristaleira onde a maligna boneca Annabelle estava contida devolvendo � boneca o poder de animar os letais e aterrorizantes objetos contidos na Sala.' , 106, '26-06-2019')


Insert into Usuarios(NomeUsuario,Email,Senha,CPF,IdPermissao)
	Values
		('Erik' , 'erik@email.com' , '123456',33280306469,2)
		,('Cassiana' , 'Cassiana@email.com' , '123456',85728091555,2) 
		,('Helena' , 'Helena@email.com' , '123456',68453044597,1)
		,('Roberto' , 'Rob@email.com' , '3110',68114610980,1)


Insert into Favoritos (IdUsuario,IdLancamento)
	Values	(2,7)
			,(2,9)
			,(3,5)
			,(3,4);

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
Values ('Deuses Americanos', 11, 2, 'A s�rie � focada em Shadow Moon, um homem que cumpre tr�s anos de pris�o. Faltando poucos dias at� o fim de sua senten�a, Shadow acaba sendo liberado inesperadamente depois que sua amada esposa, Laura, � morta. Posteriormente, Shadow encontra-se ao lado de um homem chamado Wednesday, que lhe oferece um emprego. Em primeira inst�ncia, Wednesday parece ser nada mais que um trapaceiro que precisa de Shadow como guarda-costas. Wednesday est� trilhando seu caminho pelos EUA, reunindo todos os velhos deuses, que agora se incorporaram na vida americana, para enfrentar os novos deuses, incluindo os relacionados � m�dia e tecnologia, que est�o se fortalecendo.' ,55,'30-04-2017' )

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
Values ('LA CASA DE PAPEL 3 Temp', 1, 2, 'Ap�s conseguirem roubar mais de 1 bilh�o de euros, os envolvidos no assalto passam a ser procurados pelo pa�s. Enquanto isso, o Professor est� escondido em Palawan, nas Filipinas, onde vive recluso e despreocupado, como se nada tivesse acontecido.',47 ,'19-07-2019')

Insert into Veiculos(NomeVeiculo)
	Values	('Cinema')
			,('Netflix')
			,('Amazon')
			,('VHS')


Insert into Transmissao(IdLancamento, IdVeiculo)
	Values	(3,1)
			,(3,4)

Delete From Lancamentos
Where IdLancamento = 13

Delete From Lancamentos
Where IdLancamento = 1

Delete From Lancamentos
Where IdLancamento = 2


Update Usuarios
Set IdPermissao = 2
Where IdUsuario = 4

Update Lancamentos
Set Titulo = 'La Casa De Papel - 3� Temporada'
Where IdLancamento = 14
			
Update Lancamentos
Set DataLancamento = '08/07/1994'
Where IdLancamento = 3


 Insert into Imagens
	Values	