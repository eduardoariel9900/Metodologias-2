"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Aerolinea
	instanceVariableNames: 'monto listaAviones listaEmpleados listaVuelos nombre listaBoletos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Aerolinea guid: (GUID fromString: '{F8AFF028-0AF4-46EC-9A7D-227BF4439FD1}')!
Aerolinea comment: ''!
!Aerolinea categoriesForClass!Kernel-Objects! !
!Aerolinea methodsFor!

actualizarMonto:unMonto
	monto = monto + unMonto.!

agregarBoleto:unBoleto
	(self verListaBoletos) add: unBoleto.
	!

agregarVuelo:unVuelo
	"Agrego un vuelo a la lista de vuelos"
	unVuelo modiId: self verContadorVuelo.
	listaVuelos add:unVuelo.!

buscarVueloPorFecha
	|collec fecha|
	Transcript clear.
	
	"Ingreso de la fecha"
	fecha := Prompter prompt: 'Ingrese una fecha de la forma DD/MM/AAAA'.
	"Busca en la lista de vuelos"
	collec := listaVuelos detect: [:index | index verFecha = fecha]
	"En caso de no encontrar"
	ifNone:[ Transcript show: '[!!] No se encontro vuelo para esa fecha'. ^nil ].
	"En caso de encontrar"
	(collec ~= nil) ifTrue: [collec imprimirVuelo].
	
!

iniAerolineaNom:unNombre Monto:unMonto
	"Inicializa una instancia de Aerolinea"
	nombre:=unNombre.
	listaAviones:= OrderedCollection  new.
	listaEmpleados:= OrderedCollection  new.
	listaVuelos:=OrderedCollection new.
	listaBoletos:=OrderedCollection new.
	monto:=unMonto.!

listarVuelos
|collec aux|

Transcript clear;
	show: 'Lista de vuelos';cr.
	"Defino collec el retotno de la lista de vuelos"
	collec:=(self) verListaVuelos.	
	aux:=1.

	collec do: [:index | Transcript show: aux printString, '] ';cr; 
				show:'id'; show: index verId printString; cr;
				show:'Origen'; show: index verOrigen printString; cr;
				show: 'Destino'; show: index verDestino printString;cr;
				show: 'Tipo de vuelo'; show: index verTipoVuelo printString; cr;
				show: 'Fecha'; show: index verFecha printString;cr;
				show: 'Realizado'; show: index verRealizado printString;cr;
				"show: 'Piloto'; show: index verPiloto printString ; cr;"
				show: 'Capacidad'; show: index verCapacidad printString;cr.
				aux:=aux +1.
].
	
	
	!

listarVuelosSelect
|collec aux destinoAux|

"Ingreso parametro de busqueda"
destinoAux:= (Prompter prompt: 'Ingrese el destino' ).
	Transcript clear; 
		show: 'Vuelos con destino a'; cr.
	aux:=1.
	collec:= (self verListaVuelos) select: [:index | index verDestino  = destinoAux ].

"Imprimo todos los vuelos con el destino pasado por parametro"
(collec isEmpty) ifFalse: [collec do: [:index | Transcript show: aux printString, ']'; 
								show: 'Destino: '; show: index verDestino;cr;
								show: 'Origen: '; show: index verOrigen ;cr;
								show: 'Fecha: '; show: index verFecha;cr;
								show: 'Realizado: '; show: index verRealizado printString ;cr.
								aux:=aux+1
]]
ifTrue: [ Transcript show: '';cr; show: '[!!] No se encontraron resultados' ].
	!

modiListaAviones:unaListaAviones
	listaAviones:=unaListaAviones .!

modiListaBoletos:unaListaBoletos
	listaBoletos:=unaListaBoletos.!

modiListaEmpleados:unaListaEmpleados
	listaEmpleados :=unaListaEmpleados.!

modiListaVuelos:unaListaVuelos
	listaVuelos:=unaListaVuelos.!

modiMonto:unMonto
	monto :=unMonto .!

modiNombre:unNom
	nombre:=unNom.!

venderBoleto:unPasajero origen:unOrigen destino:unDestino monto:unMonto
	|idVuelo|
	idVuelo:=31.
	
	listaVuelos do: [ :e |
		(e verOrigen = unOrigen )ifTrue: [
			(e verDestino = unDestino )ifTrue: [
				(e verRealizado = false )ifTrue: [
					idVuelo:= (e verId)
				].
			].
		].
	].
	(idVuelo = 31 )ifTrue: [ ^(Transcript show: ' No hay vuelo que concida con el origen/destino';cr)  ].

	
	listaBoletos do: [ :e |
		(e verId = idVuelo )ifTrue: [
			(e verPrecio <= unMonto )ifTrue: [
				monto:= monto + unMonto."self actualizarMonto: unMonto. -> no adaba asi que lo hize manual"
				Transcript show: ' Se vendio el boleto a ('.
				Transcript show: idVuelo printString .
				Transcript show: ') '.
				Transcript show: unPasajero verApellido .
				^(Transcript show: unPasajero verNombre )
			].
		].
	].
	^(Transcript show: ' Precio mayor del boleto' ;cr)!

verListaAviones
	^listaAviones.!

verListaBoletos
	^listaBoletos.!

verListaEmpleados
	^listaEmpleados .!

verListaVuelos
	^listaVuelos.!

verMonto
	^monto.!

verNombre
	^nombre.! !
!Aerolinea categoriesFor: #actualizarMonto:!public! !
!Aerolinea categoriesFor: #agregarBoleto:!public! !
!Aerolinea categoriesFor: #agregarVuelo:!public! !
!Aerolinea categoriesFor: #buscarVueloPorFecha!public! !
!Aerolinea categoriesFor: #iniAerolineaNom:Monto:!public! !
!Aerolinea categoriesFor: #listarVuelos!public! !
!Aerolinea categoriesFor: #listarVuelosSelect!public! !
!Aerolinea categoriesFor: #modiListaAviones:!public! !
!Aerolinea categoriesFor: #modiListaBoletos:!public! !
!Aerolinea categoriesFor: #modiListaEmpleados:!public! !
!Aerolinea categoriesFor: #modiListaVuelos:!public! !
!Aerolinea categoriesFor: #modiMonto:!public! !
!Aerolinea categoriesFor: #modiNombre:!public! !
!Aerolinea categoriesFor: #venderBoleto:origen:destino:monto:!public! !
!Aerolinea categoriesFor: #verListaAviones!public! !
!Aerolinea categoriesFor: #verListaBoletos!public! !
!Aerolinea categoriesFor: #verListaEmpleados!public! !
!Aerolinea categoriesFor: #verListaVuelos!public! !
!Aerolinea categoriesFor: #verMonto!public! !
!Aerolinea categoriesFor: #verNombre!public! !

!Aerolinea class methodsFor!

crearAerolinea:unNombre monto:unMonto
	"Retorna una instancia de Aerolinea"
	^(self new) iniAerolineaNom: unNombre Monto: unMonto.! !
!Aerolinea class categoriesFor: #crearAerolinea:monto:!public! !

