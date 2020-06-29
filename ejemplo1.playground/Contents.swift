import UIKit

var str = "Hello, playground"

var hola = "Hola Mundo"

//Concatenar

var resultado = str + hola + " Ejemplo"


print(" imprimir " + hola )


print(" imprimir \(hola) " )


print("#############Cadenas#############")

print("Lista de deportes: \n\t 1.Baloncesto🎱 \n\t 2. Soccer🏋🏻 \n\t 3. Natacion")


print("#############Tipos de datos#############")


var x = 35

var  y : Int = 34

var w :  Double = 3.456

var z = true

var c : Bool = false

print(str + "un numero \(w)")

var ancho = 15
var altura = 5

let area = altura * ancho

var numero = 200 + 200 - 5 * 2 / 3 % 9

var numeroDeVidas = 5

numeroDeVidas+=1

numeroDeVidas-=1

var puntos = 15 - 7


print("############# Arreglos #############")


var monedas: [Int] = [1,2,4,3]
monedas.sorted()
var idiomas = ["espanol", "chino", "ingles", "frances"]
idiomas += ["mandarin","cualquier cosa"]

idiomas.count

print("############# Diccionario #############")


var idiomas2 = ["fr":"frances","Es":"Espanol"]

idiomas2["fr"]

idiomas2["fr"] = "french"

let nuevo = idiomas2.removeValue(forKey: "fr")

print(idiomas2)


print("############# FOR y WHILE #############")

for i in idiomas{
    print(i)
}

for i in 0...10{
    print(i)
}

var aux = 0
while aux < idiomas.count  {
    print(idiomas[aux])
     aux = aux + 1
}

aux = 0
repeat{
    print(idiomas[aux])
    aux = aux + 1
}while aux < idiomas.count

var meses = 1...12

for mes in meses {
//    if mes == 1 {
//        print("Enero")
//    }else if( mes == 10){
//        print("Octubre")
//    }
    
    switch mes {
    case 1,2,3:
        print("ENERO")
    case 4...7:
        print("NUEVO MESES")
    default:
        print("Otro MES")
    }
}

print("############# FUNCIONES #############")
var peso : Double = 66
var alt : Double = 1.64

func calcularIMC(peso: Double, altura : Double) -> Double{
   let imc = peso / (altura * altura)
   return imc
}


func calcularIMC2(peso: Double, altura : Double) -> (Double, String){
   let imc = peso / (altura * altura)
    var mensaje : String = ""
    if(imc > 18.5 && imc < 25.00){
        mensaje = "Peso normal"
    }else{
        mensaje = "Error"
    }
    return (imc, mensaje)
}
 
let imc2 = calcularIMC2(peso: peso,altura: alt)
imc2.0
imc2.1

let (peso2,_) = calcularIMC2(peso: peso,altura: alt)
print(peso2)




func calcularIMC3(peso: Double, altura : Double) -> (imgPeso : Double, imgMensaje: String){
   let imc = peso / (altura * altura)
    var mensaje : String = ""
    if(imc > 18.5 && imc < 25.00){
        mensaje = "Peso normal"
    }else{
        mensaje = "Error"
    }
    return (imc, mensaje)
}


let imc3 = calcularIMC3(peso: peso,altura: alt)
imc3.imgPeso
imc3.imgMensaje

print("############# TUPLAS #############")


var pelicula : (nombre :String , anoDeSalida : Int , calidicacion : Double) = ("El tigre", 1990, 75.4)

print(pelicula.0)


let (nom,_,altt) = pelicula
print(altt)

print("############# Opcionales #############")


var num : Int? = nil

num = 5

num = 6


if num != nil {
    let numeroString : String = String(num!)
    print(numeroString)
}


func profesores ( id : String) -> String{
    let diccionario = ["007": "David", "009" : "Maria", "010":"Rogelio"]
    let nombre : String = diccionario[id]!
    return nombre
}


func profesores2 ( id : String) -> String? {
    let diccionario = ["007": "David", "009" : "Maria", "010":"Rogelio"]
    let nombre : String? = diccionario[id]
    return nombre
}

if let nombre = profesores2(id: "099"){
    nombre
}else{
    print("No hay profesor")
}

let nombre2 = profesores(id: "009");


if  nombre2 != nil {
    nombre2
}else{
    print("no hay profesor")
}


print("############# Enumeracion #############")


let ciudades = ["Cancun", "Guadalajara", "DF", "Monterrey"]

func obtenerCiudad( ciudad : String )-> String {
    switch ciudad {
        
    case "Cancun":
        return "Ciudad de playa"
    
    case "Guadalajara", "DF", "Monterrey":
        return "Ciudad sin playas"
        
    default:
       return "Parametro invalido"
    }
}


enum Ciudad{
    case Cancum
    case Guadalajara
    case DF
    case Monterrey
}


func obtenerCiudad2( ciudad : Ciudad )-> String {
    switch ciudad {
        
    case Ciudad.Cancum:
        return "Ciudad de playa"
    
    case Ciudad.DF, Ciudad.Monterrey, Ciudad.Guadalajara :
        return "Ciudad sin playas"
        
    default:
       return "Parametro invalido"
    }
}

obtenerCiudad2(ciudad: Ciudad.Cancum)

func obtenerCiudad3( ciudad : Ciudad )-> String {
    switch ciudad {
        
    case .Cancum:
        return "Ciudad de playa"
    
    case .DF, .Monterrey, .Guadalajara :
        return "Ciudad sin playas"
        
    default:
       return "Parametro invalido"
    }
}

obtenerCiudad2(ciudad: Ciudad.Cancum)

enum Distancia : Int{
    case Cancum = 450
    case Guadalajara = 10
    case DF = 70
    case Monterrey = 512
    case Merida
    
    func calcularDistancia(  ) -> Int{
        return Ciudad.Cancum.hashValue - self.hashValue
    }
    
    init(){
        self = .Cancum
    }
}

var ciudad = Distancia()
ciudad.hashValue
ciudad.calcularDistancia()
//obtenerDistancia(ciudad: Ciudad.Monterrey)



enum LecturaDatos{
    case Digitos(Int, Int, Int)
    case QrCodigo(String)
}

var entradaDatos = LecturaDatos.Digitos(3,4,5)

entradaDatos = .QrCodigo("Hola")

switch entradaDatos {
case .Digitos(let uno, let dos, let tres):
    print(" \(uno) \(dos) \(tres) ")
case .QrCodigo(let qr):
    print(qr)
default:
    <#code#>
}


print("############# Estructuras #############")


struct Automovil {
    var marca : String
    var precio : Double
}

var auto = Automovil(marca : "BMW", precio: 300.34)
auto.marca
auto.precio


struct Automovil2 {
    let marca : String
    var precio : Double
    
    
    init(marca :String, precio : Double){
        self.marca = marca
        self.precio = precio
    }
    
    func obtenerDescripcion() -> String{
        return "marca : \(marca) - precio: \(precio)"
    }
}

var auto2 = Automovil2(marca : "BMW", precio: 300.34)
auto2.marca
auto2.precio = 34.45

auto2.obtenerDescripcion()


print("############# Clases #############")

class Producto {
    let marca : String
    var precio : Double = 0.0
    
    
    init(marca :String, precio : Double){
        self.marca = marca
        self.precio = precio
    }
    
    
    func calcularPrecioDeDescuento(porcentajeDeDescuento : Double )->Double{
        return precio - (precio * porcentajeDeDescuento / 100)
    }

}

var telef = Producto(marca: "Iphone", precio: 2300)

telef.marca
telef.precio

telef.calcularPrecioDeDescuento(porcentajeDeDescuento: 30)

telef.precio


print("############# Herencia #############")


enum Seccion{
    case Introduccion, Indice, Conclusiones
    
    init(){
        self = .Introduccion
    }
}


class Libro : Producto {
    
    var seccion = Seccion()
    let anoDePublicacion : Int
    
    init(marca : String, precio: Double, ano : Int){
        self.anoDePublicacion = ano
        super.init(marca: marca, precio: precio)
    }
    
    
    convenience init(marca: String){
        self.init(marca: marca, precio: 0.0, ano:2001)
    }
    
    
    
    override func calcularPrecioDeDescuento(porcentajeDeDescuento : Double )->Double{
        return precio * porcentajeDeDescuento / 100
//        return super.calcularPrecioDeDescuento(porcentajeDeDescuento: porcentajeDeDescuento)
    }
    
}


var libro = Libro(marca: "MG", precio: 2300, ano: 2020)

libro.marca
libro.precio
libro.seccion
libro.calcularPrecioDeDescuento(porcentajeDeDescuento: 30)




var nuevoLibro = Libro(marca: "BP")


print("############# Propiedades calculadas #############")


class Libro2 : Producto {
    
    var seccion = Seccion()
    let anoDePublicacion : Int
    
    var paginas = 1000
    var palabrasPorPagina = 60
    var numeroDePalabrasDelLibro: Int{
        get{
            return paginas * palabrasPorPagina
        }
        set{
            paginas = newValue
            palabrasPorPagina = newValue / 100
        }
        
    }
    
    init(marca : String, precio: Double, ano : Int){
        self.anoDePublicacion = ano
        super.init(marca: marca, precio: precio)
    }
    
    
    convenience init(marca: String){
        self.init(marca: marca, precio: 0.0, ano:2001)
    }
    
    
    
    override func calcularPrecioDeDescuento(porcentajeDeDescuento : Double )->Double{
        return precio * porcentajeDeDescuento / 100
//        return super.calcularPrecioDeDescuento(porcentajeDeDescuento: porcentajeDeDescuento)
    }
    
}


var nuevoLibro2 = Libro2(marca: "BP")

print(nuevoLibro2.numeroDePalabrasDelLibro)

nuevoLibro2.numeroDePalabrasDelLibro = 1000

print(nuevoLibro2.numeroDePalabrasDelLibro)


print("############# Propiedades opcionales #############")


class Libro3 : Producto {
    
    var seccion = Seccion()
    let anoDePublicacion : Int
    var contieneFormatoDigital : Bool?
    
    var paginas = 1000
    var palabrasPorPagina = 60
    var numeroDePalabrasDelLibro: Int{
        get{
            return paginas * palabrasPorPagina
        }
        set{
            paginas = newValue
            palabrasPorPagina = newValue / 100
        }
        
    }
    
    init(marca : String, precio: Double, ano : Int){
        self.anoDePublicacion = ano
        super.init(marca: marca, precio: precio)
    }
    
    
    convenience init(marca: String){
        self.init(marca: marca, precio: 0.0, ano:2001)
    }
    
    
    
    override func calcularPrecioDeDescuento(porcentajeDeDescuento : Double )->Double{
        return precio * porcentajeDeDescuento / 100
//        return super.calcularPrecioDeDescuento(porcentajeDeDescuento: porcentajeDeDescuento)
    }
    
}


var nuevoLibro3 = Libro3(marca: "BP")
nuevoLibro3.contieneFormatoDigital = true

if let formatoDigital = nuevoLibro3.contieneFormatoDigital{
    if formatoDigital{
        print("Tambien es digital")
    }
}

var media : [Float] = [1.1,2.2]




print("############# Numero aleatorio #############")


print(arc4random() % 20)
