//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init(){
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let tmpVelocidad = velocidad
        
        if(tmpVelocidad == .Apagado){
            velocidad = .VelocidadBaja
            return (tmpVelocidad.rawValue, "Apagado")
        }
        
        if(tmpVelocidad == .VelocidadBaja){
            velocidad = .VelocidadMedia
            return (tmpVelocidad.rawValue, "Velocidad baja")
        }
        if(tmpVelocidad == .VelocidadMedia){
            velocidad = .VelocidadAlta
            return (tmpVelocidad.rawValue, "Velocidad media")
        }
        if(tmpVelocidad == .VelocidadAlta){
            velocidad = .VelocidadMedia
            return (tmpVelocidad.rawValue, "Velocidad alta")
        }
        
        return(tmpVelocidad.rawValue, "Apagado")
    }
}

var miAuto = Auto()

for _ in 1...20 {
    print(miAuto.cambioDeVelocidad())
}
