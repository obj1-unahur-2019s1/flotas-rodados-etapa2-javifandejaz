import rodados.*
import pedidos.*

class Dependencia {
	const flota = #{}
	var property empleados = 0

	
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
			.sum { r => r.capacidad() }
	}
	
	method colorDelRodadoMasRapido() {
		return flota.max { r => r.velocidadMaxima() }.color()
	}
	
	method capacidadFaltante() {
		return 0.max(empleados - self.capacidadTotal())
	}
	
	method capacidadTotal() {
		return flota.sum { r => r.capacidad() }
	}
	
	method esGrande() {
		return empleados >= 40 and flota.size() >= 5
	}
}