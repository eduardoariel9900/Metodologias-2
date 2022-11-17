"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Pasajero
	instanceVariableNames: 'id_pasajero id_Boleto'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Pasajero guid: (GUID fromString: '{93E90AA2-D50A-425F-BFE9-A690C09B8913}')!
Pasajero comment: ''!
!Pasajero categoriesForClass!Kernel-Objects! !
!Pasajero methodsFor!

agregarBoleto:unIdBoleto
	id_Boleto:=unIdBoleto.!

iniPasajeroNom:unNom ape:unApl edad:unaEdad dni:unDNI boleto:unBoleto
	self iniPersona: unNom apellido: unApl edad: unaEdad dni: unDNI.
	id_Boleto=unBoleto.!

verIdBoleto
	^id_Boleto.!

verIdPasajero
	^id_pasajero.! !
!Pasajero categoriesFor: #agregarBoleto:!public! !
!Pasajero categoriesFor: #iniPasajeroNom:ape:edad:dni:boleto:!public! !
!Pasajero categoriesFor: #verIdBoleto!public! !
!Pasajero categoriesFor: #verIdPasajero!public! !

!Pasajero class methodsFor!

crearPasajeroNom:unNom ape:unApl edad:unaEdad dni:unDNI boleto:unBoleto 
"Retornar instancia de un Empleado"
^(self new) iniPasajeroNom:unNom ape:unApl edad:unaEdad dni:unDNI boleto:unBoleto.
	! !
!Pasajero class categoriesFor: #crearPasajeroNom:ape:edad:dni:boleto:!public! !

