
menu := MenuAreolinea new.
Transcript clear.

"Inicio del Menu:"
	opcionMenu:='si'.
	[opcionMenu = 'si' ]whileTrue:[
		Transcript clear;cr.
		Transcript show: '	1 - Crea, carga instancias de la areolinea y simular la venta.';cr.
		Transcript show: '	2 - Utilizar cuando sea posible al menos un select, collect, reject y detect ';cr.
		Transcript show: '	3 - Utilizar un diccionario. ';cr.
		Transcript show: '	4 - Muestra datos de manera ordenada.';cr.

		"Opciones del menu"
		opcionMenu:=(Prompter prompt: 'Elija una opcion para continuar' ).
		(opcionMenu = '1')ifTrue: [
			Transcript clear.
			ar := menu crearMenuAreolinea.
		].
		(opcionMenu = '2')ifTrue: [
			Transcript clear;cr.
			Transcript show: '	1 - Select ';cr.
			Transcript show: '	2 - Collect ';cr.
			Transcript show: '	3 - Reject. ';cr.
			Transcript show: '	4 - Detect.';cr.
			opcionMenu:=(Prompter prompt: 'Elija una opcion para continuar' ).

			(opcionMenu = '1')ifTrue: [ Transcript clear. menu menuSelect:ar. ].
			(opcionMenu = '2')ifTrue: [ Transcript clear. menu menuCollect:ar. ].
			(opcionMenu = '3')ifTrue: [ Transcript clear.  menu menuReject:ar. ].
			(opcionMenu = '4')ifTrue: [ Transcript clear. menu menuDetect:ar. ].
		].
		(opcionMenu = '3')ifTrue: [
			Transcript clear.
			menu menuDiccionario.
		].
		(opcionMenu = '4')ifTrue: [ Transcript clear.  menu menuListarVuelos: ar. ].

		Transcript show: ' ';cr.
		Transcript show: 'Desea seguir? ';cr.
		opcionMenu:=(Prompter prompt: 'Desea seguir? ' ).
	]. 
