import wollok.game.*
import arbustos.*
import granjero.*

object nivel {
	method configurate(){
		//	CONFIG	
		game.title("FarmVille")
		game.height(10)
		game.width(10)
		game.ground("ground.png")
			
		//	VISUALES
	 	game.addVisualCharacter(granjero)
					
		//	TECLADO
		keyboard.m().onPressDo { granjero.plantaMaiz() }
		keyboard.t().onPressDo { granjero.plantaTrigo() }
		keyboard.o().onPressDo { granjero.plantaTomaco() }
		keyboard.r().onPressDo { granjero.rega() }
		keyboard.c().onPressDo { granjero.cosechaTodo() }
		
		keyboard.space().onPressDo{ game.say(granjero, "mi oro: " + granjero.oro()) }  
}
}