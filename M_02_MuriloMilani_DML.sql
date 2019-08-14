Use M_OpFlix

Insert Into Categorias (NomeCategoria)

Use M_OpFlix

	Values			('Ação')
					,('Aventura')
					,('Comédia')
					,('Ficção Científica')
					,('Guerra')
					,('Policial');

Insert into Categorias (NomeCategoria)
	Values	('Terror')
			,('Documentário')
			,('Drama')
					

Insert Into Permissoes(NomePermissao)
	Values		('Cliente')
				,('Administrador')

				


Insert into Formatos(NomeFormato)
	Values	('Filme')
			,('Série')

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values ('Rei leão','2','1','Mufasa (voz de James Earl Jones), o Rei Leão, e a rainha Sarabi (voz de Madge Sinclair) apresentam ao reino o herdeiro do trono, Simba (voz de Matthew Broderick). O recém-nascido recebe a bênção do sábio babuíno Rafiki (voz de Robert Guillaume), mas ao crescer é envolvido nas artimanhas de seu tio Scar (voz de Jeremy Irons), o invejoso e maquiavélico irmão de Mufasa, que planeja livrar-se do sobrinho e herdar o trono' ,'89', '08-07-1994')
		
Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values		
		('VINGADORES: ULTIMATO',1,1,'Após Thanos eliminar metade das criaturas vivas, os Vingadores precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, Steve Rogers (Chris Evans) e Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.' ,181, '25-04-2019')
		,('VINGADORES: GUERRA INFINITA' , 1, 1, 'Thanos (Josh Brolin) enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.' ,156 , '26/04/2018')
		,('JOHN WICK: UM NOVO DIA PARA MATAR' , 6,1, 'Após recuperar seu carro, John Wick (Keanu Reeves) acredita que enfim poderá se aposentar. Entretanto, a reaparição de Santino D''Antonio (Riccardo Scarmacio) atrapalha seus planos. Dono de uma promissória em nome de Wick, por ele usada para deixar o posto de assassino profissional da Alta Cúpula, Santino cobra a dívida existente e insiste para que ele mate sua própria irmã, Gianna (Claudia Gerini)',122, '10-02-2017')
		,('Rick and Morty' , 3, 1, 'Uma série animada que acompanha as aventuras e os descobrimentos de um super cientista e seu neto não muito brilhante.', 22, '02-12-2013')
		,('Máquina Mortífera',6,1,'O cinquentenário Sargento Murtaugh (Damon Wayans, Sr.), da divisão de homicídios da polícia de Los Angeles, recebe um novo parceiro, o sargento Riggs (Clayne Crawford), da divisão de narcóticos da polícia do Texas, que começou a vida nas Forças Especiais do exército americano. Riggs é um jovem inconsequente, volátil e ligeiramente suicida que se mudou para Los Angeles para recomeçar a vida depois da morte de sua mulher e filho num acidente de carro, e não vai fazer bem ao coração frágil do quase aposentado Murtaugh.', 42, '21-09-2016')
		,('How I Met Your Mother' ,3, 1 , 'Em 2030, o arquiteto Ted Mosby (Josh Radnor) conta a história sobre como conheceu a mãe dos seus filhos. Ele volta no tempo para 2005, relembrando suas aventuras amorosas em Nova York e a busca pela mulher dos seus sonhos. Ao longo do anos, Ted aproveita para falar a jornada dos seus amigos: o advogado Marshall Eriksen (Jason Segel), a professora Lily Aldrin (Alyson Hannigan), a jornalista Robin Scherbatsky (Cobie Smulders) e o mulherengo convicto Barney Stinson (Neil Patrick Harris).' ,22,'19-09-2005' )

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values		('My Hero Academia Dois Heróis' , 1,1, 'Anime Night apresenta: Deku e All Might recebem um convite para a I-Expo, a principal exposição mundial de habilidades de Quirk e inovações tecnológicas dos heróis! Em meio à empolgação, patrocinadores e profissionais de todos os cantos, Deku conhece Melissa, uma garota que é Quirkless assim como ele já foi . De repente, o sistema de segurança mais avançado da I-Expo é hackeada por vilões, e um plano sinistro é iniciado. É uma séria ameaça à sociedade dos heróis, e um homem detém a chave para tudo isso - o símbolo da paz, All Might' ,96, '05-07-2018')


	Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
	Values ('Homem-Aranha Longe de Casa' , 1,1, 'Peter Parker (Tom Holland) está em uma viagem de duas semanas pela Europa, ao lado de seus amigos de colégio, quando é surpreendido pela visita de Nick Fury (Samuel L. Jackson). Convocado para mais uma missão heróica, ele precisa enfrentar vários vilões que surgem em cidades-símbolo do continente, como Londres, Paris e Veneza, e também a aparição do enigmático Mysterio (Jake Gyllenhaal). ',130, '04-07-2019')
			,('Annabelle 3 De Volta Para Casa',9,1, 'Quando Ed (Patrick Wilson) e Lorraine Warren (Vera Farmiga) deixam sua casa durante um fim de semana para investigar mais um caso paranormal, a filha do casal, a pequena Judy Warren (McKenna Grace), é deixada aos cuidados de sua babá (Madison Iseman). Mas as duas entram em perigo quando uma amiga delas invade a Sala dos Artefatos dos Warren e abre a cristaleira onde a maligna boneca Annabelle estava contida devolvendo à boneca o poder de animar os letais e aterrorizantes objetos contidos na Sala.' , 106, '26-06-2019')


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
Values ('Deuses Americanos', 11, 2, 'A série é focada em Shadow Moon, um homem que cumpre três anos de prisão. Faltando poucos dias até o fim de sua sentença, Shadow acaba sendo liberado inesperadamente depois que sua amada esposa, Laura, é morta. Posteriormente, Shadow encontra-se ao lado de um homem chamado Wednesday, que lhe oferece um emprego. Em primeira instância, Wednesday parece ser nada mais que um trapaceiro que precisa de Shadow como guarda-costas. Wednesday está trilhando seu caminho pelos EUA, reunindo todos os velhos deuses, que agora se incorporaram na vida americana, para enfrentar os novos deuses, incluindo os relacionados à mídia e tecnologia, que estão se fortalecendo.' ,55,'30-04-2017' )

Insert into Lancamentos(Titulo, IdCategoria , IdFormato, Sinopse, Duracao, DataLancamento)
Values ('LA CASA DE PAPEL 3 Temp', 1, 2, 'Após conseguirem roubar mais de 1 bilhão de euros, os envolvidos no assalto passam a ser procurados pelo país. Enquanto isso, o Professor está escondido em Palawan, nas Filipinas, onde vive recluso e despreocupado, como se nada tivesse acontecido.',47 ,'19-07-2019')

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
Set Titulo = 'La Casa De Papel - 3º Temporada'
Where IdLancamento = 14
			
Update Lancamentos
Set DataLancamento = '08/07/1994'
Where IdLancamento = 3


 Insert into Imagens
	Values	