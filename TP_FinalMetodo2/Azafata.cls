"Filed out from Dolphin Smalltalk 7"!

Empleado subclass: #Azafata
	instanceVariableNames: 'idioma'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Azafata guid: (GUID fromString: '{BF1B824F-DD67-4350-B8B9-18EFFFDF77E1}')!
Azafata comment: ''!
!Azafata categoriesForClass!Kernel-Objects! !
!Azafata methodsFor!

iniAzafataNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo idioma:unIdioma
	self iniEmpleadoNom: unNom ape: unApl edad: unaEdad dni: unDNI sueldo: unSueldo.
	idioma:=unIdioma.!

modiIdioma:unIdioma
	idioma:=unIdioma.
	!

verIdioma
	^idioma.! !
!Azafata categoriesFor: #iniAzafataNom:ape:edad:dni:sueldo:idioma:!public! !
!Azafata categoriesFor: #modiIdioma:!public! !
!Azafata categoriesFor: #verIdioma!public! !

!Azafata class methodsFor!

crearAzafataNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo idioma:unIdioma
"Retorna una instancia de un Empleado Administrativo"
	^(self new) iniAzafataNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo idioma:unIdioma.! !
!Azafata class categoriesFor: #crearAzafataNom:ape:edad:dni:sueldo:idioma:!public! !

