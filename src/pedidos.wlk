import rodados.*

class Pedido {
	
	var property distancia
	var property tiempoMaximo
	var property cantidad
	var coloresIncompatibles = #{}
	
	method velocidadRequerida(){ return distancia / tiempoMaximo}
	
	method puedeSatisfacer(auto){return auto.velocidadMaxima() - self.velocidadRequerida() > 10
		and auto.capacidad() >= cantidad 
		and coloresIncompatibles.all({i=>i != auto.color()})
	}
	
	method acelerar(){ tiempoMaximo = tiempoMaximo - 1 }
	
	method relajar(){ tiempoMaximo = tiempoMaximo + 1}
	
	method coloresIncompatibles(){return coloresIncompatibles }
}
