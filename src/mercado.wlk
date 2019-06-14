import hector.*
import planta.*
import mercado.*
class Mercado {
	var property oro
	var property position
	var image="market.png"
	method imagen()=image
	method vender(){hector.vender()}
	method meSaco(){var element=[]
		element=position.allElements()
		element.remove(self)
		return element}
	method alguien(){var element=self.meSaco()
		if(element==hector){
			hector.vender()
		}
}

}

