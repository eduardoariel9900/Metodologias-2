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

agregarButaca:unaButaca
	listaButacas add: unaButaca.!

imprimirAvion
	Transcript 
		show: 'Datos del Avion buscado'; cr;
		show: 'Id Avion: ' , self verId printString; cr;
		show: 'Piloto ';  
		show: '	DNI: ', (self verPiloto) verDNI printString;cr;
		show: '	Licencia: ', (self verPiloto) verLicencia printString; cr.
	!

iniAvion: unId piloto:unPiloto listaButacas:unaListaButacas
	"Inicializa una instancia de Avion"
	id:=unId.
	piloto:=unPiloto.
	listaPasajeros:= OrderedCollection new.
	listaButacas:= unaListaButacas.!

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
!Avion categoriesFor: #agregarButaca:!public! !
!Avion categoriesFor: #imprimirAvion!public! !
!Avion categoriesFor: #iniAvion:piloto:listaButacas:!public! !
!Avion categoriesFor: #modiId:!public! !
!Avion categoriesFor: #modiListaButacas:!public! !
!Avion categoriesFor: #modiListaPasajeros:!public! !
!Avion categoriesFor: #modiPiloto:!public! !
!Avion categoriesFor: #verId!public! !
!Avion categoriesFor: #verListaButacas!public! !
!Avion categoriesFor: #verListaPasajeros!public! !
!Avion categoriesFor: #verPiloto!public! !

!Avion class methodsFor!

crearAvion: unId piloto:unPiloto listaButacas:unaListaButacas
	"Retorna una instancia de Avion"
	^(self new) iniAvion: unId piloto: unPiloto listaButacas: unaListaButacas.! !
!Avion class categoriesFor: #crearAvion:piloto:listaButacas:!public! !

