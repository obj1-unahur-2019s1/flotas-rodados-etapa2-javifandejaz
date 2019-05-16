import rodados.*
import pedidos.*

class Dependencia {
	const flota = #{}
	var property empleados = 0
	const pedidos = #{}

	
	method agregarAFlota(rodado) {
		flota.add(rodado)
	}
	
	method quitarDeFlota(rodado) {
		flota.remove(rodado)
	}
	
	method pesoTotalFlota() = flota.sum { r => r.peso() }
	
	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all { r => r.velocidadMaxima() >= 100 } 
	}
	
	method capacidadTotalEnColor(unColor) {
		return flota
			.filter { r => r.color() == unColor }
			.sum { r => r.capacidad()}
	}
	
	method colorDelRodadoMasRapido() {
		return flota.max { r => r.velocidadMaxima() }.color()
	}
	
	method capacidadFaltante() {
		return 0.max(empleados - self.capacidadTotal())
	}
	
	method capacidadTotal() {
		return flota.sum {r => r.capacidad()}
	}
	
	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}
	
	method agregarPedidos(pedido){ pedidos.add(pedido)}
	
	method quitarPedidos(pedido){ pedidos.remove(pedido)}
	
	method totalPasajeros(){ return pedidos.sum({i=>i.cantidad()})}
	
	
	
	//method noPuedeSatisfacer(){return pedidos.filter({p=> not flota.any({r=>p.puedeSatisfacer(r)})})}
	
	method noPuedeSatisfacer(){return pedidos.filter({p=> not self.puedeSerSatisfecho(p)})}
	
	method puedeSerSatisfecho(pedido){return flota.any({a=>pedido.puedeSatisfacer(a)})}
	
	
	
	
	method colorIncompatible(color){ return pedidos.all({i=>i.coloresIncompatibles().contains(color)})}
	
	// method colorIncompatible(color){ return pedidos.all({i=>i.coloresIncompatibles().all({e=>e == color})})}
	
	//method colorIncompatible(color){ return pedidos.all({i=>not i.coloresIncompatibles().all({e=>e!=color})})}
	
		
}




