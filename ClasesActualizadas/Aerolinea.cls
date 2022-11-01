"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Aerolinea
	instanceVariableNames: 'monto listaAviones listaEmpleados listaVuelos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Aerolinea guid: (GUID fromString: '{F8AFF028-0AF4-46EC-9A7D-227BF4439FD1}')!
Aerolinea comment: ''!
!Aerolinea categoriesForClass!Kernel-Objects! !
!Aerolinea methodsFor!

modiListaAviones:unaListaAviones
	listaAviones:=unaListaAviones .!

modiListaEmpleados:unaListaEmpleados
	listaEmpleados :=unaListaEmpleados.!

modiListaVuelos:unaListaVuelos
	listaVuelos:=unaListaVuelos.!

modiMonto:unMonto
	monto :=unMonto .!

verListaAviones
	^listaAviones.!

verListaEmpleados
	^listaEmpleados .!

verListaVuelos
	^listaVuelos .!

verMonto
	^monto.! !
!Aerolinea categoriesFor: #modiListaAviones:!public! !
!Aerolinea categoriesFor: #modiListaEmpleados:!public! !
!Aerolinea categoriesFor: #modiListaVuelos:!public! !
!Aerolinea categoriesFor: #modiMonto:!public! !
!Aerolinea categoriesFor: #verListaAviones!public! !
!Aerolinea categoriesFor: #verListaEmpleados!public! !
!Aerolinea categoriesFor: #verListaVuelos!public! !
!Aerolinea categoriesFor: #verMonto!public! !

