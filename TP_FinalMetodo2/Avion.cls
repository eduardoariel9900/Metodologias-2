"Filed out from Dolphin Smalltalk 7"!

Aerolinea subclass: #Avion
	instanceVariableNames: 'id piloto listaPasajeros listaButacas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Avion guid: (GUID fromString: '{E1F9DC61-169D-4BF1-9011-E63C33046E95}')!
Avion comment: ''!
!Avion categoriesForClass!Kernel-Objects! !
!Avion methodsFor!

iniAvion: unId piloto:unPiloto listaPasajeros:unaListaPasajeros listaButacas:unaListaButacas
	"Inicializa una instancia de Avion"
	id:=unId.
	piloto:=unPiloto.
	listaPasajeros:=unaListaPasajeros.
	listaButacas:=unaListaButacas!

modiId: unId
	id:=unId.!

modiListaButacas: unaListaButacas
	listaButacas :=unaListaButacas.!

modiListaPasajeros: unaListaPasajeros
	listaPasajeros :=unaListaPasajeros.!

modiPiloto: unPiloto
	piloto :=unPiloto .!

verId
	^id.!

verListaButacas
	^listaButacas.!

verListaPasajeros
	^listaButacas.!

verPiloto
	^piloto.! !
!Avion categoriesFor: #iniAvion:piloto:listaPasajeros:listaButacas:!public! !
!Avion categoriesFor: #modiId:!public! !
!Avion categoriesFor: #modiListaButacas:!public! !
!Avion categoriesFor: #modiListaPasajeros:!public! !
!Avion categoriesFor: #modiPiloto:!public! !
!Avion categoriesFor: #verId!public! !
!Avion categoriesFor: #verListaButacas!public! !
!Avion categoriesFor: #verListaPasajeros!public! !
!Avion categoriesFor: #verPiloto!public! !

!Avion class methodsFor!

crearAvion: unId piloto:unPiloto listaPasajeros:unaListaPasajeros listaButacas:unaListaButacas
	"Retorna una instancia de Avion"
	^(self new) iniAvion: unId piloto: unPiloto listaPasajeros: unaListaPasajeros listaButacas: unaListaButacas.! !
!Avion class categoriesFor: #crearAvion:piloto:listaPasajeros:listaButacas:!public! !

