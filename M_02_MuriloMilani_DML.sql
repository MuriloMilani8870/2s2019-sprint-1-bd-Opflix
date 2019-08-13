Use M_OpFlix

Insert Into Categorias (NomeCategoria)
	Values			('Ação')
					,('Aventura')
					,('Comédia')
					,('Ficção Científica')
					,('Guerra')
					,('Policial');

					

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


Insert into Usuarios(NomeUsuario,Email,Senha,CPF,IdPermissao)
	Values
		('Erik' , 'erik@email.com' , '123456',33280306469,2)
		,('Cassiana' , 'Cassiana@email.com' , '123456',85728091555,2) 
		,('Helena' , 'Helena@email.com' , '123456',68453044597,1)
		,('Roberto' , 'Rob@email.com' , '3110',68114610980,1)
