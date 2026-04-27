object tom {
    var energia = 50
    var cantidadMetrosCorridos = 10
    var ratonComido = jerry

    method comerRaton(raton){
        energia = energia + 12 + raton.peso()
    }

    method energia(){
        return energia
    }

    method correr(metros){
        energia = energia - (cantidadMetrosCorridos / 2) 
    }

    method velocidadMaxima(){
        return 5 + (energia / 10)
    }

    //parte 2

    method puedeCazarA(metros){ //distancia a la que puede cazar
        return energia > self.energiaNecesaria(metros)
    }

    method energiaNecesaria(metros){
        return metros /  2
    }

    method cazarRaton(raton , metros){
        if (self.puedeCazarA(metros)) {
            self.correr(metros)
            self.comerRaton(raton)
        }
    }
}

//Ratones

object jerry {
    var edad = 2

    method peso(){
      return edad * 20
    }

    method cumplirAños(){
         edad = edad + 1
    }
}

object nibbles {

    method peso(){
        return 35
    }
}


object perez {
    var dientes = 20 //

    method peso(){
        10 + (dientes / 2)
    }

}