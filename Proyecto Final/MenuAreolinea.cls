"Filed out from Dolphin Smalltalk 7"!

Object subclass: #MenuAreolinea
	instanceVariableNames: 'diccionario'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MenuAreolinea guid: (GUID fromString: '{61F2A05F-7BCA-4E11-B62C-B5375DF63B4E}')!
MenuAreolinea comment: ''!
!MenuAreolinea categoriesForClass!Kernel-Objects! !
!MenuAreolinea methodsFor!

crearMenuAreolinea

	|ar pil1 pil2 bol lisButacas but lisAviones av lisBoletos vl lisVuelos i lisPasajeros pas hayVuelo idDetect fecha vuelosRealizados origen destino monto|
	"Crear TODO predeterminado"
	Transcript clear.

	diccionario := Dictionary new.
	lisButacas:= OrderedCollection new.
	lisPasajeros:= OrderedCollection new.
	lisAviones:= OrderedCollection new.
	lisVuelos:= OrderedCollection new.
	lisBoletos:= OrderedCollection new.

	"Creo al piloto"
	pil1:= Piloto crearPilotoNom: 'Pedro' ape: 'Lopez' edad: 31 dni: 40234121 sueldo: 70000 licencia: 'lis1'. 
	pil2:= Piloto crearPilotoNom: 'Gustavo' ape: 'Sanchez' edad: 35 dni: 40643216 sueldo: 70000 licencia: 'lis2'. 

	"Creo una lista de boletos"  "No podir el ID pasajero/ Poner el Id pasajero en NULL"

	i:=1.
	[i < 5] whileTrue:[ bol:= Boleto crearBoleto: i idAvion: 1 idVuelo: 1 idPasajero: nil nroButaca: i precio: 560.
		diccionario at: i put: 1.
		lisBoletos add:bol.
		i:=i+1].
	i:=5.
	[i < 10] whileTrue:[bol:= Boleto crearBoleto: i idAvion: 2 idVuelo: 2 idPasajero: nil nroButaca: i precio: 500.
		diccionario at: i put: 2.
		lisBoletos add:bol.
		i:=i+1].
	i:=10.
	[i < 15] whileTrue:[bol:= Boleto crearBoleto: i idAvion: 3 idVuelo: 3 idPasajero: nil nroButaca: i precio: 400.
		diccionario at: i put: 3.
		lisBoletos add:bol.
		i:=i+1].
	i:=15.
	[i < 20] whileTrue:[bol:= Boleto crearBoleto: i idAvion: 4 idVuelo: 4 idPasajero: nil nroButaca: i precio: 350.
		diccionario at: i put: 4.
		lisBoletos add:bol.
		i:=i+1].
	i:=20.
	[i < 25] whileTrue:[bol:= Boleto crearBoleto: i idAvion: 5 idVuelo: 5 idPasajero: nil nroButaca: i precio: 300.
		diccionario at: i put: 5.
		lisBoletos add:bol.
		i:=i+1].

	i:=25.
	[i < 30] whileTrue:[bol:= Boleto crearBoleto:i idAvion:6 idVuelo:6 idPasajero:0 nroButaca: i precio: 500.
		diccionario at: i put: 6.
		lisBoletos add:bol.
		i:=i+1].

	"Creo una lista de vuelos"

	vl:= Vuelo crearVuelo: 1 origen: 'Buenos Aires' destino: 'Madrid' tipoVuelo: 'Comercial'  fecha: '22/08/22' realizado: false piloto: pil1 capacidad: 2000. lisVuelos add:vl.
	vl:= Vuelo crearVuelo: 2 origen: 'Cordoba' destino: 'Berlin' tipoVuelo: 'Comercial'  fecha: '23/09/22' realizado: true piloto: pil1 capacidad: 3000. lisVuelos add:vl.
	vl:= Vuelo crearVuelo: 3 origen: 'Buenos Aires' destino: 'Santiago' tipoVuelo: 'Comercial'  fecha: '23/11/22' realizado: false piloto: pil1 capacidad: 2400. lisVuelos add:vl.
	vl:= Vuelo crearVuelo: 4 origen: 'Buenos Aires' destino: 'Bogota' tipoVuelo: 'Comercial'  fecha: '1/1/23' realizado: true piloto: pil2 capacidad: 3000. lisVuelos add:vl.
	vl:= Vuelo crearVuelo: 5 origen: 'Buenos Aires' destino: 'Barcelona' tipoVuelo: 'Comercial'  fecha: '11/12/22' realizado: false piloto: pil2 capacidad: 3000. lisVuelos add:vl.

	i:=5.
	[i < 10] whileTrue:[vl:=Vuelo crearVuelo:i origen:'Buenos Aires' destino: 'Neuquen' tipoVuelo:'Comercial' fecha: '30/9' realizado: false piloto: pil2 capacidad: 10.
		lisVuelos add:vl.
		i:=i+1].
	i:=10.
	[i < 15] whileTrue:[vl:=Vuelo crearVuelo:i origen:'Buenos Aires' destino: 'Neuquen' tipoVuelo:'Comercial' fecha: '20/9' realizado: false piloto: pil1 capacidad: 10.
		lisVuelos add:vl.
		i:=i+1].

	"Creo una lista de butacas"
	i:=1.
	[i < 10] whileTrue:[but:= Butaca crearButaca: i.
		lisButacas add:but.
		i:=i+1].

	"Creo una lista de aviones y le agrego la lista de butacas" 
	i:=1.
	[i < 7] whileTrue:[av:= Avion crearAvion: i piloto: pil1 listaButacas: lisButacas.
		lisAviones add:av.
		i:=i+1].

	
	"Creo Areolinea y agrego los vuelos, aviones y boletos"
	ar:= Aerolinea crearAerolinea: 'Ezeiza' monto: 0.
	ar modiListaVuelos: lisVuelos.
	ar modiListaAviones: lisAviones.
	ar modiListaBoletos: lisBoletos.

	"Simulacion"
	
	pas:= Pasajero crearPasajeroNom:' Gonzalo' ape:'Rodriguez' edad:25 dni:40563321 boleto: nil.

	"origen:= (Prompter prompt: 'Origen del boleto que desea comprar ' ).
	destino:= (Prompter prompt: 'Destino del boleto que desea comprar ' ).
	monto:=(Prompter prompt: 'Monto que dispone abonar' )asNumber. Es un string
	ar venderBoleto: pas origen:origen destino:destino monto:monto."
	ar venderBoleto: pas origen:'Buenos Aires'  destino:'Madrid'  monto:1001.
	^ar.



!

menuCollect:unaAreolinea
	|i fecha vuelosRealizados|
	"collect: colecciona los vuelos que determinada fecha y se le pone que fueron realizados"
	fecha:=(Prompter prompt: 'Ingrese una fecha de los vuelos y se indicaran como realizados - *(20/9)' ).
	i:=0.
	vuelosRealizados:=  (unaAreolinea verListaVuelos) collect: [:e | 
		(e verFecha==fecha) ifTrue:[ e modiRealizado: true.
		i:=i+1.
		]
	].
	Transcript show: 'Se modificaron '; show: i printString.
	Transcript show: ' vuelos.' ;cr.!

menuDetect:unaAreolinea
	| collec id |
	Transcript clear.

	"Ingreso de la fecha"
	id := 2 .
	"Busca en la lista de vuelos"
	collec := (unaAreolinea verListaAviones ) detect: [:index | index verId = id]
				ifNone: 
					[Transcript show: '[!!] No se encontro el avion de ese id'.
					^nil].
	"En caso de no encontrar"
	"En caso de encontrar"
	collec ~= nil ifTrue: [collec imprimirAvion ]
!

menuDiccionario
	"diccionario: dice a que avion está asociado cada boleto"
	
	Transcript cr; nextPutAll:'Elementos de un diccionario';cr.
	diccionario keysDo:[:key|Transcript cr.
	Transcript nextPutAll: 'Boleto (id:'.
	key printOn: Transcript.
	Transcript nextPutAll: ') está asociada con el vuelo id: '.
	(diccionario at:key) printOn: Transcript]. !

menuListarVuelos:unAreolinea

	(unAreolinea verListaVuelos) do: [ :e |
	Transcript show: 'Id: ', (e verId printString ). Transcript show: (' ');cr. 
	Transcript show: '	Origen: ', (e verOrigen ). Transcript show: (' ');cr. 
	Transcript show: '	Destino: ', (e verDestino ). Transcript show: (' ');cr.
	Transcript show: '	Fecha: ', (e verFecha ). Transcript show: (' '). 
	Transcript show: '  ¿Fue realizado?: ', (e verRealizado printString) ; cr;cr. 
	].
!

menuReject:unaAreolinea
|collec precioAux|

	"Ingreso del precio a buscar"
	precioAux := (Prompter prompt: 'Ingrese un precio para buscar vuelo con precio inferior a ese monto') asNumber.
	Transcript clear; show: 'Los vuelos con precio inferior al ingresado son: '; cr.

	"Busco en la lista de vuelos con los parametros"
	collec := (unaAreolinea verListaBoletos ) reject: [:index | index verPrecio > precioAux ].
	"Imprimo los vuelos"
	(collec isEmpty )ifFalse: [
		Transcript show: 'Se encontraron: '; show: collec size printString; show: ' Boletos con precio inferior al indicado.';cr.
	]
	ifTrue: [ Transcript show: '';cr; show: '[!!] No se Boletos con precio inferior al indicado.' ].
	
	!

menuSelect:unaAreolinea

|collec aux destinoAux|

"Ingreso parametro de busqueda"
destinoAux:= (Prompter prompt: 'Ingrese el destino' ).
	Transcript clear; 
		show: 'Vuelos con destino a: ',destinoAux printString ; cr;cr.
	aux:=1.
	collec:= (unaAreolinea verListaVuelos) select: [:index | index verDestino  = destinoAux ].

"Imprimo todos los vuelos con el destino pasado por parametro"
(collec isEmpty) ifFalse: [collec do: [:index | Transcript show: aux printString, '] '; 
								show: 'Destino: '; show: index verDestino;cr;
								show: 'Origen: '; show: index verOrigen ;cr;
								show: 'Fecha: '; show: index verFecha;cr;
								show: 'Realizado: '; show: index verRealizado printString ;cr;cr.
								aux:=aux+1
]]
ifTrue: [ Transcript show: '';cr; show: '[!!] No se encontraron resultados' ].
	

! !
!MenuAreolinea categoriesFor: #crearMenuAreolinea!public! !
!MenuAreolinea categoriesFor: #menuCollect:!public! !
!MenuAreolinea categoriesFor: #menuDetect:!public! !
!MenuAreolinea categoriesFor: #menuDiccionario!public! !
!MenuAreolinea categoriesFor: #menuListarVuelos:!public! !
!MenuAreolinea categoriesFor: #menuReject:!public! !
!MenuAreolinea categoriesFor: #menuSelect:!public! !

