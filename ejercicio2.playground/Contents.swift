import UIKit


enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}



class Auto {
    var velocidad : Velocidades;

    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        switch self.velocidad {
            
        case .Apagado:
            
            self.velocidad = Velocidades.VelocidadBaja
            return (velocidad.rawValue,"\(velocidad)")
            
        case .VelocidadBaja:
            
            self.velocidad = Velocidades.VelocidadMedia
            return (velocidad.rawValue,"\(velocidad)")
            
        case.VelocidadMedia:
            
            self.velocidad = Velocidades.VelocidadAlta
            return (velocidad.rawValue,"\(velocidad)")
            
        case.VelocidadAlta:
            
            self.velocidad = Velocidades.VelocidadMedia
            return (velocidad.rawValue,"\(velocidad)")
            
        }
    }

}


var auto = Auto()
print("\(auto.velocidad.rawValue), \(auto.velocidad)")

for _ in 1...20{
    let velocidad = auto.cambioDeVelocidad()
    print("\(velocidad.actual), \(velocidad.velocidadEnCadena)")
}
