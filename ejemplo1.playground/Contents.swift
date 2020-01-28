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

let (_,mensaje) = calcularIMC2(peso: peso,altura: alt)
print(mensaje)

print("############# TUPLAS #############")


var pelicula : (nombre :String , anoDeSalida : Int , calidicacion : Double) = ("El tigre", 1990, 75.4)


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

enum Distncia : Int{
    case Cancum = 450
    case Guadalajara = 10
    case DF = 70
    case Monterrey = 512
    case Merida
}

func obtenerDistancia( ciudad : Ciudad )-> Int {
    return Ciudad.Cancum.hashValue - ciudad.hashValue
}

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


