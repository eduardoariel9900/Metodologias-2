"Filed out from Dolphin Smalltalk 7"!

Aerolinea subclass: #Vuelo
	instanceVariableNames: 'id origen destino tipoVuelo fecha realizado piloto capacidad'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Vuelo guid: (GUID fromString: '{7CFAE7AB-AC58-4F98-A115-805111A92F4F}')!
Vuelo comment: ''!
!Vuelo categoriesForClass!Kernel-Objects! !
!Vuelo methodsFor!

imprimirVuelo
	Transcript 
		show: 'Datos del vuelo buscado'; cr;
		show: 'id_Vuelo: ' , self verId printString; cr;
		show: 'destino: ' , self verDestino printString; cr;
		show: 'origen: ' ,self verOrigen printString; cr;
		show: 'capacidad', self  verCapacidad printString;cr;
		show: 'fecha' , self verFecha printString;cr.!

iniVuelo:unIdVuelo origen:unOrigen destino:unDestino tipoVuelo:unTipoVuelo fecha:unaFecha realizado:fueRealizado piloto:unPiloto capacidad:unaCapacidad
	"Inicializa una instancia de persona"
	id:= unIdVuelo .
	origen:=unOrigen.
	destino:=unDestino.
	tipoVuelo:=unTipoVuelo.
	fecha:=unaFecha.
	realizado:=fueRealizado.
	piloto:=unPiloto.
	capacidad:=unaCapacidad.!

modiCapacidad:unaCapacidad
	capacidad:=unaCapacidad.
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

verCapacidad
	^capacidad.!

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
!Vuelo categoriesFor: #imprimirVuelo!public! !
!Vuelo categoriesFor: #iniVuelo:origen:destino:tipoVuelo:fecha:realizado:piloto:capacidad:!public! !
!Vuelo categoriesFor: #modiCapacidad:!public! !
!Vuelo categoriesFor: #modiDestino:!public! !
!Vuelo categoriesFor: #modiFecha:!public! !
!Vuelo categoriesFor: #modiId:!public! !
!Vuelo categoriesFor: #modiOrigen:!public! !
!Vuelo categoriesFor: #modiPiloto:!public! !
!Vuelo categoriesFor: #modiRealizado:!public! !
!Vuelo categoriesFor: #modiTipoVuelo:!public! !
!Vuelo categoriesFor: #verCapacidad!public! !
!Vuelo categoriesFor: #verDestino!public! !
!Vuelo categoriesFor: #verFecha!public! !
!Vuelo categoriesFor: #verId!public! !
!Vuelo categoriesFor: #verOrigen!public! !
!Vuelo categoriesFor: #verPiloto!public! !
!Vuelo categoriesFor: #verRealizado!public! !
!Vuelo categoriesFor: #verTipoVuelo!public! !

!Vuelo class methodsFor!

crearVuelo:unidVuelo origen:unOrigen destino:unDestino tipoVuelo:unTipoVuelo fecha:unaFecha realizado:fueRealizado piloto:unPiloto capacidad:unaCapacidad
	"Inicializa una instancia de persona"
	^(self new) iniVuelo:unidVuelo origen:unOrigen destino: unDestino tipoVuelo: unTipoVuelo fecha: unaFecha realizado: fueRealizado piloto: unPiloto capacidad:unaCapacidad.! !
!Vuelo class categoriesFor: #crearVuelo:origen:destino:tipoVuelo:fecha:realizado:piloto:capacidad:!public! !

