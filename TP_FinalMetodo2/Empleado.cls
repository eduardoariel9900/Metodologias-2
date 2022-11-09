"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Empleado
	instanceVariableNames: 'sueldo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empleado guid: (GUID fromString: '{9F0AC0D1-17A4-4D34-BDC5-61BDF91F2C52}')!
Empleado comment: ''!
!Empleado categoriesForClass!Kernel-Objects! !
!Empleado methodsFor!

iniEmpleadoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo
	self iniPersona:unNom apellido:unApl edad:unaEdad dni:unDNI.
	sueldo:=unSueldo.
!

modiSueldo:unSueldo
sueldo:=unSueldo.!

verSueldo
^sueldo.! !
!Empleado categoriesFor: #iniEmpleadoNom:ape:edad:dni:sueldo:!public! !
!Empleado categoriesFor: #modiSueldo:!public! !
!Empleado categoriesFor: #verSueldo!public! !

!Empleado class methodsFor!

crearEmpleadoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo
"Retornar instancia de un Empleado"
^(self new) iniEmpleadoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo.! !
!Empleado class categoriesFor: #crearEmpleadoNom:ape:edad:dni:sueldo:!public! !

