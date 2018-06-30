// Velocímetro

import UIKit

//Enumeración velocidades
enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

//Clase
class Auto {
    var velocidad : Velocidades
    
    init ( ) {
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var velNum : Int
        var velStr : String
        switch velocidad.rawValue {
            case 0:
                velNum = Velocidades.Apagado.rawValue
                velStr = "Apagado"
                velocidad = Velocidades.VelocidadBaja
            case 20:
                velNum = Velocidades.VelocidadBaja.rawValue
                velStr = "Velocidad Baja"
                velocidad = Velocidades.VelocidadMedia
            case 50:
                velNum = Velocidades.VelocidadMedia.rawValue
                velStr = "Velocidad Media"
                velocidad = Velocidades.VelocidadAlta
            case 120:
                velNum = Velocidades.VelocidadAlta.rawValue
                velStr = "Velocidad Alta"
                velocidad = Velocidades.VelocidadMedia
            default:
                velNum = Velocidades.Apagado.rawValue
                velStr = "Apagado"
                velocidad = Velocidades.Apagado
        }
        let resultado = (velNum, velStr)
        return resultado
    }
    
}

print("VELOCÍMETRO")
print("--------------------")
var coche = Auto()
for i in 0...20{
    let res = coche.cambioDeVelocidad()
    print("\(res.actual), \(res.velocidadEnCadena)")
}


