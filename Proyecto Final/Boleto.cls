"Filed out from Dolphin Smalltalk 7"!

Aerolinea subclass: #Boleto
	instanceVariableNames: 'idBoleto idAvion idVuelo idPasajero nroButaca precio'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Boleto guid: (GUID fromString: '{F1837D0E-F3C8-4032-A67D-7BCEB265F8CF}')!
Boleto comment: ''!
!Boleto categoriesForClass!Kernel-Objects! !
!Boleto methodsFor!

iniBoleto:unIdBoleto idAvion:unIdAvion idVuelo:unIdVuelo idPasajero:unIdPasajero nroButaca:unNroButaca precio:unPrecio
"Retorna una instancia de Persona"
	idBoleto:= unIdBoleto.
	idAvion := unIdAvion.
	idVuelo := unIdVuelo.
	idPasajero := unIdPasajero.
	nroButaca :=unNroButaca.
	precio := unPrecio!

modiIdAvion: unIdAvion
	idAvion:=unIdAvion.!

modiIdPasajero: unIdPasajero
	idPasajero:=unIdPasajero.!

modiIdVuelo: unIdVuelo
	idVuelo:=unIdVuelo.!

modiNroButaca: unNroButaca
	nroButaca:=unNroButaca.!

modiPrecio: unPrecio
	precio :=unPrecio.!

verId
	^idBoleto .!

verIdAvion
	^idAvion.!

verIdPasajero
	^idPasajero.!

verIdVuelo
	^idVuelo .!

verNroButaca
	^nroButaca.!

verPrecio
	^precio.! !
!Boleto categoriesFor: #iniBoleto:idAvion:idVuelo:idPasajero:nroButaca:precio:!public! !
!Boleto categoriesFor: #modiIdAvion:!public! !
!Boleto categoriesFor: #modiIdPasajero:!public! !
!Boleto categoriesFor: #modiIdVuelo:!public! !
!Boleto categoriesFor: #modiNroButaca:!public! !
!Boleto categoriesFor: #modiPrecio:!public! !
!Boleto categoriesFor: #verId!public! !
!Boleto categoriesFor: #verIdAvion!public! !
!Boleto categoriesFor: #verIdPasajero!public! !
!Boleto categoriesFor: #verIdVuelo!public! !
!Boleto categoriesFor: #verNroButaca!public! !
!Boleto categoriesFor: #verPrecio!public! !

!Boleto class methodsFor!

crearBoleto:unIdBoleto idAvion:unIdAvion idVuelo:unIdVuelo idPasajero:unIdPasajero nroButaca:unNroButaca precio:unPrecio
	^(self new) iniBoleto:unIdBoleto idAvion:unIdAvion idVuelo: unIdVuelo idPasajero: unIdPasajero nroButaca: unNroButaca precio: unPrecio.! !
!Boleto class categoriesFor: #crearBoleto:idAvion:idVuelo:idPasajero:nroButaca:precio:!public! !

