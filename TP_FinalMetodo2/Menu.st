
|aerolinea vuelo piloto|
"Creacion de las clases necesarias"
aerolinea:= Aerolinea crearAerolinea: 'Ezeiza' monto: 10000.
vuelo:= Vuelo crearVuelo: 1 origen: 'Argentina, Buenos Aires' destino: 'España, Madrid' tipoVuelo: 		 'Comercial' fecha: '22/08/22' realizado: false piloto: 1.
piloto:= Piloto crearPilotoNom: 'Pedro' ape: 'Lopez' edad: 35 dni: 40234121 sueldo: 70000 licencia: 	   'avilitado'


"Variables auxiliares"
|opcion opcionMenu|
opcion:='si'.

"Inicio del Menu:"
"	[opcion== 'si']whileTrue[


	"Opciones del menu"
	opcionMenu:=(Prompter prompt: 'Elija una opcion para continuar' ) as number.
	(opcionMenu == 1)ifTrue: []
	(opcionMenu == 2)ifTrue: []
	(opcionMenu == 3)ifTrue: []
	(opcionMenu == 4)ifTrue: []
	(opcionMenu == 5)ifTrue: []
	(opcionMenu == 6)ifTrue: []
	(opcionMenu == 7)ifTrue: []




]"