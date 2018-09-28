import cultivos.*

object granjero {
	var cultivos = []
	var property oro = 0
	var property posicion = new Position(3, 3)
	const property imagen = "player.png"
	
	method plantaMaiz() { self.planta(maiz) }
	method plantaTrigo() { self.planta(trigo) }
	method plantaTomaco() { self.planta(tomaco) }

	method planta(tipoCultivo) {
		var cultivo = new Cultivo(tipo = tipoCultivo, posicion = posicion.clone())
		game.addVisual(cultivo)
		cultivos.add(cultivo)
	}
	
	method rega() {
		var cultivosARegar = posicion.allElements()
			.filter { obj => !(self == obj) }
			
		if (cultivosARegar.isEmpty())
			throw new Exception("Solo las plantas se pueden regar!")
			
		cultivosARegar.forEach { cultivo => cultivo.crece() }
	}
	
	method cosechaTodo() {
		cultivos.forEach { c => c.cosechate(self) }
		cultivos.clear()
	}
	
	method sumaOro(cantidad) { oro += cantidad }
}
