"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Aerolinea
	instanceVariableNames: 'monto listaAviones listaEmpleados listaVuelos nombre idvuelo listaBoletos'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Aerolinea guid: (GUID fromString: '{F8AFF028-0AF4-46EC-9A7D-227BF4439FD1}')!
Aerolinea comment: ''!
!Aerolinea categoriesForClass!Kernel-Objects! !
!Aerolinea methodsFor!

actualizarMonto:unMonto
	monto += unMonto.!

agregarBoleto:unBoleto
	(self verListaBoletos) add: unBoleto.
	!

agregarVuelo:unVuelo
	"Agrego un vuelo a la lista de vuelos"
	unVuelo modiId: self verContadorVuelo.
	listaVuelos add:unVuelo.!

buscarVueloPorFecha
	|collec fecha|
	Transcript clear.
	
	"Ingreso de la fecha"
	fecha := Prompter prompt: 'Ingrese una fecha de la forma DD/MM/AAAA'.
	"Busca en la lista de vuelos"
	collec := listaVuelos detect: [:index | index verFecha = fecha]
	"En caso de no encontrar"
	ifNone:[ Transcript show: '[!!] No se encontro vuelo para esa fecha'. ^nil ].
	"En caso de encontrar"
	(collec ~= nil) ifTrue: [collec imprimirVuelo].
	
!

cargarAerolineaPredeterminada
	|vuelo1 vuelo2 vuelo3 vuelo4 vuelo5 i bol but1 but2 but3 but4 but5 lisButacas av pil|

"se carga 5 vuelos automaticamente"
	vuelo1:= Vuelo
				crearVueloOrigen:'Argentina, Buenos Aires' 
				destino: 'España, Madrid' 
				tipoVuelo: 'Comercial' 
				fecha: '22/08/22' 
				realizado: false 
				piloto: 1
				capacidad: 2000.
	vuelo2:=Vuelo 
				crearVueloOrigen:'Argentina, Cordoba' 
				destino: 'Alemania, Berlin' 
				tipoVuelo: 'Comercial' 
				fecha: '23/09/22'
				realizado: true 
				piloto: 2
				capacidad:3000.
	vuelo3:=Vuelo
				crearVueloOrigen:'Argentina, Buenos Aires' 
				destino: 'Chile, Santiago' 
				tipoVuelo: 'Comercial' 
				fecha: '23/11/22' 
				realizado: false 
				piloto: 1 
				capacidad: 2400.
	vuelo4:=Vuelo
				crearVueloOrigen: 'Argentina, Buenos Aires' 
				destino: 'Colombia, Bogota' 
				tipoVuelo: 'Comercial' 
				fecha: '1/1/23' 
				realizado: false 
				piloto: 2 
				capacidad: 3000.
	vuelo5:=Vuelo
				crearVueloOrigen:'Argentina, Buenos Aires' 
				destino: 'España, Barcelona' 
				tipoVuelo: 'Comercial' 
				fecha: '11/12/22' 
				realizado: false 
				piloto: 4 
				capacidad: 3000.

"Creacion de 10 boletos para cada vuelo"
i:=1.
[i < 10] whileTrue:[bol:= Boleto crearBoleto: i idVuelo: 1 idPasajero: i nroButaca: i precio: 500.
	listaBoletos add:bol.
	i:=i+1].
i:=1.
[i < 10] whileTrue:[bol:= Boleto crearBoleto: i idVuelo: 2 idPasajero: i nroButaca: i precio: 700.
	listaBoletos add:bol.
	i:=i+1].
i:=1.
[i < 10] whileTrue:[bol:= Boleto crearBoleto: i idVuelo: 3 idPasajero: i nroButaca: i precio: 100.
	listaBoletos add:bol.
	i:=i+1].
i:=1.
[i < 10] whileTrue:[bol:= Boleto crearBoleto: i idVuelo: 4 idPasajero: i nroButaca: i precio: 300.
	listaBoletos add:bol.
	i:=i+1].
i:=1.
[i < 10] whileTrue:[bol:= Boleto crearBoleto: i idVuelo: 5 idPasajero: i nroButaca: i precio: 500.
	listaBoletos add:bol.
	i:=i+1].
"Termina la carga de boletos para los vuelos"


"Creación de 10 butacas para cada avion"
"i:=1.
[i < 10] whileTrue:[but:= Butaca crearButaca: i.
	but agregarButaca: i.
	i:=i+1]."
	but1 := Butaca
			crearButaca: 1.
	but2 := Butaca
			crearButaca: 2.
	but3 := Butaca
			crearButaca: 3.
	but4 := Butaca
			crearButaca: 4.
	but5 := Butaca
			crearButaca: 5.

"Termina la carga de las butacas para cada avion"

"Creacion de un piloto generico"
pil:= Piloto crearPilotoNom: 'Pedro' ape: 'Lopez' edad: 35 dni: 40234121 sueldo: 70000 licencia: 'lis1'.
"Termina la carga del piloto generico"

"Creacion de 5 aviones"
i:=1.
[i <5] whileTrue:[av:= Avion crearAvion: i piloto: pil listaButacas: lisButacas.
	listaAviones add:av.
	i:=i+1].
"Termina la carga de los aviones"


"Agrego las variables a las listas"
self agregarVuelo: vuelo1.
self agregarVuelo: vuelo2.
self agregarVuelo: vuelo3.
self agregarVuelo: vuelo4.
self agregarVuelo: vuelo5.

av agregarButaca: but1.
av agregarButaca: but2.
av agregarButaca: but3.
av agregarButaca: but4.
av agregarButaca: but5.

!

cargarVuelo
	|vuelo|
	vuelo:= Vuelo crearVuelo: 1 origen: 'Argentina, Buenos Aires' destino: 'España, Madrid' tipoVuelo: 		 'Comercial' fecha: '22/08/22' realizado: false piloto: 1.!

cargarVueloPredeterminado
	|vuelo1 vuelo2 vuelo3 vuelo4 vuelo5 i bol|

"se carga 5 vuelos automaticamente"
	vuelo1:= Vuelo
				crearVueloOrigen:'Argentina, Buenos Aires' 
				destino: 'España, Madrid' 
				tipoVuelo: 'Comercial' 
				fecha: '22/08/22' 
				realizado: false 
				piloto: 1
				capacidad: 2000.
	vuelo2:=Vuelo 
				crearVueloOrigen:'Argentina, Cordoba' 
				destino: 'Alemania, Berlin' 
				tipoVuelo: 'Comercial' 
				fecha: '23/09/22'
				realizado: true 
				piloto: 2
				capacidad:3000.
	vuelo3:=Vuelo
				crearVueloOrigen:'Argentina, Buenos Aires' 
				destino: 'Chile, Santiago' 
				tipoVuelo: 'Comercial' 
				fecha: '23/11/22' 
				realizado: false 
				piloto: 1 
				capacidad: 2400.
	vuelo4:=Vuelo
				crearVueloOrigen: 'Argentina, Buenos Aires' 
				destino: 'Colombia, Bogota' 
				tipoVuelo: 'Comercial' 
				fecha: '1/1/23' 
				realizado: false 
				piloto: 2 
				capacidad: 3000.
	vuelo5:=Vuelo
				crearVueloOrigen:'Argentina, Buenos Aires' 
				destino: 'España, Barcelona' 
				tipoVuelo: 'Comercial' 
				fecha: '11/12/22' 
				realizado: false 
				piloto: 4 
				capacidad: 3000.





self agregarVuelo: vuelo1.
self agregarVuelo: vuelo2.
self agregarVuelo: vuelo3.
self agregarVuelo: vuelo4.
self agregarVuelo: vuelo5.
!

iniAerolineaNom:unNombre Monto:unMonto
	"Inicializa una instancia de Aerolinea"
	nombre:=unNombre.
	idvuelo:=0.
	listaAviones:= OrderedCollection  new.
	listaEmpleados:= OrderedCollection  new.
	listaVuelos:=OrderedCollection new.
	listaBoletos:=OrderedCollection new.
	monto:=unMonto.!

listarVuelos
|collec aux|

Transcript clear;
	show: 'Lista de vuelos';cr.
	"Defino collec el retotno de la lista de vuelos"
	collec:=(self) verListaVuelos.	
	aux:=1.

	collec do: [:index | Transcript show: aux printString, '] ';cr; 
				show:'id'; show: index verId printString; cr;
				show:'Origen'; show: index verOrigen printString; cr;
				show: 'Destino'; show: index verDestino printString;cr;
				show: 'Tipo de vuelo'; show: index verTipoVuelo printString; cr;
				show: 'Fecha'; show: index verFecha printString;cr;
				show: 'Realizado'; show: index verRealizado printString;cr;
				"show: 'Piloto'; show: index verPiloto printString ; cr;"
				show: 'Capacidad'; show: index verCapacidad printString;cr.
				aux:=aux +1.
].
	
	
	!

listarVuelosSelect
|collec aux destinoAux|

"Ingreso parametro de busqueda"
destinoAux:= (Prompter prompt: 'Ingrese el destino' ).
	Transcript clear; 
		show: 'Vuelos con destino a'; cr.
	aux:=1.
	collec:= (self verListaVuelos) select: [:index | index verDestino  = destinoAux ].

"Imprimo todos los vuelos con el destino pasado por parametro"
(collec isEmpty) ifFalse: [collec do: [:index | Transcript show: aux printString, ']'; 
								show: 'Destino: '; show: index verDestino;cr;
								show: 'Origen: '; show: index verOrigen ;cr;
								show: 'Fecha: '; show: index verFecha;cr;
								show: 'Realizado: '; show: index verRealizado printString ;cr.
								aux:=aux+1
]]
ifTrue: [ Transcript show: '';cr; show: '[!!] No se encontraron resultados' ].
	!

menuAerolinea
	Transcript clear.
	Transcript show: '**************************************************************************************';cr;
			show: '**                                 Menu de la Aerolinea Ezeiza                             **';cr;
			show: '**************************************************************************************';cr;
			show: '1] Cargar vuelos predeterminados.';cr;
			show: '2] Listar de todos los vuelos.';cr;
			show: '3] Buscar vuelo por el destino.';cr;"(Select, devuelve los vuelos segun el destino)"
			show: '4] Buscar vuelos disponibles.=';cr;"(Reject, devuelve los vuelos por la capacidad distinta de llena)"
			show: '5] Buscar vuelos por fecha';cr;"(Detect, devuelve un vuelo con ese fecha) // y en el menu para por precio del vuelo"
			show: '6] Listar de todos los aviones';cr;
			show: '7] Lista de todos los Empleados';cr;
			show: '8] Vender Boleto.';cr;
			show: '9] Listar Pilotos por la licencia';cr.
						!

modiListaAviones:unaListaAviones
	listaAviones:=unaListaAviones .!

modiListaBoletos:unaListaBoletos
	listaBoletos:=unaListaBoletos.!

modiListaEmpleados:unaListaEmpleados
	listaEmpleados :=unaListaEmpleados.!

modiListaVuelos:unaListaVuelos
	listaVuelos:=unaListaVuelos.!

modiMonto:unMonto
	monto :=unMonto .!

modiNombre:unNom
	nombre:=unNom.!

verContadorVuelo
	idvuelo:=idvuelo+1.
	^idvuelo.!

verIdVuelo
	^idvuelo.!

verListaAviones
	^listaAviones.!

verListaBoletos
	^listaBoletos.!

verListaEmpleados
	^listaEmpleados .!

verListaVuelos
	^listaVuelos.!

verMonto
	^monto.!

verNombre
	^nombre.! !
!Aerolinea categoriesFor: #actualizarMonto:!public! !
!Aerolinea categoriesFor: #agregarBoleto:!public! !
!Aerolinea categoriesFor: #agregarVuelo:!public! !
!Aerolinea categoriesFor: #buscarVueloPorFecha!public! !
!Aerolinea categoriesFor: #cargarAerolineaPredeterminada!private! !
!Aerolinea categoriesFor: #cargarVuelo!public! !
!Aerolinea categoriesFor: #cargarVueloPredeterminado!private! !
!Aerolinea categoriesFor: #iniAerolineaNom:Monto:!public! !
!Aerolinea categoriesFor: #listarVuelos!public! !
!Aerolinea categoriesFor: #listarVuelosSelect!public! !
!Aerolinea categoriesFor: #menuAerolinea!public! !
!Aerolinea categoriesFor: #modiListaAviones:!public! !
!Aerolinea categoriesFor: #modiListaBoletos:!public! !
!Aerolinea categoriesFor: #modiListaEmpleados:!public! !
!Aerolinea categoriesFor: #modiListaVuelos:!public! !
!Aerolinea categoriesFor: #modiMonto:!public! !
!Aerolinea categoriesFor: #modiNombre:!public! !
!Aerolinea categoriesFor: #verContadorVuelo!public! !
!Aerolinea categoriesFor: #verIdVuelo!public! !
!Aerolinea categoriesFor: #verListaAviones!public! !
!Aerolinea categoriesFor: #verListaBoletos!public! !
!Aerolinea categoriesFor: #verListaEmpleados!public! !
!Aerolinea categoriesFor: #verListaVuelos!public! !
!Aerolinea categoriesFor: #verMonto!public! !
!Aerolinea categoriesFor: #verNombre!public! !

!Aerolinea class methodsFor!

crearAerolinea:unNombre monto:unMonto
	"Retorna una instancia de Aerolinea"
	^(self new) iniAerolineaNom: unNombre Monto: unMonto.! !
!Aerolinea class categoriesFor: #crearAerolinea:monto:!public! !

