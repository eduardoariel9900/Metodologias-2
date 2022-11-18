"Filed out from Dolphin Smalltalk 7"!

Empleado subclass: #Piloto
	instanceVariableNames: 'licencia'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Piloto guid: (GUID fromString: '{63368594-E66D-4613-97B9-BF418A445E93}')!
Piloto comment: ''!
!Piloto categoriesForClass!Kernel-Objects! !
!Piloto methodsFor!

iniPilotoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo licencia:unaLicencia
	self iniEmpleadoNom: unNom ape: unApl edad: unaEdad dni: unDNI sueldo: unSueldo.
	licencia:=unaLicencia.!

modiLicencia:unaLicencia
	licencia:=unaLicencia.!

verLicencia
	^licencia! !
!Piloto categoriesFor: #iniPilotoNom:ape:edad:dni:sueldo:licencia:!public! !
!Piloto categoriesFor: #modiLicencia:!public! !
!Piloto categoriesFor: #verLicencia!public! !

!Piloto class methodsFor!

crearPilotoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo licencia:unaLicencia
	"Retorna una instancia de un Empleado Piloto"
	^(self new) iniPilotoNom: unNom ape: unApl edad: unaEdad dni: unDNI sueldo: unSueldo licencia: unaLicencia.! !
!Piloto class categoriesFor: #crearPilotoNom:ape:edad:dni:sueldo:licencia:!public! !

