"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre apellido edad dni'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{7F8F7EA4-1304-4596-8FCE-0FD53F2FCBCE}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

iniPersona: unNom apellido: unApl edad: unaEdad dni: unDNI
	"Inicializar una instancia de persona"

	nombre := unNom.
	dni := unDNI.
	edad := unaEdad.
	apellido := unApl!

modiApellido:unApl
apellido:=unApl.!

modiDNI: unDNI
dni := unDNI.!

modiEDAD:unaEdad
edad:=unaEdad.!

modiNombre:unNom
nombre:=unNom.!

verApellido
^apellido.!

verDNI
^dni.!

verEdad
^edad.!

verNombre
^nombre.! !
!Persona categoriesFor: #iniPersona:apellido:edad:dni:!public! !
!Persona categoriesFor: #modiApellido:!public! !
!Persona categoriesFor: #modiDNI:!public! !
!Persona categoriesFor: #modiEDAD:!public! !
!Persona categoriesFor: #modiNombre:!public! !
!Persona categoriesFor: #verApellido!public! !
!Persona categoriesFor: #verDNI!public! !
!Persona categoriesFor: #verEdad!public! !
!Persona categoriesFor: #verNombre!public! !

!Persona class methodsFor!

crearPersona:unNom apellido:unApl  edad:unaEdad dni:unDNI
"Retornar una instancia de persona"
^(self new) iniPersona:unNom apellido:unApl  edad:unaEdad dni:unDNI.! !
!Persona class categoriesFor: #crearPersona:apellido:edad:dni:!public! !

