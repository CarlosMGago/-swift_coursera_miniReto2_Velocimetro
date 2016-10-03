//: Velocímetro de un automóvil digital: Mini Reto semana 4
//: Coursera Swift

// Elaborado por: Carlos Galindo G.

import UIKit

//Declaración enumeración y correspondientes estados

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120

    // Declaración inicializador
    init (velocidadInicial : Velocidades) {
      self = velocidadInicial
    }
}

//Declaración clase Auto

class Auto {
    
    // Instancias
    var velocidad : Velocidades
    var estadoNumerico : Int
    
    // Inicialización de las instancias
    
    init(){
        self.velocidad = .Apagado
        estadoNumerico = self.velocidad.rawValue
    }
    
    // Declaración función cambio de velocidad
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String ) {
        
        let mensajeDeSalida : String
        estadoNumerico = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            mensajeDeSalida = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            mensajeDeSalida = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            mensajeDeSalida = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            mensajeDeSalida = "Velocidad Alta"
        }
        
        return (actual: estadoNumerico, velocidadEnCadena: mensajeDeSalida)
    }
    
}

// Declaración instancia auto de la clase Auto

var auto = Auto()
var tuplaDeSalida : (actual : Int, velocidadEnCadena : String )

// Declariación de las 20 iteraciones e impresión en consola de la tupla de salida

for var i in 1...20 {
    
    tuplaDeSalida = auto.cambioDeVelocidad()
    print("\(tuplaDeSalida.actual),\(tuplaDeSalida.velocidadEnCadena)")
}




