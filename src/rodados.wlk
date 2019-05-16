class Corsa {
	var property color
	
	method capacidad() { return 4 }
	method velocidadMaxima() { return 150 }
	method peso() { return 1300 }
}

class Kwid {
	var property tanqueAdicional
	
	method capacidad() = 
		if (tanqueAdicional) {3} else {4}
		
	method velocidadMaxima() = 
		if (tanqueAdicional) {120} else {110}
		
	method peso() = 
		if (tanqueAdicional) {1350} else {1200}
		
	method color() = "azul"
}

class AutoEspecial {
	var property capacidad
	var property peso
	var property velocidadMaxima
	var property color
}




object trafic {
	var property interior = interiorComodo
	var property motor = motorPulenta
	const pesoBase = 4000
	
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = pesoBase + interior.peso() + motor.peso()
	method color() = "blanco"
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}

object motorBataton {
	method velocidadMaxima() = 80
	method peso() = 500
}

object motorPulenta {
	method velocidadMaxima() = 130
	method peso() = 800
}






