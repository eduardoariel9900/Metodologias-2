"Filed out from Dolphin Smalltalk 7"!

Empleado subclass: #Administrativo
	instanceVariableNames: 'sector cargo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Administrativo guid: (GUID fromString: '{1F05C0D7-F34D-4F00-BA28-0E2542649A5C}')!
Administrativo comment: ''!
!Administrativo categoriesForClass!Kernel-Objects! !
!Administrativo methodsFor!

iniAdministrativoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo sector:unSector cargo:unCargo
	self iniEmpleadoNom: unNom ape: unApl edad: unaEdad dni: unDNI sueldo: unSueldo.
	sector:=unSector.
	cargo:=unCargo.!

modiCargo:unCargo
cargo:=unCargo.!

modiSector:unSector
	sector:=unSector.!

verCargo
^cargo.!

verSector
^sector.! !
!Administrativo categoriesFor: #iniAdministrativoNom:ape:edad:dni:sueldo:sector:cargo:!public! !
!Administrativo categoriesFor: #modiCargo:!public! !
!Administrativo categoriesFor: #modiSector:!public! !
!Administrativo categoriesFor: #verCargo!public! !
!Administrativo categoriesFor: #verSector!public! !

!Administrativo class methodsFor!

crearAdministrativoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo sector:unSector cargo:unCargo
"Retorna una instancia de un Empleado Administrativo"
^(self new) iniAdministrativoNom:unNom ape:unApl edad:unaEdad dni:unDNI sueldo:unSueldo sector:unSector cargo:unCargo.! !
!Administrativo class categoriesFor: #crearAdministrativoNom:ape:edad:dni:sueldo:sector:cargo:!public! !

