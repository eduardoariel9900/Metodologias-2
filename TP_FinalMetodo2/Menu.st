"Variables auxiliares"
|aerolinea   piloto opcion opcionMenu|

"Creacion de las clases necesarias"
aerolinea:= Aerolinea crearAerolinea: 'Ezeiza' monto: 0.

piloto:= Piloto crearPilotoNom: 'Pedro' ape: 'Lopez' edad: 35 dni: 40234121 sueldo: 70000 licencia: 	   'avilitado'.

opcion:='si'.

aerolinea cargarAerolineaPredeterminada.
aerolinea cargarVueloPredeterminado.
aerolinea buscarVueloPorFecha.
aerolinea listarVuelos.
aerolinea listarVuelosSelect.


"Inicio del Menu:"
	"[opcion= 'si']whileTrue[
	aerolinea menuAerolinea.

	""Opciones del menu""
	opcionMenu:=(Prompter prompt: 'Elija una opcion para continuar' ) as number.
	(opcionMenu = 1)ifTrue: [aerolinea cargarVueloPredeterminado].
	(opcionMenu = 2)ifTrue: [aerolinea listarVuelos].
	(opcionMenu = 3)ifTrue: [aerolinea listarVuelosSelect].
	(opcionMenu = 4)ifTrue: []
	(opcionMenu = 5)ifTrue: []
	(opcionMenu = 6)ifTrue: []
	(opcionMenu = 7)ifTrue: []

]."