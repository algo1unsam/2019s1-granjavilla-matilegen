import hector.*
import wollok.game.*
class Planta{
	method precio()
	method crecer()
	method image()
	method cosechar()
	method choque(persona){persona.regar(self)}
}
class Maiz inherits Planta{
	var edad="baby"
	var property position
	var image="corn_baby.png"
	
	override method image()= image
	method nombre()=self
	override method crecer(){
		image="corn_adult.png"
		edad="adult"
	}
	override method cosechar(){
		if(edad=="adult"){
			hector.plantaVenta(self)
			game.removeVisual(self)
		}
	}
	override method precio()=150
}
class Trigo inherits Planta {
	var edad="baby"
	var property position
	var image="wheat_0.png"
	var crecimiento=0
	method nombre()=self
	override method image()= image
	override method crecer(){
		if(crecimiento==0){
		image="wheat_1.png"
		crecimiento=1
		}else if(crecimiento==1){
		image="wheat_2.png"
		crecimiento=2
		edad="adult"			
		}else if(crecimiento==2){
		image="wheat_3.png"
		crecimiento=3
		edad="adult"
		}else{
		image="wheat_0.png"
		crecimiento=0
		edad="baby"
		}
	}
	override method cosechar(){
		if(edad=="adult"){
			hector.plantaVenta(self)
			game.removeVisual(self)
		}
	}
	override method precio(){
		return (crecimiento-1)*100
}
}
class Tomaco inherits Planta{
	var edad="baby"
	var property position=game.at(4,7)
	var image="tomaco_baby.png"
	method nombre()=self
	override method image()= image
	override method crecer(){
		game.removeVisual(self)
		self.position().up(1)
		image="tomaco.png"
		edad="adult"
		game.addVisual(self)
	}
	override method cosechar(){
		if(edad=="adult"){
			hector.plantaVenta(self)
			game.removeVisual(self)
		}
	}
	override method precio()=80
}
