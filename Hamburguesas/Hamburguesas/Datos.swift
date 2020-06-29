//
//  Datos.swift
//  Hamburguesas
//
//  Created by UbiiPagos on 6/28/20.
//  Copyright © 2020 UbiiPagos. All rights reserved.
//

import Foundation

import UIKit


class ColeccionDePaises{
    let paises : [String]  = ["Venezuela","Estados Unidos", "Mexico", "Colombia", "Francia", "Alemania", "Inglaterra", "Japon", "Escocia", "Argentia", "Ecuador", "España", "Portugal", "Islandia", "Thailandia","India","China","Grecia","Italia","Chile", "Uruguay", "Paraguay"]
    
    
    func obtenPais( )->String{
        let paisNum =  Int(arc4random()) % paises.count
        return paises[paisNum]
    }
}


class ColeccionDeHamburguesa{
    
    let hamgurguesas : [String] = ["La que no cree en nadie","La mata burro", "La rompe colchon", "El trueno", "La piso doble", "Avila", "Americana", "Vegetariana", "Vegana", "Doble carne", "Mata pasión", "La rascacielo", "Monumento", "Todo en una", "La sube colesterol","La diabla","La sola","Kids","De Pollo","Picante", "La rompe loza", "La livianita"]
    
    
    func obtenHamburguesa( )->String{
        let hamburguesaNum =  Int(arc4random()) % hamgurguesas.count
        return hamgurguesas[hamburguesaNum]
    }
    
}


class ColeccionDePreciosHamburguesa{
    
    let precios : [String] = ["$ 12","$ 5", "$ 10", "$ 4", "$3", "$8"]
    
    
    func obtenPrecio( )->String{
        let precioNum =  Int(arc4random()) % precios.count
        return precios[precioNum]
    }
    
}

struct Colores {
    
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),

    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),

    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),

    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),

    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),

    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),

    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),

    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]

    
    func regresaColorAleatorio () -> UIColor {
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}
