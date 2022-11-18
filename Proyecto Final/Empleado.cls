"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Empleado
	instanceVariableNames: 'sueldo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empleado guid: (GUID fromString: '{C88DB895-FF82-44AB-992F-ACC26EAD441B}')!
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

crearEmpleado:aNombre lastName:aPellido email:aEmail  dni:aDni legajo:aLegajo sector:aSector
"Return a initialized instance of Empleado"
^(self new) iniEmpleado:aNombre lastName:aPellido email:aEmail  dni:aDni legajo:aLegajo sector:aSector.!

crearEmpleadoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo
"Retornar instancia de un Empleado"
^(self new) iniEmpleadoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo.! !
!Empleado class categoriesFor: #crearEmpleado:lastName:email:dni:legajo:sector:!public! !
!Empleado class categoriesFor: #crearEmpleadoNom:ape:edad:dni:sueldo:!public! !

