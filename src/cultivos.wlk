import etapas.*

class Cultivo {
	var property tipo
	var property posicion
	var property etapa = ninio
	
	method crece() { etapa.crece(self) }
	
	method cosechate(granjero) {
		granjero.sumaOro(etapa.oroPorCosecha(tipo))
		etapa = muerto
	}
	
	method imagen() = etapa.getImagen(tipo)
}


object maiz {
	method imagenCultivoAdulto() = "corn_adult.png"
	method imagenCultivoNinio() = "corn_baby.png"
	method oroBase() = 150
}

object trigo{
	method imagenCultivoAdulto() = "wheat_adult.png"
	method imagenCultivoNinio() = "wheat_baby.png"
	method oroBase() = 100
}

object tomaco {
	method imagenCultivoAdulto() = "tomaco_adult.png"
	method imagenCultivoNinio() = "tomaco_baby.png"
	method oroBase() = 50
}
