"Filed out from Dolphin Smalltalk 7"!

Aerolinea subclass: #Vuelo
	instanceVariableNames: 'id origen destino tipoVuelo fecha realizado piloto'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Vuelo guid: (GUID fromString: '{7CFAE7AB-AC58-4F98-A115-805111A92F4F}')!
Vuelo comment: ''!
!Vuelo categoriesForClass!Kernel-Objects! !
!Vuelo methodsFor!

iniVuelo: unId origen:unOrigen destino:unDestino tipoVuelo:unTipoVuelo fecha:unaFecha realizado:fueRealizado piloto:unPiloto
	"Inicializa una instancia de persona"
	id:=unId.
	origen:=unOrigen.
	destino:=unDestino.
	tipoVuelo:=unTipoVuelo.
	fecha:=unaFecha.
	realizado:=fueRealizado.
	piloto:=unPiloto.
	!

modiDestino:unDestino
	destino :=unDestino.!

modiFecha:unFecha
	fecha :=unFecha.!

modiId:unId
	id:=unId.!

modiOrigen:unOrigen
	origen:=unOrigen.!

modiPiloto:unPiloto
	piloto=unPiloto.!

modiRealizado:fueRealizado
	realizado:=fueRealizado.!

modiTipoVuelo:unTipoVuelo
	tipoVuelo :=unTipoVuelo.!

verDestino
	^destino .!

verFecha
	^fecha .!

verId
	^id .!

verOrigen
	^origen .!

verPiloto
	^piloto.!

verRealizado
	^realizado .!

verTipoVuelo
	^tipoVuelo .! !
!Vuelo categoriesFor: #iniVuelo:origen:destino:tipoVuelo:fecha:realizado:piloto:!public! !
!Vuelo categoriesFor: #modiDestino:!public! !
!Vuelo categoriesFor: #modiFecha:!public! !
!Vuelo categoriesFor: #modiId:!public! !
!Vuelo categoriesFor: #modiOrigen:!public! !
!Vuelo categoriesFor: #modiPiloto:!public! !
!Vuelo categoriesFor: #modiRealizado:!public! !
!Vuelo categoriesFor: #modiTipoVuelo:!public! !
!Vuelo categoriesFor: #verDestino!public! !
!Vuelo categoriesFor: #verFecha!public! !
!Vuelo categoriesFor: #verId!public! !
!Vuelo categoriesFor: #verOrigen!public! !
!Vuelo categoriesFor: #verPiloto!public! !
!Vuelo categoriesFor: #verRealizado!public! !
!Vuelo categoriesFor: #verTipoVuelo!public! !

!Vuelo class methodsFor!

crearVuelo: unId origen:unOrigen destino:unDestino tipoVuelo:unTipoVuelo fecha:unaFecha realizado:fueRealizado piloto:unPiloto
	"Inicializa una instancia de persona"
	^(self new) iniVuelo: unId origen: unOrigen destino: unDestino tipoVuelo: unTipoVuelo fecha: unaFecha realizado: fueRealizado piloto: unPiloto! !
!Vuelo class categoriesFor: #crearVuelo:origen:destino:tipoVuelo:fecha:realizado:piloto:!public! !

