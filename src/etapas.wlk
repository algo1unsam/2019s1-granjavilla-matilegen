object ninio {

	method crece(cultivo) { cultivo.etapa(adulto) } 

	method oroPorCosecha(_) = 0
	
	method getImagen(cultivo) = cultivo.imagenCultivoNinio()
}

object adulto {
	
	method crece(cultivo) { cultivo.etapa(muerto) } 
	
	method oroPorCosecha(cultivo) = cultivo.oroBase()
	
	method getImagen(cultivo) = cultivo.imagenCultivoAdulto()
}

object muerto {
	
	method crece(_) {} // No hace nada 
	
	method oroPorCosecha(_) = 0
	
	method getImagen(_) = "dead_plant.png"
}
