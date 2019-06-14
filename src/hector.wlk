import wollok.game.*
import planta.*
import mercado.*
object hector {
	var oro=0
	var property position = game.at(5,5)
	var plantaVenta=[]
	
	method plantaVenta(plant){plantaVenta.add(plant)}
	method image()= "player.png"
		method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}
	method meSaco(){var element=[]
		element=position.allElements()
		element.remove(self)
		return element}
	//metodo de regado
	method regar(){
		var element=self.meSaco()
		element.all{plant=>plant.crecer()}
		
	}
	method cosechar(){
		var element=self.meSaco()
		element.all{plant=>plant.cosechar()}
		
	}
	method oro(cantidad){oro=oro+cantidad}
	
	
	method vender(){
		oro+=plantaVenta.sum{plant=>plant.precio()}
		plantaVenta.all{plant=>plantaVenta.remove(plant)}
	}
	method tengoOro()=game.say(self, oro)
	method cantidadPlantas()=plantaVenta.count()
	}