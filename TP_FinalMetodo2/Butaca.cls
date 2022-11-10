"Filed out from Dolphin Smalltalk 7"!

Avion subclass: #Butaca
	instanceVariableNames: 'numero'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Butaca guid: (GUID fromString: '{B23A9171-A8C2-4298-91C4-C5D7459DDEDE}')!
Butaca comment: ''!
!Butaca categoriesForClass!Kernel-Objects! !
!Butaca methodsFor!

iniButaca: unNumero
	"Inicializa una instancia de persona"
	numero:=unNumero!

modiNumero:unNumero
	numero:=unNumero.!

verNumero
	^numero.! !
!Butaca categoriesFor: #iniButaca:!public! !
!Butaca categoriesFor: #modiNumero:!public! !
!Butaca categoriesFor: #verNumero!public! !

!Butaca class methodsFor!

crearButaca: unNumero
	"Retorna una instancia de persona"
	^(self new) iniButaca: unNumero.! !
!Butaca class categoriesFor: #crearButaca:!public! !

