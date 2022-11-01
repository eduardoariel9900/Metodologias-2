"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Aerolinea
	instanceVariableNames: 'monto listaAviones listaEmpleados listaVuelos nombre'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Aerolinea guid: (GUID fromString: '{F8AFF028-0AF4-46EC-9A7D-227BF4439FD1}')!
Aerolinea comment: ''!
!Aerolinea categoriesForClass!Kernel-Objects! !
!Aerolinea methodsFor!

iniAerolineaNom:unNombre Monto:unMonto
	"Inicializa una instancia de Aerolinea"
	nombre:=unNombre.
	listaAviones:= OrderedCollection  new.
	listaEmpleados:= OrderedCollection  new.
	listaVuelos:=OrderedCollection  new.
	monto:=unMonto.!

menuAerolinea
	Transcript clear.
	Transcript show: '**************************************************************************************';cr;
			show: '**                                 Menu de la Aerolinea Ezeiza                             **';cr;
			show: '**************************************************************************************';cr.!

modiListaAviones:unaListaAviones
	listaAviones:=unaListaAviones .!

modiListaEmpleados:unaListaEmpleados
	listaEmpleados :=unaListaEmpleados.!

modiListaVuelos:unaListaVuelos
	listaVuelos:=unaListaVuelos.!

modiMonto:unMonto
	monto :=unMonto .!

modiNombre:unNom
	nombre:=unNom.!

verListaAviones
	^listaAviones.!

verListaEmpleados
	^listaEmpleados .!

verListaVuelos
	^listaVuelos .!

verMonto
	^monto.!

verNombre
	^nombre.! !
!Aerolinea categoriesFor: #iniAerolineaNom:Monto:!public! !
!Aerolinea categoriesFor: #menuAerolinea!public! !
!Aerolinea categoriesFor: #modiListaAviones:!public! !
!Aerolinea categoriesFor: #modiListaEmpleados:!public! !
!Aerolinea categoriesFor: #modiListaVuelos:!public! !
!Aerolinea categoriesFor: #modiMonto:!public! !
!Aerolinea categoriesFor: #modiNombre:!public! !
!Aerolinea categoriesFor: #verListaAviones!public! !
!Aerolinea categoriesFor: #verListaEmpleados!public! !
!Aerolinea categoriesFor: #verListaVuelos!public! !
!Aerolinea categoriesFor: #verMonto!public! !
!Aerolinea categoriesFor: #verNombre!public! !

!Aerolinea class methodsFor!

crearAerolinea:unNombre monto:unMonto
	"Retorna una instancia de Aerolinea"
	^(self new) iniAerolineaNom: unNombre Monto: unMonto.! !
!Aerolinea class categoriesFor: #crearAerolinea:monto:!public! !

